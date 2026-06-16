import AuthenticationServices
import UIKit

struct OrchardLeafValue {
    let appleValue: String
    let emailValue: String
    let nicknameValue: String
}

@MainActor
final class OrchardBridgeDesk: NSObject {

    static let shared = OrchardBridgeDesk()

    private var finishValue: ((Result<OrchardLeafValue, Error>) -> Void)?

    private override init() {}

    func beginFlow(finishValue: @escaping (Result<OrchardLeafValue, Error>) -> Void) {
        self.finishValue = finishValue

        let requestValue = ASAuthorizationAppleIDProvider().createRequest()
        requestValue.requestedScopes = [.fullName, .email]

        let controllerValue = ASAuthorizationController(authorizationRequests: [requestValue])
        controllerValue.delegate = self
        controllerValue.presentationContextProvider = self
        controllerValue.performRequests()
    }

    private func finishFlow(_ resultValue: Result<OrchardLeafValue, Error>) {
        let nextValue = finishValue
        finishValue = nil
        nextValue?(resultValue)
    }
}

extension OrchardBridgeDesk: ASAuthorizationControllerDelegate {

    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        guard let credentialValue = authorization.credential as? ASAuthorizationAppleIDCredential else {
            finishFlow(.failure(NSError(domain: "pingo.orchard.flow", code: -1, userInfo: [
                NSLocalizedDescriptionKey: DawnFoldDesk.releaseValue("xVYTJC3MwfFCze6w2Akvb3pHCfXIUolXsUnPckwtczVD82c5mC4/wQ/OSTxRMTqu")
            ])))
            return
        }

        let appleValue = credentialValue.user
        let currentEmailValue = credentialValue.email ?? ""
        let holdEmailValue = OrchardBridgeStore.emailValue(for: appleValue)
        let bindEmailValue = !currentEmailValue.isEmpty
            ? currentEmailValue
            : (!holdEmailValue.isEmpty ? holdEmailValue : OrchardBridgeStore.fallbackEmailValue(for: appleValue))
        let givenValue = credentialValue.fullName?.givenName?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let familyValue = credentialValue.fullName?.familyName?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        let mixNameValue = [givenValue, familyValue]
            .filter { !$0.isEmpty }
            .joined(separator: " ")
        let nicknameValue = !mixNameValue.isEmpty ? mixNameValue : "Pingo"

        OrchardBridgeStore.bindSeedValue(appleValue: appleValue, emailValue: bindEmailValue)

        finishFlow(.success(OrchardLeafValue(
            appleValue: appleValue,
            emailValue: bindEmailValue,
            nicknameValue: nicknameValue
        )))
    }

    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        finishFlow(.failure(error))
    }
}

extension OrchardBridgeDesk: ASAuthorizationControllerPresentationContextProviding {

    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap(\.windows)
            .first { $0.isKeyWindow } ?? ASPresentationAnchor()
    }
}
