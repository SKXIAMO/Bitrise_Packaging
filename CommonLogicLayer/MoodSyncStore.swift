import Combine
import SwiftUI

@MainActor
final class MoodSyncStore: ObservableObject {

    static let shared = MoodSyncStore()

    @Published private(set) var isPresentedValue: Bool = false

    private var resultValue: ((Bool) -> Void)?

    private init() {}

    func present(resultValue: @escaping (Bool) -> Void = { _ in }) {
        self.resultValue = resultValue
        isPresentedValue = true
    }

    func finish(_ flagValue: Bool) {
        let nextResultValue = resultValue
        resultValue = nil
        isPresentedValue = false
        nextResultValue?(flagValue)
    }

    func hide() {
        resultValue = nil
        isPresentedValue = false
    }
}
