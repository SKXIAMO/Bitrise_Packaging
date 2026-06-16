import SwiftUI

struct MemoryFlow: View {

    @State private var w5rQm0dV8pLs4N: [cLxodc3PrAw9Bsp0US] = []

    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 14) {
                HStack(spacing: 0) {
                    HStack(spacing: 20) {
                        MoodCanvas(imageName: "g0NbxX")
                            .frame(width: 30, height: 30)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                SnapshotLaneStore.shared.retreat()
                            }
                        ZStack(alignment: .bottomLeading) {
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color(red: 1, green: 163/255, blue: 92/255))
                                .frame(width: 26, height: 3)
                                .offset(x: 39, y: 2)
                            HStack(alignment: .top, spacing: 0) {
                                InstantContentSync(contentValue: DawnFoldDesk.releaseValue("9JTr8E1FODUAei4qUIGPPQ=="), styleValue: .titleLine, sizeValue: 24)
                                Circle()
                                    .fill(Color(red: 1, green: 243/255, blue: 112/255))
                                    .frame(width: 5)
                            }
                        }
                    }
                    Spacer()
                }
                .padding(.top, 62)
                .padding(.leading, 20)
                ScrollView {
                    Group {
                        if w5rQm0dV8pLs4N.isEmpty {
                            VStack {
                                Spacer(minLength: 110)
                                AuraSpace()
                                Spacer()
                            }
                        } else {
                            VStack(spacing: 0) {
                                ForEach(w5rQm0dV8pLs4N, id: \.gjoUb8530s4Tn) { itemValue in
                                    VStack(spacing: 6) {
                                        HStack(spacing: 0) {
                                            HStack(spacing: 8) {
                                                MoodCanvas(sourceValue: itemValue.skR5uKm8o7OZ.isEmpty ? "tgQTWvR1yoIdmGoi" : itemValue.skR5uKm8o7OZ)
                                                    .frame(width: 48, height: 48)
                                                    .clipShape(Circle())
                                                VStack(alignment: .leading, spacing: 0) {
                                                    InstantContentSync(contentValue: itemValue.fWo9s9qMVKRWTU3ec1HGXrlWe.isEmpty ? "Aebadiah" : itemValue.fWo9s9qMVKRWTU3ec1HGXrlWe, styleValue: .titleLine)
                                                        .lineLimit(1)
                                                    InstantContentSync(contentValue: "ID:\(itemValue.nvPAT)", sizeValue: 12)
                                                }
                                            }
                                            Spacer()
                                            MoodCanvas(imageName: "oyqs5arE6oETbVZq0pynngXFlrZvWU")
                                                .frame(width: 24, height: 24)
                                                .contentShape(Rectangle())
                                                .onTapGesture {
                                                    runUnblockFlow(itemValue.gjoUb8530s4Tn)
                                                }
                                        }
                                        .padding(.vertical, 10)
                                        Rectangle()
                                            .fill(.white.opacity(0.16))
                                            .frame(height: 1)
                                    }
                                }
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
            refreshBlockedUsers()
        }
    }

    private func runUnblockFlow(_ idValue: Int) {
        FramePulseStore.shared.begin("Loading...")

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            MomentArchiveStore.removeShadeValueForCurrent(idValue)
            refreshBlockedUsers()
            FramePulseStore.shared.finish()
        }
    }

    private func refreshBlockedUsers() {
        guard let currentValue = MomentArchiveStore.readCurrent() else {
            w5rQm0dV8pLs4N = []
            return
        }

        w5rQm0dV8pLs4N = currentValue.vN3Zt2Tq12njX09eG.compactMap { idValue in
            MomentArchiveStore.matchEntry(idValue: idValue)
        }
    }
}
