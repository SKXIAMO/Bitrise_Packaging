import SwiftUI

struct VisualWorkshop: View {

    let postIdValue: Int

    @State private var p4Qm7vR1dL: uMc4oTd6m09UolY?
    @State private var n8Lm3vQ4rD: [odZfoqIN7YlWet] = []
    @State private var v7Qm2rL8dS: String = ""
    @State private var h3Qm7vR2dL: [String: [Int]] = [:]
    @State private var lCXNP7zaWTQMCAe: Bool = false
    @State private var m2Qv8rL1dS: Bool = false
    @State private var n3Lm7vQ2rD: Int?
    @StateObject private var v4Lm1vQ8rD = MistLiftDesk()

    var body: some View {
        let itemValue = p4Qm7vR1dL
        let userValue = itemValue.flatMap { MomentArchiveStore.matchEntry(idValue: $0.fhOBFnLiOCJS) }
        let emoIndexValue = itemValue?.bkSbTQ7S4XR2RmIECr0 ?? 0
        let emoValue = seTrMWne.indices.contains(emoIndexValue) ? seTrMWne[emoIndexValue] : seTrMWne[0]

        ZStack(alignment: .bottom) {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 22) {
                HStack(spacing: 0) {
                    HStack(spacing: 20) {
                        MoodCanvas(imageName: "g0NbxX")
                            .frame(width: 30, height: 30)
                            .onTapGesture {
                                SnapshotLaneStore.shared.retreat()
                            }
                        HStack(spacing: 8) {
                            MoodCanvas(sourceValue: userValue?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi")
                                .frame(width: 42, height: 42)
                                .clipShape(Circle())
                            VStack(alignment: .leading, spacing: 2) {
                                InstantContentSync(contentValue: userValue?.fWo9s9qMVKRWTU3ec1HGXrlWe ?? "Pingo", styleValue: .titleLine)
                                    .lineLimit(1)
                                InstantContentSync(contentValue: itemValue.map { CanvasTrailStore.textDriftValue($0.uG4yDgqGX9YSuO27nUH7Nn) } ?? "just now", sizeValue: 12)
                            }
                        }
                    }
                    Spacer()
                    if userValue?.gjoUb8530s4Tn != MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn {
                        MoodCanvas(imageName: "ayC4KVUlSGkpiZ3aj1rbqdEQRi")
                            .frame(width: 30, height: 30)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                lCXNP7zaWTQMCAe = true
                            }
                    }
                }
                .padding(.top, 58)
                .padding(.horizontal, 20)
                ScrollView {
                    VStack(spacing: 0) {
                        MoodCanvas(sourceValue: itemValue?.aeQPf0wmzEtu4nHHFF ?? "tgQTWvR1yoIdmGoi")
                            .frame(height: 314)
                            .overlay(alignment: .topLeading) {
                                HStack(spacing: 0) {
                                    InstantContentSync(contentValue: itemValue?.f8xiu2PaL3 ?? "", styleValue: .titleLine, sizeValue: 12, toneValue: .black)
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
                                .padding(.top, 118)
                                .padding(.leading, 35)
                                .padding(.trailing, 66)
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .padding(.horizontal, 20)
                        VStack(alignment: .leading, spacing: 20) {
                            InstantContentSync(contentValue: "Quick Response", styleValue: .titleLine, sizeValue: 16)
                                .padding(.leading, 20)
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack(spacing: 30) {
                                        ForEach(seTrMWne.indices, id: \.self) { eYx3p7Iohkbs8jIjTWrRroLZ in
                                            let tT7XRuk31n3wWdlmV: gsMtTzZGtUzyWMA22I1zJtrbJE = seTrMWne[eYx3p7Iohkbs8jIjTWrRroLZ]
                                            MoodCanvas(imageName: tT7XRuk31n3wWdlmV.botC87r)
                                                .frame(width: 30, height: 30)
                                                .onTapGesture {
                                                    CanvasTrailStore.appendMoodValue(frameIdValue: postIdValue, emoIndexValue: eYx3p7Iohkbs8jIjTWrRroLZ)
                                                }
                                        }
                                    }
                                    .padding(.horizontal, 20)
                                }
                            }
                        }
                        .padding(.top, 14)
                        VStack(alignment: .leading, spacing: 12) {
                            InstantContentSync(contentValue: "Comment（\(n8Lm3vQ4rD.count)）", styleValue: .titleLine, sizeValue: 16)
                            Group {
                                if n8Lm3vQ4rD.isEmpty {
                                    AuraSpace()
                                        .frame(maxWidth: .infinity)
                                        .padding(.top, 30)
                                } else {
                                    VStack(spacing: 0) {
                                        ForEach(n8Lm3vQ4rD, id: \.y60xOUbObeeqanpvlFa1cYjREz0L) { noteValue in
                                            a3Qm8vR2dS(noteValue)
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.top, 24)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 90)
                    }
                }
            }
            RoundedRectangle(cornerRadius: 40)
                .fill(.white.opacity(0.1))
                .frame(height: 44)
                .overlay {
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(.white.opacity(0.05), lineWidth: 1)
                }
                .overlay {
                    HStack(spacing: 0) {
                        ZStack(alignment: .leading) {
                            if v7Qm2rL8dS.isEmpty {
                                InstantContentSync(contentValue: "Say something", toneValue: Color(red: 153/255, green: 153/255, blue: 153/255))
                            }
                            TextField("", text: $v7Qm2rL8dS)
                                .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 14))
                                .foregroundColor(.white)
                                .tint(.white)
                        }
                        MoodCanvas(imageName: "f3UPqEU2CRLOy0rLuCP")
                            .frame(width: 36, height: 36)
                            .onTapGesture {
                                let cleanValue = v7Qm2rL8dS.trimmingCharacters(in: .whitespacesAndNewlines)
                                guard !cleanValue.isEmpty else {
                                    return
                                }

                                CanvasTrailStore.appendLineValue(frameIdValue: postIdValue, textValue: cleanValue)
                                v7Qm2rL8dS = ""
                            }
                    }
                    .padding(.leading, 18)
                    .padding(.trailing, 4)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 26)
                .padding(.bottom, v4Lm1vQ8rD.edgeValue)
            if lCXNP7zaWTQMCAe {
                MyOrbit { ztBcXFcbRsRO4WiHUpaddkb7 in
                    lCXNP7zaWTQMCAe = false
                    if ztBcXFcbRsRO4WiHUpaddkb7 == 1 {
                        SnapshotLaneStore.shared.forward(.personalPlanet)
                    }
                    if ztBcXFcbRsRO4WiHUpaddkb7 == 2 {
                        p8Qm3vR1dL()
                    }
                }
            }
            if m2Qv8rL1dS {
                ZStack(alignment: .bottom) {
                    Color.black.opacity(0.5)
                        .onTapGesture {
                            m2Qv8rL1dS = false
                        }
                    sls6W6wKzQ8kda { z7gn5 in
                        m2Qv8rL1dS = false
                        if z7gn5 == 1 {
                            SnapshotLaneStore.shared.forward(.personalPlanet)
                        }
                        if z7gn5 == 2 {
                            x8Lm2vQ4rD()
                        }
                    }
                }
            }
        }
        .ignoresSafeArea(.container, edges: .all)
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .navigationBarBackButtonHidden(true)
        .onAppear {
            s4Lm2vQ7rD()
        }
        .onReceive(NotificationCenter.default.publisher(for: .frameHarborRipple)) { _ in
            s4Lm2vQ7rD()
        }
        .onReceive(NotificationCenter.default.publisher(for: .auroraArchiveRipple)) { _ in
            s4Lm2vQ7rD()
        }
    }

