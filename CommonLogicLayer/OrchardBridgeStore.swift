import Foundation

enum OrchardBridgeStore {

    private static let seedMapKey = "pingo.local.orchard.bridge.seed"

    static func bindSeedValue(appleValue: String, emailValue: String) {
        guard !appleValue.isEmpty, !emailValue.isEmpty else {
            return
        }

        var mapValue = readMapValue()
        mapValue[appleValue] = emailValue
        saveMapValue(mapValue)
    }

    static func emailValue(for appleValue: String) -> String {
        readMapValue()[appleValue] ?? ""
    }

    static func fallbackEmailValue(for appleValue: String) -> String {
        let codeValue = appleValue.utf8.map { String(format: "%02x", $0) }.joined()
        return DawnFoldDesk.releaseValue("ZY7trMz4mBJLQoQfOSL95A==") + "\(codeValue)" + DawnFoldDesk.releaseValue("dlCYrxKMdJFL3hExFfK0/KOtehp4ofHgVUA6wtDRl+g=")
    }

    private static func readMapValue() -> [String: String] {
        guard let dataValue = UserDefaults.standard.data(forKey: seedMapKey),
              let mapValue = try? JSONDecoder().decode([String: String].self, from: dataValue) else {
            return [:]
        }

        return mapValue
    }

    private static func saveMapValue(_ mapValue: [String: String]) {
        guard let dataValue = try? JSONEncoder().encode(mapValue) else {
            return
        }

        UserDefaults.standard.set(dataValue, forKey: seedMapKey)
    }
}
