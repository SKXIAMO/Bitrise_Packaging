import Combine
import SwiftUI

@MainActor
final class MistLiftDesk: ObservableObject {

    @Published private(set) var edgeValue: CGFloat = 0

    private var holdValue: Set<AnyCancellable> = []

    init() {
        bindValue()
    }

    private func bindValue() {
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .sink { [weak self] noteValue in
                self?.updateValue(noteValue)
            }
            .store(in: &holdValue)

        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .sink { [weak self] _ in
                self?.applyValue(0)
            }
            .store(in: &holdValue)
    }

    private func updateValue(_ noteValue: Notification) {
        guard let frameValue = noteValue.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }

        let safeBottomValue = UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap(\.windows)
            .first { $0.isKeyWindow }?
            .safeAreaInsets.bottom ?? 0

        applyValue(max(0, frameValue.height - safeBottomValue))
    }

    private func applyValue(_ nextValue: CGFloat) {
        withAnimation(.easeOut(duration: 0.22)) {
            edgeValue = nextValue
        }
    }
}
