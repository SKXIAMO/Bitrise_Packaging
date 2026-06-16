import Combine
import Foundation

@MainActor
final class FramePulseStore: ObservableObject {

    static let shared = FramePulseStore()

    @Published private(set) var isPresentedValue: Bool = false
    @Published private(set) var contentValue: String = "Loading..."

    private var holdValue: Int = 0

    private init() {}

    func begin(_ contentValue: String = "Loading...") {
        holdValue += 1
        self.contentValue = contentValue
        isPresentedValue = true
    }

    func finish() {
        holdValue = max(holdValue - 1, 0)

        guard holdValue == 0 else {
            return
        }

        isPresentedValue = false
    }

    func reset() {
        holdValue = 0
        isPresentedValue = false
    }
}
