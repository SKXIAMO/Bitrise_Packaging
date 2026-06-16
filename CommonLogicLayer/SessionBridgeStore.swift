import Foundation

enum SessionBridgeStore {

    static let storageKey = "pingo.local.entry.bridge.ready"

    static func updateSession(_ isReady: Bool) {
        UserDefaults.standard.set(isReady, forKey: storageKey)
    }

    static func clearSession() {
        UserDefaults.standard.removeObject(forKey: storageKey)
    }
}
