import SwiftUI

struct BreezeHub: View {
    
    private struct EchoLeaf: Identifiable {
        let id: String
        let markValue: String
        let userValue: cLxodc3PrAw9Bsp0US
    }
    
    @State private var rcsF47OjWqoJ2ZG0: Bool = false
    @State private var b3Qm8vR1dL: [EchoLeaf] = []
    @State private var n7Lm2vQ4rD: [cLxodc3PrAw9Bsp0US] = []
    @State private var y6Qm3vR1dS: String = ""
    @FocusState private var p4Lm8vQ2rS: Bool
    
    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 7) {
                HStack(spacing: 0) {
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
                    Spacer()
                    Circle()
                        .fill(Color(red: 187/255, green: 127/255, blue: 248/255))
                        .frame(width: 35)
                        .overlay {
                            ZStack {
                                RoundedRectangle(cornerRadius: 2)
                                    .fill(.white)
                                    .frame(width: 18, height: 3)
                                RoundedRectangle(cornerRadius: 2)
                                    .fill(.white)
                                    .frame(width: 3, height: 18)
                            }
                            .rotationEffect(Angle(degrees: rcsF47OjWqoJ2ZG0 ? 45 : 0))
                        }
                        .padding(.all, 3)
                        .onTapGesture {
                            guard !MomentArchiveStore.isCurrentDrift() else {
                                MoodSyncStore.shared.present { flagValue in
                                    guard flagValue else {
                                        return
                                    }

                                    MomentArchiveStore.clearCurrent()
                                    SessionBridgeStore.clearSession()
                                    SnapshotLaneStore.shared.resetLane()
                                }
                                return
                            }
                            p4Lm8vQ2rS = false
                            rcsF47OjWqoJ2ZG0.toggle()
                            if !rcsF47OjWqoJ2ZG0 {
                                z5Qm2vR4dL()
                            }
                        }
                }
                .padding(.top, 50)
                .padding(.horizontal, 20)
                Group {
                    if rcsF47OjWqoJ2ZG0 {
                        VStack(spacing: 14) {
                            RoundedRectangle(cornerRadius: 30.5)
                                .fill(.white)
                                .frame(height: 58)
                                .overlay {
                                    HStack(spacing: 0) {
                                        HStack(spacing: 8) {
                                            MoodCanvas(imageName: "nYV4DEK3iU")
                                                .frame(width: 24, height: 24)
                                            ZStack(alignment: .leading) {
                                                if y6Qm3vR1dS.isEmpty {
                                                    Text(DawnFoldDesk.releaseValue("W5wTtxJsr94GB9UXptkE1A=="))
                                                        .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                        .foregroundColor(Color(red: 153/255, green: 153/255, blue: 153/255))
                                                }
                                                TextField("", text: $y6Qm3vR1dS)
                                                    .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                    .foregroundColor(.black)
                                                    .textInputAutocapitalization(.never)
                                                    .autocorrectionDisabled(true)
                                                    .focused($p4Lm8vQ2rS)
                                                    .submitLabel(.search)
                                                    .onSubmit {
                                                        x8Lm4vQ1rD()
                                                    }
                                            }
                                        }
                                        Spacer()
                                        InstantContentSync(contentValue: DawnFoldDesk.releaseValue("vtya04aazHGW+C44wr7oAw=="), styleValue: .titleLine)
                                            .padding(.vertical, 12)
                                            .padding(.horizontal, 10)
                                            .background(
                                                RoundedRectangle(cornerRadius: 50)
                                                    .fill(
                                                        LinearGradient(colors: [Color(red: 121/255, green: 68/255, blue: 229/255), Color(red: 187/255, green: 127/255, blue: 248/255)], startPoint: .topLeading, endPoint: .bottomTrailing)
                                                    )
                                            )
                                            .contentShape(Rectangle())
                                            .onTapGesture {
                                                x8Lm4vQ1rD()
                                            }
                                    }
                                    .padding(.leading, 20)
                                    .padding(.trailing, 10)
                                }
                                .padding(.horizontal, 20)
                            if n7Lm2vQ4rD.isEmpty {
                                Spacer()
                                AuraSpace()
                                Spacer()
                            } else {
                                ScrollView {
                                    VStack(spacing: 0) {
                                        ForEach(n7Lm2vQ4rD, id: \.gjoUb8530s4Tn) { itemValue in
                                            VStack(spacing: 6) {
                                                HStack(spacing: 0) {
                                                    HStack(spacing: 8) {
                                                        MoodCanvas(sourceValue: itemValue.skR5uKm8o7OZ)
                                                            .frame(width: 48, height: 48)
                                                            .clipShape(Circle())
                                                        VStack(alignment: .leading, spacing: 0) {
                                                            InstantContentSync(contentValue: itemValue.fWo9s9qMVKRWTU3ec1HGXrlWe, styleValue: .titleLine)
                                                                .lineLimit(1)
                                                            InstantContentSync(contentValue: "ID:\(itemValue.nvPAT)", sizeValue: 12)
                                                        }
                                                    }
                                                    Spacer()
                                                    if q6Lm2vR4dS(itemValue) {
                                                        MoodCanvas(imageName: "hnY0kmOUC")
                                                            .frame(width: 20, height: 20)
                                                            .contentShape(Rectangle())
                                                            .onTapGesture {
                                                                n1Qm7vR3dL(itemValue)
                                                            }
                                                    } else {
                                                        Circle()
                                                            .fill(Color(red: 187/255, green: 127/255, blue: 248/255))
                                                            .frame(width: 17)
                                                            .overlay {
                                                                ZStack {
                                                                    RoundedRectangle(cornerRadius: 2)
                                                                        .fill(.white)
                                                                        .frame(width: 9, height: 1.5)
                                                                    RoundedRectangle(cornerRadius: 2)
                                                                        .fill(.white)
                                                                        .frame(width: 1.5, height: 9)
                                                                }
                                                            }
                                                            .contentShape(Rectangle())
                                                            .onTapGesture {
                                                                g2Qm8vR1dL(itemValue)
                                                            }
                                                    }
                                                }
                                                .padding(.vertical, 10)
                                                Rectangle()
                                                    .fill(.white.opacity(0.16))
                                                    .frame(height: 1)
                                            }
                                        }
                                    }
                                    .padding(.horizontal, 20)
                                    .padding(.bottom, 90)
                                }
                            }
                        }
                        .padding(.top, 17)
                    } else {
                        if b3Qm8vR1dL.isEmpty {
                            Spacer()
                            AuraSpace()
                            Spacer()
                        } else {
                            ScrollView {
                                VStack(spacing: 16) {
                                    ForEach(Dictionary(grouping: b3Qm8vR1dL, by: \.markValue).keys.sorted(), id: \.self) { markValue in
                                        VStack(alignment: .leading, spacing: 6) {
                                            InstantContentSync(contentValue: markValue, styleValue: .titleLine, sizeValue: 16)
                                            VStack(spacing: 0) {
                                                ForEach(b3Qm8vR1dL.filter { $0.markValue == markValue }) { itemValue in
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
                                                            MoodCanvas(imageName: "hnY0kmOUC")
                                                                .frame(width: 20, height: 20)
                                                                .contentShape(Rectangle())
                                                                .onTapGesture {
                                                                    n1Qm7vR3dL(itemValue.userValue)
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
                    }
                }
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            p4Lm8vQ2rS = false
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .onAppear {
            z5Qm2vR4dL()
        }
        .onReceive(NotificationCenter.default.publisher(for: .auroraArchiveRipple)) { _ in
            z5Qm2vR4dL()
            if rcsF47OjWqoJ2ZG0, !y6Qm3vR1dS.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                x8Lm4vQ1rD()
            }
        }
    }
    
    private func z5Qm2vR4dL() {
        guard let currentValue = MomentArchiveStore.readCurrent() else {
            b3Qm8vR1dL = []
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
        
        b3Qm8vR1dL = listValue.map { itemValue in
            EchoLeaf(
                id: "\(q4Lm8vR2dS(itemValue))_\(itemValue.gjoUb8530s4Tn)",
                markValue: q4Lm8vR2dS(itemValue),
                userValue: itemValue
            )
        }
    }
    
    private func x8Lm4vQ1rD() {
        guard let currentValue = MomentArchiveStore.readCurrent() else {
            n7Lm2vQ4rD = []
            return
        }
        
        let keyValue = y6Qm3vR1dS.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        
        guard !keyValue.isEmpty else {
            n7Lm2vQ4rD = []
            return
        }
        
        p4Lm8vQ2rS = false
        FramePulseStore.shared.begin("Searching...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.55) {
            n7Lm2vQ4rD = MomentArchiveStore.readAll()
                .filter { itemValue in
                    itemValue.gjoUb8530s4Tn != currentValue.gjoUb8530s4Tn &&
                    itemValue.d0LJcIHdCX == 0 &&
                    !currentValue.vN3Zt2Tq12njX09eG.contains(itemValue.gjoUb8530s4Tn)
                }
                .filter { itemValue in
                    itemValue.fWo9s9qMVKRWTU3ec1HGXrlWe.lowercased().contains(keyValue) ||
                    itemValue.nvPAT.lowercased().contains(keyValue)
                }
                .sorted { leftValue, rightValue in
                    leftValue.fWo9s9qMVKRWTU3ec1HGXrlWe.localizedCaseInsensitiveCompare(rightValue.fWo9s9qMVKRWTU3ec1HGXrlWe) == .orderedAscending
                }
            y6Qm3vR1dS = ""
            FramePulseStore.shared.finish()
        }
    }
    
    private func q4Lm8vR2dS(_ userValue: cLxodc3PrAw9Bsp0US) -> String {
        guard let firstValue = userValue.fWo9s9qMVKRWTU3ec1HGXrlWe.trimmingCharacters(in: .whitespacesAndNewlines).first else {
            return "#"
        }
        
        let nextValue = String(firstValue).uppercased()
        return nextValue.range(of: "[A-Z]", options: .regularExpression) == nil ? "#" : nextValue
    }
    
    private func q6Lm2vR4dS(_ userValue: cLxodc3PrAw9Bsp0US) -> Bool {
        guard let currentValue = MomentArchiveStore.readCurrent() else {
            return false
        }
        
        return currentValue.uW67exDxDJqRnHcaUo5AhS6HBKC.contains(userValue.gjoUb8530s4Tn)
    }
    
    private func g2Qm8vR1dL(_ userValue: cLxodc3PrAw9Bsp0US) {
        FramePulseStore.shared.begin("Loading...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            MomentArchiveStore.appendOrbitValueForCurrent(userValue.gjoUb8530s4Tn)
            FramePulseStore.shared.finish()
            MoodNoteStore.shared.present("Added successfully")
            z5Qm2vR4dL()
            if !y6Qm3vR1dS.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                x8Lm4vQ1rD()
            }
        }
    }
    
    private func n1Qm7vR3dL(_ userValue: cLxodc3PrAw9Bsp0US) {
        guard let currentValue = MomentArchiveStore.readCurrent() else {
            return
        }
        
        FramePulseStore.shared.begin("Loading...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            let roomValue = JourneyLedgerStore.bloomLaneValue(
                currentIdValue: currentValue.gjoUb8530s4Tn,
                pairIdValue: userValue.gjoUb8530s4Tn
            )
            FramePulseStore.shared.finish()
            SnapshotLaneStore.shared.forward(.moodGate(roomIdValue: roomValue.ywqjIS5gQrx3ng11kxwPf))
        }
    }
}
