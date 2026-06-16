import Foundation

enum MomentDraftStore {

    private static let emailKey = "pingo.local.moment.draft.email"
    private static let passwordKey = "pingo.local.moment.draft.password"

    static func holdSignUp(emailValue: String, passwordValue: String) {
        UserDefaults.standard.set(emailValue, forKey: emailKey)
        UserDefaults.standard.set(passwordValue, forKey: passwordKey)
    }

    static func readEmail() -> String {
        UserDefaults.standard.string(forKey: emailKey) ?? ""
    }

    static func readPassword() -> String {
        UserDefaults.standard.string(forKey: passwordKey) ?? ""
    }

    static func clearSignUp() {
        UserDefaults.standard.removeObject(forKey: emailKey)
        UserDefaults.standard.removeObject(forKey: passwordKey)
    }
}