    @ViewBuilder
    private func a3Qm8vR2dS(_ noteValue: odZfoqIN7YlWet) -> some View {
        let userValue = MomentArchiveStore.matchEntry(idValue: noteValue.ul8CzdoFMRyYt)
        let emoValue = seTrMWne.indices.contains(noteValue.xtBUyDsfHJawXx) ? seTrMWne[noteValue.xtBUyDsfHJawXx] : seTrMWne[0]
        let likeValue = g2Lm8vQ1rD(noteIdValue: noteValue.y60xOUbObeeqanpvlFa1cYjREz0L)
        let countValue = noteValue.dfUh1CV + (likeValue ? 1 : 0)
        let currentIdValue = MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn

        VStack(spacing: 4) {
            HStack(spacing: 0) {
                HStack(alignment: .top, spacing: 8) {
                    MoodCanvas(sourceValue: userValue?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi")
                        .frame(width: 48, height: 48)
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 4) {
                        InstantContentSync(contentValue: userValue?.fWo9s9qMVKRWTU3ec1HGXrlWe ?? "Pingo", styleValue: .titleLine)
                            .lineLimit(1)
                        HStack(spacing: 10) {
                            Group {
                                if noteValue.wYfaGqjPW54YKPbu.isEmpty {
                                    MoodCanvas(imageName: emoValue.botC87r)
                                        .frame(width: 30, height: 30)
                                } else {
                                    InstantContentSync(contentValue: noteValue.wYfaGqjPW54YKPbu, sizeValue: 12)
                                }
                            }
                            InstantContentSync(contentValue: CanvasTrailStore.textDriftValue(noteValue.t71AM5GdzJ9Z4YHiuf70DMLRedPsTYYE), sizeValue: 10, toneValue: .white.opacity(0.6))
                        }
                    }
                    .padding(.top, 7)
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 10) {
                    if noteValue.ul8CzdoFMRyYt != currentIdValue {
                        MoodCanvas(imageName: "zkAS4g0aJOPjgcJ7VA")
                            .frame(width: 16, height: 16)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                n3Lm7vQ2rD = noteValue.ul8CzdoFMRyYt
                                m2Qv8rL1dS = true
                            }
                    }
                    VStack(spacing: 2) {
                        MoodCanvas(imageName: likeValue ? "hAWxBqA2bWfrBjcuTQj" : "frh9HHM9yQ4ikuKwKzunDQHnvf0E")
                            .frame(width: 18, height: 18)
                            .onTapGesture {
                                d3Qm7vR1dL(noteIdValue: noteValue.y60xOUbObeeqanpvlFa1cYjREz0L)
                            }
                        InstantContentSync(contentValue: "\(countValue)", sizeValue: 10, toneValue: .white.opacity(0.6))
                    }
                }
            }
            .padding(.vertical, 12)
            Rectangle()
                .fill(.white.opacity(0.2))
                .frame(height: 1)
        }
    }

    private func s4Lm2vQ7rD() {
        p4Qm7vR1dL = CanvasTrailStore.frameValue(frameIdValue: postIdValue)
        n8Lm3vQ4rD = CanvasTrailStore.rippleValue(frameIdValue: postIdValue)
        h3Qm7vR2dL = CanvasTrailStore.readGlowValue()
    }

    private func g2Lm8vQ1rD(noteIdValue: Int) -> Bool {
        guard let currentIdValue = MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn else {
            return false
        }

        return h3Qm7vR2dL["\(currentIdValue)"]?.contains(noteIdValue) ?? false
    }

    private func d3Qm7vR1dL(noteIdValue: Int) {
        guard let currentIdValue = MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn else {
            return
        }

        let keyValue = "\(currentIdValue)"
        var mapValue = h3Qm7vR2dL
        var listValue = mapValue[keyValue] ?? []

        if let indexValue = listValue.firstIndex(of: noteIdValue) {
            listValue.remove(at: indexValue)
        } else {
            listValue.append(noteIdValue)
        }

        mapValue[keyValue] = listValue
        h3Qm7vR2dL = mapValue
        CanvasTrailStore.saveGlowValue(mapValue)
    }

    private func p8Qm3vR1dL() {
        guard let partnerIdValue = p4Qm7vR1dL?.fhOBFnLiOCJS else {
            return
        }

        FramePulseStore.shared.begin("Loading...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            MomentArchiveStore.appendShadeValueForCurrent(partnerIdValue)
            FramePulseStore.shared.finish()
            SnapshotLaneStore.shared.retreat()
            MoodNoteStore.shared.present("Blocked successfully")
        }
    }

    private func x8Lm2vQ4rD() {
        guard let n3Lm7vQ2rD else {
            return
        }

        FramePulseStore.shared.begin("Loading...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            MomentArchiveStore.appendShadeValueForCurrent(n3Lm7vQ2rD)
            FramePulseStore.shared.finish()
            MoodNoteStore.shared.present("Blocked successfully")
        }
    }
}
