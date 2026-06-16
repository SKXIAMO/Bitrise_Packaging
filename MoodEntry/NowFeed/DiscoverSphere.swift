import SwiftUI

struct DiscoverSphere: View {
    
    let rgdnYxOhRqN: (Int?) -> Void

    init(rgdnYxOhRqN: @escaping (Int?) -> Void = { _ in }) {
        self.rgdnYxOhRqN = rgdnYxOhRqN
    }
    
    @State private var hYc7rFtO1Qb2eegEL2FQVCmsSX: Int = 0
    @State private var t4Qn7mV2sL: [uMc4oTd6m09UolY] = []
    @State private var m3Qv8rL1dS: [Int] = []
    @State private var v4Lm2rQ8dS: [cLxodc3PrAw9Bsp0US] = []
    @State private var c8Lm2vQ1rD: [uMc4oTd6m09UolY] = []
    @State private var p6Qm4vR2dL: [cLxodc3PrAw9Bsp0US] = []
    @State private var b7Lm3vQ8rD: Int = 0
    
    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    HStack(spacing: 14) {
                        Group {
                            if hYc7rFtO1Qb2eegEL2FQVCmsSX == 0 {
                                ZStack(alignment: .bottomLeading) {
                                    RoundedRectangle(cornerRadius: 2)
                                        .fill(Color(red: 1, green: 163/255, blue: 92/255))
                                        .frame(width: 26, height: 3)
                                        .offset(x: 39, y: 2)
                                    HStack(alignment: .top, spacing: 0) {
                                        InstantContentSync(contentValue: "Real time", styleValue: .titleLine, sizeValue: 24)
                                        Circle()
                                            .fill(Color(red: 1, green: 243/255, blue: 112/255))
                                            .frame(width: 5)
                                    }
                                }
                            } else {
                                InstantContentSync(contentValue: "Real time", styleValue: .titleLine, sizeValue: 24, toneValue: .white.opacity(0.6))
                            }
                        }
                        .onTapGesture {
                            hYc7rFtO1Qb2eegEL2FQVCmsSX = 0
                        }
                        Group {
                            if hYc7rFtO1Qb2eegEL2FQVCmsSX == 0 {
                                InstantContentSync(contentValue: DawnFoldDesk.releaseValue("wY4f69RFF7v5i6rugiq9yA=="), styleValue: .titleLine, sizeValue: 24, toneValue: .white.opacity(0.6))
                            } else {
                                ZStack(alignment: .bottomLeading) {
                                    RoundedRectangle(cornerRadius: 2)
                                        .fill(Color(red: 1, green: 163/255, blue: 92/255))
                                        .frame(width: 26, height: 3)
                                        .offset(x: 28, y: 2)
                                    HStack(alignment: .top, spacing: 0) {
                                        InstantContentSync(contentValue: DawnFoldDesk.releaseValue("wY4f69RFF7v5i6rugiq9yA=="), styleValue: .titleLine, sizeValue: 24)
                                        Circle()
                                            .fill(Color(red: 1, green: 243/255, blue: 112/255))
                                            .frame(width: 5)
                                    }
                                }
                            }
                        }
                        .onTapGesture {
                            hYc7rFtO1Qb2eegEL2FQVCmsSX = 1
                            j2Qm8vR1dL()
                        }
                    }
                    Spacer()
                }
                .padding(.top, 58)
                .padding(.leading, 20)
                Group {
                    if hYc7rFtO1Qb2eegEL2FQVCmsSX == 0 {
                        VStack(spacing: 28) {
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 24) {
                                        ForEach(v4Lm2rQ8dS, id: \.gjoUb8530s4Tn) { userValue in
                                            ZStack(alignment: .bottomTrailing) {
                                                Circle()
                                                    .stroke(Color(red: 121/255, green: 68/255, blue: 229/255), lineWidth: 1)
                                                    .frame(width: 60)
                                                    .overlay {
                                                        MoodCanvas(sourceValue: userValue.skR5uKm8o7OZ)
                                                            .frame(width: 54, height: 54)
                                                            .clipShape(Circle())
                                                    }
                                                MoodCanvas(imageName: "xgV6MwJMXlsj8")
                                                    .frame(width: 12, height: 12)
                                                    .padding(.trailing, 5)
                                                    .contentShape(Rectangle())
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
                                                        y8Qm1vR4dL(userIdValue: userValue.gjoUb8530s4Tn)
                                                    }
                                            }
                                        }
                                    }
                                    .padding(.horizontal, 20)
                                }
                            }
                            ScrollView {
                                VStack(spacing: 20) {
                                    ForEach(t4Qn7mV2sL, id: \.qoxp4whzysl) { itemValue in
                                        q9Lm3vR1dS(itemValue)
                                    }
                                }
                                .padding(.horizontal, 20)
                                .padding(.bottom, 90)
                            }
                        }
                        .padding(.top, 24)
                    } else {
                        VStack(spacing: 21) {
                            VStack(alignment: .leading, spacing: 20) {
                                InstantContentSync(contentValue: "Users who may be interested", styleValue: .titleLine, sizeValue: 16)
                                VStack(spacing: 0) {
                                    ForEach(Array(p6Qm4vR2dL.enumerated()), id: \.element.gjoUb8530s4Tn) { offsetValue, userValue in
                                        let isFollowValue = MomentArchiveStore.readCurrent()?.uW67exDxDJqRnHcaUo5AhS6HBKC.contains(userValue.gjoUb8530s4Tn) == true
                                        VStack(spacing: 6) {
                                            HStack(spacing: 0) {
                                                HStack(spacing: 8) {
                                                    MoodCanvas(sourceValue: userValue.skR5uKm8o7OZ)
                                                        .frame(width: 48, height: 48)
                                                        .clipShape(Circle())
                                                    VStack(alignment: .leading, spacing: 0) {
                                                        InstantContentSync(contentValue: userValue.fWo9s9qMVKRWTU3ec1HGXrlWe, styleValue: .titleLine)
                                                            .lineLimit(1)
                                                        InstantContentSync(contentValue: "ID:\(userValue.nvPAT)", sizeValue: 12)
                                                    }
                                                }
                                                Spacer()
                                                InstantContentSync(contentValue: isFollowValue ? DawnFoldDesk.releaseValue("G/EuL2c/OkKKLww2FEJPYg==") : DawnFoldDesk.releaseValue("wY4f69RFF7v5i6rugiq9yA=="))
                                                    .padding(.vertical, 3)
                                                    .padding(.horizontal, 7)
                                                    .background(
                                                        RoundedRectangle(cornerRadius: 40)
                                                            .fill(Color(red: 187/255, green: 127/255, blue: 248/255))
                                                    )
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
                                                        if isFollowValue {
                                                            FramePulseStore.shared.begin("Loading...")
                                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                                                                MomentArchiveStore.removeOrbitValueForCurrent(userValue.gjoUb8530s4Tn)
                                                                FramePulseStore.shared.finish()
                                                                MoodNoteStore.shared.present(DawnFoldDesk.releaseValue("WmAFvYSfV3ANFKfJenHiUVlf6TKD+OaB4uSKCoEzNWE="))
                                                            }
                                                        } else {
                                                            y8Qm1vR4dL(userIdValue: userValue.gjoUb8530s4Tn)
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
                            }
                            .padding(.horizontal, 20)
                            ScrollView {
                                let yr2lMFQOOHfglj6xsPrSXq77cQmBIRW = [
                                    GridItem(.flexible(), spacing: 11),
                                    GridItem(.flexible())
                                ]
                                Group {
                                    if c8Lm2vQ1rD.isEmpty {
                                        AuraSpace()
                                            .frame(maxWidth: .infinity)
                                            .padding(.top, 40)
                                    } else {
                                        LazyVGrid(columns: yr2lMFQOOHfglj6xsPrSXq77cQmBIRW) {
                                            ForEach(c8Lm2vQ1rD, id: \.qoxp4whzysl) { itemValue in
                                                z4Lm7vQ2rD(itemValue)
                                            }
                                        }
                                    }
                                }
                                .padding(.horizontal, 20)
                                .padding(.bottom, 90)
                            }
                        }
                        .padding(.top, 14)
                    }
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .onAppear {
            h4Qm8vR2dL()
        }
        .onReceive(NotificationCenter.default.publisher(for: .frameHarborRipple)) { _ in
            h4Qm8vR2dL()
        }
        .onReceive(NotificationCenter.default.publisher(for: .auroraArchiveRipple)) { _ in
            h4Qm8vR2dL()
        }
    }

    @ViewBuilder
    private func q9Lm3vR1dS(_ itemValue: uMc4oTd6m09UolY) -> some View {
        let userValue = MomentArchiveStore.matchEntry(idValue: itemValue.fhOBFnLiOCJS)
        let emoValue = seTrMWne.indices.contains(itemValue.bkSbTQ7S4XR2RmIECr0) ? seTrMWne[itemValue.bkSbTQ7S4XR2RmIECr0] : seTrMWne[0]
        let userListValue = itemValue.iHCS1SrfrHYpZKhrBSeh0eGCvwcD8B7.compactMap { idValue in
            MomentArchiveStore.matchEntry(idValue: idValue)
        }
        let likeValue = m3Qv8rL1dS.contains(itemValue.qoxp4whzysl)

        MoodCanvas(sourceValue: itemValue.aeQPf0wmzEtu4nHHFF)
            .frame(height: 314)
            .overlay {
                ZStack(alignment: .topLeading) {
                    HStack(spacing: 0) {
                        InstantContentSync(contentValue: itemValue.f8xiu2PaL3, styleValue: .titleLine, sizeValue: 12, toneValue: .black)
                            .lineLimit(3)
                        MoodCanvas(imageName: emoValue.botC87r)
                            .frame(width: 18, height: 18)
                    }
                    .padding(.all, 10)
                    .background(
                        Rectangle()
                            .fill(.white)
                            .clipShape(lrDbAkw60w2iEsO8VfWAQ2u1eNuOAkBN(vYNvfK0GBP86qzsgA7zZ1fkvGUGF0: 10, hux2raXx: 10, iO9HmJ4QV1Biyf: 10, j6kIkNQXRaSsXh15IIQG50Ne: 0))
                    )
                    .padding(.top, 177)
                    .padding(.leading, 18)
                    .padding(.trailing, 50)
                    VStack(spacing: 0) {
                        Rectangle()
                            .fill(
                                LinearGradient(colors: [.black.opacity(0.28), .black.opacity(0)], startPoint: .top, endPoint: .bottom)
                            )
                            .frame(height: 60)
                            .overlay {
                                HStack(spacing: 0) {
                                    HStack(spacing: 8) {
                                        MoodCanvas(sourceValue: userValue?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi")
                                            .frame(width: 42, height: 42)
                                            .clipShape(Circle())
                                        VStack(alignment: .leading, spacing: 2) {
                                            InstantContentSync(contentValue: userValue?.fWo9s9qMVKRWTU3ec1HGXrlWe ?? "Pingo", styleValue: .titleLine)
                                                .lineLimit(1)
                                            InstantContentSync(contentValue: CanvasTrailStore.textDriftValue(itemValue.uG4yDgqGX9YSuO27nUH7Nn), sizeValue: 12)
                                        }
                                    }
                                    Spacer()
                                    HStack(spacing: 12) {
                                        InstantContentSync(contentValue: CanvasTrailStore.textClockValue(itemValue.uG4yDgqGX9YSuO27nUH7Nn), styleValue: .titleLine, sizeValue: 12)
                                        if userValue?.gjoUb8530s4Tn != MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn {
                                            Button {
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
                                                if let targetIdValue = userValue?.gjoUb8530s4Tn {
                                                    rgdnYxOhRqN(targetIdValue)
                                                }
                                            } label: {
                                                MoodCanvas(imageName: "ayC4KVUlSGkpiZ3aj1rbqdEQRi")
                                                    .frame(width: 30, height: 30)
                                            }
                                            .buttonStyle(.plain)
                                        }
                                    }
                                }
                                .padding(.leading, 12)
                                .padding(.trailing, 20)
                            }
                        Spacer()
                        Rectangle()
                            .fill(.black.opacity(0.3))
                            .frame(height: 60)
                            .overlay {
                                HStack(spacing: 0) {
                                    HStack(spacing: 9) {
                                        ZStack(alignment: .leading) {
                                            ForEach(Array(userListValue.prefix(5).enumerated()), id: \.offset) { offsetValue, echoValue in
                                                MoodCanvas(sourceValue: echoValue.skR5uKm8o7OZ)
                                                    .frame(width: 30, height: 30)
                                                    .clipShape(Circle())
                                                    .overlay {
                                                        Circle()
                                                            .stroke(.white, lineWidth: 1)
                                                    }
                                                    .padding(.leading, CGFloat(offsetValue) * 22)
                                            }
                                        }
                                        InstantContentSync(contentValue: "\(itemValue.iHCS1SrfrHYpZKhrBSeh0eGCvwcD8B7.count)", styleValue: .titleLine, sizeValue: 12)
                                    }
                                    Spacer()
                                    Button {
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
                                        if let indexValue = m3Qv8rL1dS.firstIndex(of: itemValue.qoxp4whzysl) {
                                            m3Qv8rL1dS.remove(at: indexValue)
                                        } else {
                                            m3Qv8rL1dS.append(itemValue.qoxp4whzysl)
                                        }
                                        MomentArchiveStore.switchMarkValue(itemValue.qoxp4whzysl)
                                    } label: {
                                        MoodCanvas(imageName: likeValue ? "dQgrZmpOmA8A5PzeJeDdF" : "oStU2wZ0DPF")
                                            .frame(width: 36, height: 36)
                                    }
                                    .buttonStyle(.plain)
                                }
                                .padding(.horizontal, 16)
                            }
                    }
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .contentShape(RoundedRectangle(cornerRadius: 30))
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
                CanvasTrailStore.appendEchoValue(frameIdValue: itemValue.qoxp4whzysl)
                SnapshotLaneStore.shared.forward(.visualWorkshop(postIdValue: itemValue.qoxp4whzysl))
            }
    }

    private func h4Qm8vR2dL() {
        t4Qn7mV2sL = CanvasTrailStore.streamValueForCurrent()
        m3Qv8rL1dS = MomentArchiveStore.readCurrent()?.hqzcmxfxps ?? []
        v4Lm2rQ8dS = MomentArchiveStore.glowValueForCurrent()
        c8Lm2vQ1rD = CanvasTrailStore.orbitStreamValueForCurrent()
        h7Qm3vR1dL()
    }

    private func y8Qm1vR4dL(userIdValue: Int) {
        if MomentArchiveStore.readCurrent()?.uW67exDxDJqRnHcaUo5AhS6HBKC.contains(userIdValue) == true {
            MoodNoteStore.shared.present("Already added")
            return
        }

        FramePulseStore.shared.begin("Loading...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            MomentArchiveStore.appendOrbitValueForCurrent(userIdValue)
            FramePulseStore.shared.finish()
            MoodNoteStore.shared.present("Added successfully")
        }
    }

    private func j2Qm8vR1dL() {
        let countValue = v4Lm2rQ8dS.count
        guard countValue > 0 else {
            p6Qm4vR2dL = []
            return
        }

        if countValue <= 2 {
            p6Qm4vR2dL = v4Lm2rQ8dS
            return
        }

        b7Lm3vQ8rD = (b7Lm3vQ8rD + 2) % countValue
        h7Qm3vR1dL()
    }

    private func h7Qm3vR1dL() {
        let countValue = v4Lm2rQ8dS.count
        guard countValue > 0 else {
            p6Qm4vR2dL = []
            return
        }

        if countValue <= 2 {
            p6Qm4vR2dL = v4Lm2rQ8dS
            return
        }

        let firstIndexValue = b7Lm3vQ8rD % countValue
        let secondIndexValue = (firstIndexValue + 1) % countValue
        p6Qm4vR2dL = [v4Lm2rQ8dS[firstIndexValue], v4Lm2rQ8dS[secondIndexValue]]
    }

    @ViewBuilder
    private func z4Lm7vQ2rD(_ itemValue: uMc4oTd6m09UolY) -> some View {
        let userValue = MomentArchiveStore.matchEntry(idValue: itemValue.fhOBFnLiOCJS)
        let emoValue = seTrMWne.indices.contains(itemValue.bkSbTQ7S4XR2RmIECr0) ? seTrMWne[itemValue.bkSbTQ7S4XR2RmIECr0] : seTrMWne[0]
        let userListValue = itemValue.iHCS1SrfrHYpZKhrBSeh0eGCvwcD8B7.compactMap { idValue in
            MomentArchiveStore.matchEntry(idValue: idValue)
        }
        let likeValue = m3Qv8rL1dS.contains(itemValue.qoxp4whzysl)

        MoodCanvas(sourceValue: itemValue.aeQPf0wmzEtu4nHHFF)
            .frame(height: 216)
            .overlay {
                ZStack(alignment: .topLeading) {
                    HStack(spacing: 0) {
                        InstantContentSync(contentValue: itemValue.f8xiu2PaL3, styleValue: .titleLine, sizeValue: 8, toneValue: .black)
                            .lineLimit(3)
                        MoodCanvas(imageName: emoValue.botC87r)
                            .frame(width: 12, height: 12)
                    }
                    .padding(.all, 10)
                    .background(
                        Rectangle()
                            .fill(.white)
                            .clipShape(lrDbAkw60w2iEsO8VfWAQ2u1eNuOAkBN(vYNvfK0GBP86qzsgA7zZ1fkvGUGF0: 10, hux2raXx: 10, iO9HmJ4QV1Biyf: 10, j6kIkNQXRaSsXh15IIQG50Ne: 0))
                    )
                    .padding(.top, 94)
                    .padding(.leading, 9)
                    .padding(.trailing, 25)
                    VStack(spacing: 0) {
                        Rectangle()
                            .fill(
                                LinearGradient(colors: [.black.opacity(0.28), .black.opacity(0)], startPoint: .top, endPoint: .bottom)
                            )
                            .frame(height: 44)
                            .overlay {
                                HStack(spacing: 0) {
                                    HStack(spacing: 8) {
                                        MoodCanvas(sourceValue: userValue?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi")
                                            .frame(width: 28, height: 28)
                                            .clipShape(Circle())
                                        VStack(alignment: .leading, spacing: 2) {
                                            InstantContentSync(contentValue: userValue?.fWo9s9qMVKRWTU3ec1HGXrlWe ?? "Pingo", styleValue: .titleLine, sizeValue: 10)
                                                .lineLimit(1)
                                            InstantContentSync(contentValue: CanvasTrailStore.textDriftValue(itemValue.uG4yDgqGX9YSuO27nUH7Nn), sizeValue: 8)
                                        }
                                    }
                                    Spacer()
                                    if userValue?.gjoUb8530s4Tn != MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn {
                                        Button {
                                            rgdnYxOhRqN(userValue?.gjoUb8530s4Tn)
                                        } label: {
                                            MoodCanvas(imageName: "ayC4KVUlSGkpiZ3aj1rbqdEQRi")
                                                .frame(width: 20, height: 20)
                                        }
                                        .buttonStyle(.plain)
                                    }
                                }
                                .padding(.horizontal, 12)
                            }
                        Spacer()
                        Rectangle()
                            .fill(.black.opacity(0.3))
                            .frame(height: 42)
                            .overlay {
                                HStack(spacing: 0) {
                                    HStack(spacing: 9) {
                                        ZStack(alignment: .leading) {
                                            ForEach(Array(userListValue.prefix(2).enumerated()), id: \.offset) { offsetValue, echoValue in
                                                MoodCanvas(sourceValue: echoValue.skR5uKm8o7OZ)
                                                    .frame(width: 20, height: 20)
                                                    .clipShape(Circle())
                                                    .overlay {
                                                        Circle()
                                                            .stroke(.white, lineWidth: 1)
                                                    }
                                                    .padding(.leading, CGFloat(offsetValue) * 12)
                                            }
                                        }
                                        InstantContentSync(contentValue: "\(itemValue.iHCS1SrfrHYpZKhrBSeh0eGCvwcD8B7.count)", styleValue: .titleLine, sizeValue: 9)
                                    }
                                    Spacer()
                                    Button {
                                        if let indexValue = m3Qv8rL1dS.firstIndex(of: itemValue.qoxp4whzysl) {
                                            m3Qv8rL1dS.remove(at: indexValue)
                                        } else {
                                            m3Qv8rL1dS.append(itemValue.qoxp4whzysl)
                                        }
                                        MomentArchiveStore.switchMarkValue(itemValue.qoxp4whzysl)
                                    } label: {
                                        MoodCanvas(imageName: likeValue ? "dQgrZmpOmA8A5PzeJeDdF" : "oStU2wZ0DPF")
                                            .frame(width: 20, height: 20)
                                    }
                                    .buttonStyle(.plain)
                                }
                                .padding(.horizontal, 10)
                            }
                    }
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .contentShape(RoundedRectangle(cornerRadius: 30))
            .onTapGesture {
                CanvasTrailStore.appendEchoValue(frameIdValue: itemValue.qoxp4whzysl)
                SnapshotLaneStore.shared.forward(.visualWorkshop(postIdValue: itemValue.qoxp4whzysl))
            }
    }
}

struct gsMtTzZGtUzyWMA22I1zJtrbJE {
    let kPbnca0QTvGS: String
    let botC87r: String
    let d4WggBntkHlByB1zbrfl: String
}

let seTrMWne: [gsMtTzZGtUzyWMA22I1zJtrbJE] = [
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "gz3cAzv", botC87r: "sFIwYyfcjvtWWF7d3xwOU61RLSA", d4WggBntkHlByB1zbrfl: "Happy"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "fvKWueDK", botC87r: "zTywXe", d4WggBntkHlByB1zbrfl: "Cry"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "tko0m", botC87r: "usKXlk5FfvQu", d4WggBntkHlByB1zbrfl: "Angry"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "vjWpCrYC6pgcvv4q4DGMn", botC87r: "mlZvj68An", d4WggBntkHlByB1zbrfl: "Yyds"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "mStCwcWLsZljCR", botC87r: "ayeD1SLez", d4WggBntkHlByB1zbrfl: "Shut up"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "xMnReNxFLKLrriGrVfFYhEHGPhNey", botC87r: "cAyhKdVOGvuUJBk5WXSuT3g16O", d4WggBntkHlByB1zbrfl: "Naughty"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "o2nE8wtDkvTZHON2LXNZfWCcmBvLjdP", botC87r: "i3Vec8MLst5wSEE2CHuD9EQwxzTGyMO7", d4WggBntkHlByB1zbrfl: "Pitiful"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "tgYOfk0fXZa57tMjv5Qw", botC87r: "eUXFUqneOgosl7miZXGUh997hBu9zXo7", d4WggBntkHlByB1zbrfl: "Applaud"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "zQn4Nz4Dti1xCAbsM4jzjxAVbp", botC87r: "g6xdWOHjXUaVWK", d4WggBntkHlByB1zbrfl: "Laughing"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "rXcp5mOMuw2wF3rq6dMB", botC87r: "bFDl3Qz9UxgSzzSzRcsu1M", d4WggBntkHlByB1zbrfl: "Pressure"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "jnZwgWWYSUKveQGVGeF4GV25J4XcEQ", botC87r: "s8ljjtloNbAK4096gQMNxdJLRqgNs", d4WggBntkHlByB1zbrfl: "Fever"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "nAgqIasV", botC87r: "dK7FxyU7ZSeW", d4WggBntkHlByB1zbrfl: "Love"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "bnc2ZznO4GHQ", botC87r: "sslfnDDyC143lvJfUsJMrjhvEq", d4WggBntkHlByB1zbrfl: "Cool"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "wH60vyb3N4i65xvjyJ6PRMIc0CQR", botC87r: "n36IviH", d4WggBntkHlByB1zbrfl: "Rolling eyes"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "mHuIDsxXbT08U0g", botC87r: "agkaA", d4WggBntkHlByB1zbrfl: "Awkward"),
    gsMtTzZGtUzyWMA22I1zJtrbJE(kPbnca0QTvGS: "peyfDSJaVhsIRWefF", botC87r: "k0EBJjzIzhPn4HaMU0y3ywpLkedd0ryq", d4WggBntkHlByB1zbrfl: "Curse"),
]
