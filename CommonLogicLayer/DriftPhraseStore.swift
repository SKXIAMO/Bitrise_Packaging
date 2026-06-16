import Foundation

extension Notification.Name {
    static let driftPhraseRipple = Notification.Name("pingo.local.drift.phrase.ripple")
}

private struct DriftPhrasePocket: Codable {
    var inputValue: String
    var listValue: [String]
    var pickValue: String
}

enum DriftPhraseStore {

    private static var pocketValue = DriftPhrasePocket(
        inputValue: "",
        listValue: [],
        pickValue: ""
    )

    static func readValue() -> (inputValue: String, listValue: [String], pickValue: String) {
        (pocketValue.inputValue, pocketValue.listValue, pocketValue.pickValue)
    }

    static func saveInputValue(_ inputValue: String) {
        var nextValue = pocketValueForWrite()
        nextValue.inputValue = inputValue
        savePocketValue(nextValue)
    }

    static func saveListValue(inputValue: String, listValue: [String]) {
        var nextValue = pocketValueForWrite()
        nextValue.inputValue = inputValue
        nextValue.listValue = listValue
        if !listValue.contains(nextValue.pickValue) {
            nextValue.pickValue = ""
        }
        savePocketValue(nextValue)
    }

    static func savePickValue(_ pickValue: String) {
        var nextValue = pocketValueForWrite()
        nextValue.pickValue = pickValue
        savePocketValue(nextValue)
    }

    private static func pocketValueForWrite() -> DriftPhrasePocket {
        pocketValue
    }

    private static func savePocketValue(_ pocketValue: DriftPhrasePocket) {
        self.pocketValue = pocketValue
        NotificationCenter.default.post(name: .driftPhraseRipple, object: nil)
    }
}
