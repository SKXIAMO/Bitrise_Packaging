import SwiftUI

struct MomentHarborView: View {

    @StateObject private var laneStore: SnapshotLaneStore
    @StateObject private var noteStore: MoodNoteStore
    @StateObject private var pulseStore: FramePulseStore
    @StateObject private var syncStore: MoodSyncStore

    init() {
        _laneStore = StateObject(wrappedValue: SnapshotLaneStore.shared)
        _noteStore = StateObject(wrappedValue: MoodNoteStore.shared)
        _pulseStore = StateObject(wrappedValue: FramePulseStore.shared)
        _syncStore = StateObject(wrappedValue: MoodSyncStore.shared)
    }

    var body: some View {
        ZStack {
            SnapshotLaneLayer {
                EntryGateView()
            }
            .environmentObject(laneStore)
            .environmentObject(noteStore)
            .environmentObject(pulseStore)

            MoodNoteLayer()
                .environmentObject(noteStore)
                .zIndex(200)

            FramePulseLayer()
                .environmentObject(pulseStore)
                .zIndex(300)

            MoodSyncLayer()
                .environmentObject(syncStore)
                .zIndex(400)
        }
        .onAppear {
            MomentArchiveStore.initializeIfNeeded()
            JourneyLedgerStore.initializeIfNeeded()
            CanvasTrailStore.initializeIfNeeded()
        }
    }
}
