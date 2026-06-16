import SwiftUI

struct EntryGateView: View {

    @AppStorage(SessionBridgeStore.storageKey) private var hasStoredSession: Bool = false

    var body: some View {
        Group {
            if hasStoredSession {
                WandererProgram()
            } else {
                DailyPulse()
            }
        }
    }
}
