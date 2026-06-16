import SwiftUI

struct SnapshotLaneLayer<RootValue: View>: View {

    @EnvironmentObject private var laneStore: SnapshotLaneStore

    private let rootValue: RootValue

    init(@ViewBuilder rootValue: () -> RootValue) {
        self.rootValue = rootValue()
    }

    var body: some View {
        ZStack {
            rootValue

            ForEach(Array(laneStore.pushValue.enumerated()), id: \.element.id) { offsetValue, itemValue in
                itemValue.markValue
                    .buildView()
                    .zIndex(Double(offsetValue + 1))
                    .transition(.move(edge: .trailing).combined(with: .opacity))
            }

            if let coverValue = laneStore.coverValue {
                coverValue.markValue
                    .buildView()
                    .zIndex(500)
                    .transition(.opacity)
            }
        }
        .animation(.easeInOut(duration: 0.22), value: laneStore.pushValue.count)
        .animation(.easeInOut(duration: 0.22), value: laneStore.coverValue?.id)
    }
}
