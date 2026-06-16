import Combine
import Foundation

struct MoodNoteNode: Identifiable {
    let id = UUID()
    let contentValue: String
}

@MainActor
final class MoodNoteStore: ObservableObject {

    static let shared = MoodNoteStore()

    @Published private(set) var activeValue: MoodNoteNode?

    private var holdValue: DispatchWorkItem?

    private init() {}

    func present(_ contentValue: String, stayValue: TimeInterval = 2) {
        holdValue?.cancel()

        let noteValue = MoodNoteNode(contentValue: contentValue)
        activeValue = noteValue

        guard stayValue > 0 else {
            return
        }

        let workValue = DispatchWorkItem { [weak self] in
            Task { @MainActor in
                guard self?.activeValue?.id == noteValue.id else {
                    return
                }

                self?.activeValue = nil
            }
        }

        holdValue = workValue
        DispatchQueue.main.asyncAfter(deadline: .now() + stayValue, execute: workValue)
    }

    func clear() {
        holdValue?.cancel()
        activeValue = nil
    }
}
