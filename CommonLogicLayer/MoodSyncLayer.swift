import SwiftUI

struct MoodSyncLayer: View {

    @EnvironmentObject private var syncStore: MoodSyncStore

    var body: some View {
        ZStack {
            if syncStore.isPresentedValue {
                Color.black.opacity(0.5)
                    .ignoresSafeArea()

                MoodSync { flagValue in
                    syncStore.finish(flagValue)
                }
            }
        }
        .animation(.easeInOut(duration: 0.2), value: syncStore.isPresentedValue)
    }
}
