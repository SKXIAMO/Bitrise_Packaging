import SwiftUI

struct MomentJourney: View {

    @State private var c4MnQ7aY0dL8sE: [JourneyLaneLine] = []

    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 18) {
                HStack(spacing: 0) {
                    ZStack(alignment: .bottomLeading) {
                        RoundedRectangle(cornerRadius: 2)
                            .fill(Color(red: 1, green: 163/255, blue: 92/255))
                            .frame(width: 26, height: 3)
                            .offset(x: 51, y: 2)
                        HStack(alignment: .top, spacing: 0) {
                            InstantContentSync(contentValue: DawnFoldDesk.releaseValue("2wyXyqHxriUQTQ++8zhgfA=="), styleValue: .titleLine, sizeValue: 24)
                            Circle()
                                .fill(Color(red: 1, green: 243/255, blue: 112/255))
                                .frame(width: 5)
                        }
                    }
                    Spacer()
                }
                .padding(.top, 56)
                .padding(.leading, 20)
                ScrollView {
                    VStack(spacing: 0) {
                        VStack(spacing: 0) {
                            HStack(spacing: 0) {
                                HStack(spacing: 8) {
                                    MoodCanvas(imageName: "fqZUXrAzTXlfA49bQCB8HBGQMSVH2")
                                        .frame(width: 48, height: 48)
                                        .clipShape(Circle())
                                    VStack(alignment: .leading, spacing: 0) {
                                        InstantContentSync(contentValue: DawnFoldDesk.releaseValue("l9/IXsvfluDYNMujQbXrKQ=="), styleValue: .titleLine)
                                        HStack(spacing: 0) {
                                            InstantContentSync(contentValue: DawnFoldDesk.releaseValue("4ceKe9Ehrll6FQ+hkN7a7pnvjra6k50BPd3SEc2S5cc="), sizeValue: 12, toneValue: .white.opacity(0.8))
                                                .lineLimit(1)
                                            Spacer()
                                        }
                                    }
                                }
                                Spacer()
                                InstantContentSync(contentValue: JourneyLedgerStore.textTimeValue(JourneyLedgerStore.hushValue()), sizeValue: 12, toneValue: .white.opacity(0.8))
                            }
                            .padding(.vertical, 16)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                SnapshotLaneStore.shared.forward(.polarisSystem)
                            }
                            Rectangle()
                                .fill(.white.opacity(0.2))
                                .frame(height: 1)
                        }
                        ForEach(c4MnQ7aY0dL8sE) { h8PqR1vN0mX in
                            VStack(spacing: 0) {
                                HStack(spacing: 0) {
                                    HStack(spacing: 8) {
                                        MoodCanvas(sourceValue: h8PqR1vN0mX.pairValue.skR5uKm8o7OZ)
                                            .frame(width: 48, height: 48)
                                            .clipShape(Circle())
                                        VStack(alignment: .leading, spacing: 0) {
                                            InstantContentSync(contentValue: h8PqR1vN0mX.pairValue.fWo9s9qMVKRWTU3ec1HGXrlWe, styleValue: .titleLine)
                                                .lineLimit(1)
                                            HStack(spacing: 0) {
                                                InstantContentSync(contentValue: h8PqR1vN0mX.laneValue.caT2rRHxkQYU0EcZktjQ8qyT9WDFcb6, sizeValue: 12, toneValue: .white.opacity(0.8))
                                                    .lineLimit(1)
                                                Spacer()
                                            }
                                        }
                                    }
                                    Spacer()
                                    VStack(alignment: .trailing, spacing: 8) {
                                        if h8PqR1vN0mX.glowValue > 0 {
                                            Circle()
                                                .fill(Color(red: 1, green: 54/255, blue: 54/255))
                                                .frame(width: 15)
                                                .overlay {
                                                    InstantContentSync(contentValue: "\(min(h8PqR1vN0mX.glowValue, 9))", sizeValue: 12)
                                                }
                                        }
                                        InstantContentSync(contentValue: JourneyLedgerStore.textTimeValue(h8PqR1vN0mX.laneValue.cuUMuR62Ds9rm1dT8), sizeValue: 12, toneValue: .white.opacity(0.8))
                                    }
                                }
                                .padding(.vertical, 16)
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    if h8PqR1vN0mX.glowValue > 0 {
                                        JourneyLedgerStore.clearGlowValue(roomIdValue: h8PqR1vN0mX.laneValue.ywqjIS5gQrx3ng11kxwPf)
                                        refreshLineValue()
                                    }

                                    SnapshotLaneStore.shared.forward(.moodGate(roomIdValue: h8PqR1vN0mX.laneValue.ywqjIS5gQrx3ng11kxwPf))
                                }
                                Rectangle()
                                    .fill(.white.opacity(0.2))
                                    .frame(height: 1)
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .onAppear {
            refreshLineValue()
        }
        .onReceive(NotificationCenter.default.publisher(for: .auroraArchiveRipple)) { _ in
            refreshLineValue()
        }
        .onReceive(NotificationCenter.default.publisher(for: .laneBridgeRipple)) { _ in
            refreshLineValue()
        }
    }

    private func refreshLineValue() {
        c4MnQ7aY0dL8sE = JourneyLedgerStore.panelValueForCurrent()
    }
}
