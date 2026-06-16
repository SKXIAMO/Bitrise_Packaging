import SwiftUI

struct LightCapture: View {

    private struct EchoLeaf: Identifiable {
        let id: String
        let markValue: String
        let userValue: cLxodc3PrAw9Bsp0US
    }

    @State private var q7Lm2vR4dS: [EchoLeaf] = []
    @State private var m8Qm1vR3dL: Set<Int> = []

    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 7) {
                HStack(spacing: 0) {
                    HStack(spacing: 20) {
                        MoodCanvas(imageName: "g0NbxX")
                            .frame(width: 30, height: 30)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                y4Lm8vQ2rD()
                            }
                        ZStack(alignment: .bottomLeading) {
                            RoundedRectangle(cornerRadius: 2)
                                .fill(Color(red: 1, green: 163/255, blue: 92/255))
                                .frame(width: 26, height: 3)
                                .offset(x: 51, y: 2)
                            HStack(alignment: .top, spacing: 0) {
                                InstantContentSync(contentValue: DawnFoldDesk.releaseValue("zk9mIFSssJnD1H19juu8JA=="), styleValue: .titleLine, sizeValue: 24)
                                Circle()
                                    .fill(Color(red: 1, green: 243/255, blue: 112/255))
                                    .frame(width: 5)
                            }
                        }
                    }
                    Spacer()
                }
                .padding(.top, 56)
                .padding(.horizontal, 20)
                ZStack(alignment: .bottom) {
                    if q7Lm2vR4dS.isEmpty {
                        ZStack {
                            Color.black.opacity(0.01)
                            AuraSpace()
                        }
                    } else {
                        ScrollView {
                            VStack(spacing: 16) {
                                ForEach(Dictionary(grouping: q7Lm2vR4dS, by: \.markValue).keys.sorted(), id: \.self) { markValue in
                                    VStack(alignment: .leading, spacing: 6) {
                                        InstantContentSync(contentValue: markValue, styleValue: .titleLine, sizeValue: 16)
                                        VStack(spacing: 0) {
                                            ForEach(q7Lm2vR4dS.filter { $0.markValue == markValue }) { itemValue in
                                                VStack(spacing: 6) {
                                                    HStack(spacing: 0) {
                                                        HStack(spacing: 8) {
                                                            MoodCanvas(sourceValue: itemValue.userValue.skR5uKm8o7OZ)
                                                                .frame(width: 48, height: 48)
                                                                .clipShape(Circle())
                                                            VStack(alignment: .leading, spacing: 0) {
                                                                InstantContentSync(contentValue: itemValue.userValue.fWo9s9qMVKRWTU3ec1HGXrlWe, styleValue: .titleLine)
                                                                    .lineLimit(1)
                                                                InstantContentSync(contentValue: "ID:\(itemValue.userValue.nvPAT)", sizeValue: 12)
                                                            }
                                                        }
                                                        Spacer()
                                                        Circle()
                                                            .fill(.white)
                                                            .frame(width: 13)
                                                            .overlay {
                                                                Circle()
                                                                    .fill(m8Qm1vR3dL.contains(itemValue.userValue.gjoUb8530s4Tn) ? Color(red: 187/255, green: 127/255, blue: 248/255) : Color(red: 196/255, green: 196/255, blue: 196/255))
                                                                    .frame(width: 9)
                                                            }
                                                            .contentShape(Rectangle())
                                                            .onTapGesture {
                                                                z3Qm8vR1dL(itemValue.userValue.gjoUb8530s4Tn)
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
                            }
                            .padding(.horizontal, 20)
                            .padding(.bottom, 90)
                        }
                    }

                    RoundedRectangle(cornerRadius: 60)
                        .fill(.black)
                        .frame(width: 197, height: 40)
                        .overlay {
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(LinearGradient(colors: [Color(red: 121/255, green: 68/255, blue: 229/255), Color(red: 187/255, green: 127/255, blue: 248/255)], startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                .overlay {
                                    InstantContentSync(contentValue: "Deliver", styleValue: .titleLine, sizeValue: 18)
                                }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            x5Lm7vQ2rD()
                        }
                        .padding(.bottom, 120)
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .onAppear {
            c2Qm4vR8dL()
        }
        .onReceive(NotificationCenter.default.publisher(for: .auroraArchiveRipple)) { _ in
            c2Qm4vR8dL()
        }
    }

    private func c2Qm4vR8dL() {
        guard let currentValue = MomentArchiveStore.readCurrent() else {
            q7Lm2vR4dS = []
            m8Qm1vR3dL.removeAll()
            return
        }

        let userMapValue = Dictionary(uniqueKeysWithValues: MomentArchiveStore.readAll().map { ($0.gjoUb8530s4Tn, $0) })
        let listValue = currentValue.uW67exDxDJqRnHcaUo5AhS6HBKC.compactMap { idValue in
            userMapValue[idValue]
        }
            .filter { itemValue in
                itemValue.d0LJcIHdCX == 0 && !currentValue.vN3Zt2Tq12njX09eG.contains(itemValue.gjoUb8530s4Tn)
            }
            .sorted { leftValue, rightValue in
                leftValue.fWo9s9qMVKRWTU3ec1HGXrlWe.localizedCaseInsensitiveCompare(rightValue.fWo9s9qMVKRWTU3ec1HGXrlWe) == .orderedAscending
            }

        q7Lm2vR4dS = listValue.map { itemValue in
            EchoLeaf(
                id: "\(v9Lm1vQ3rD(itemValue))_\(itemValue.gjoUb8530s4Tn)",
                markValue: v9Lm1vQ3rD(itemValue),
                userValue: itemValue
            )
        }

        let idSetValue = Set(q7Lm2vR4dS.map(\.userValue.gjoUb8530s4Tn))
        m8Qm1vR3dL = m8Qm1vR3dL.intersection(idSetValue)
    }

    private func v9Lm1vQ3rD(_ userValue: cLxodc3PrAw9Bsp0US) -> String {
        guard let firstValue = userValue.fWo9s9qMVKRWTU3ec1HGXrlWe.trimmingCharacters(in: .whitespacesAndNewlines).first else {
            return "#"
        }

        let nextValue = String(firstValue).uppercased()
        return nextValue.range(of: "[A-Z]", options: .regularExpression) == nil ? "#" : nextValue
    }

    private func z3Qm8vR1dL(_ idValue: Int) {
        if m8Qm1vR3dL.contains(idValue) {
            m8Qm1vR3dL.remove(idValue)
        } else {
            m8Qm1vR3dL.insert(idValue)
        }
    }

    private func x5Lm7vQ2rD() {
        guard !m8Qm1vR3dL.isEmpty else {
            MoodNoteStore.shared.present(DawnFoldDesk.releaseValue("lh1hM1WBhXXPRwvpaCkueat4P+nmgwfBWUEwIFVFFHQ="))
            return
        }

        FramePulseStore.shared.begin("Loading...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            FramePulseStore.shared.finish()
            MoodNoteStore.shared.present("Delivered successfully")
            y4Lm8vQ2rD()
        }
    }

    private func y4Lm8vQ2rD() {
        SnapshotLaneStore.shared.retreat()
        SnapshotLaneStore.shared.retreat()
    }
}
