import Foundation

enum MomentClauseStore {

    static let storageKey = "pingo.local.moment.clause.ready"

    static func updateClause(_ isReady: Bool) {
        UserDefaults.standard.set(isReady, forKey: storageKey)
    }

    static func clearClause() {
        UserDefaults.standard.removeObject(forKey: storageKey)
    }
}
