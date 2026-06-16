import AVFoundation
import Combine
import PhotosUI
import SwiftUI

struct MoodGate: View {

    private enum InputMark {
        case textValue
    }

    let roomIdValue: Int

    @State private var poXof3mQMZqySxvREpt: Bool = false
    @State private var a0Bv5mN3xS: cLxodc3PrAw9Bsp0US?
    @State private var p4Lc8tV2qR: cLxodc3PrAw9Bsp0US?
    @State private var h6Qj1kX7nC: s7Gi1Vo5CCvtBpqHvgBy?
    @State private var u3Fr2wP9zD: [z4RdmZtUD8y3GLPigU5CLbX] = []
    @State private var d8Ks2mQ1vL: String = ""
    @State private var q1Vp7mD3xR: Bool = false
    @State private var zm9zLWCgHoshJsIiJekqRHgh9teyMN: Bool = false
    @State private var c3Lm8vQ2rD: Bool = false
    @State private var h8Lm2vQ4rD: [Int] = []
    @State private var r4Lm8vQ2dS: Int?
    @State private var w2Lm8vQ4rD: Bool = false
    @StateObject private var f5Vm1qR8dL = EchoRibbonDesk()
    @StateObject private var n2Jm7qR4dL = DriftChordDesk()
    @StateObject private var z3Lm8vQ2rD = MistLiftDesk()
    @FocusState private var t6Nj4sQ0mK: InputMark?

    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    HStack(spacing: 20) {
                        MoodCanvas(imageName: "g0NbxX")
                            .frame(width: 30, height: 30)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                t6Nj4sQ0mK = nil
                                SnapshotLaneStore.shared.retreat()
                            }
                        HStack(spacing: 8) {
                            MoodCanvas(sourceValue: p4Lc8tV2qR?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi")
                                .frame(width: 42, height: 42)
                                .clipShape(Circle())
                            VStack(alignment: .leading, spacing: 2) {
                                InstantContentSync(contentValue: p4Lc8tV2qR?.fWo9s9qMVKRWTU3ec1HGXrlWe ?? "Precious Bullock", styleValue: .titleLine)
                                    .lineLimit(1)
                                HStack(spacing: 3) {
                                    Circle()
                                        .fill(Color(red: 181/255, green: 181/255, blue: 181/255))
                                        .frame(width: 6)
                                    InstantContentSync(contentValue: "Online", sizeValue: 12)
                                }
                            }
                        }
                    }
                    Spacer()
                    MoodCanvas(imageName: "ayC4KVUlSGkpiZ3aj1rbqdEQRi")
                        .frame(width: 30, height: 30)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            zm9zLWCgHoshJsIiJekqRHgh9teyMN = true
                            t6Nj4sQ0mK = nil
                        }
                }
                .padding(.top, 55)
                .padding(.horizontal, 20)
                ScrollViewReader { v8Pc5rM1dQ in
                    ScrollView {
                        VStack(spacing: 12) {
                            ForEach(u3Fr2wP9zD, id: \.zg4iUlaaETunnsIrsR9vOBD) { s9Lm4vK2dF in
                                if s9Lm4vK2dF.xnawZMBPAAFW == a0Bv5mN3xS?.gjoUb8530s4Tn {
                                    HStack(spacing: 0) {
                                        Spacer()
                                        HStack(alignment: .top, spacing: 18) {
                                            VStack(alignment: .trailing, spacing: 9) {
                                                y8Nd1uQ5mW(s9Lm4vK2dF, isSelfValue: true)
                                                InstantContentSync(contentValue: JourneyLedgerStore.textTimeValue(s9Lm4vK2dF.p8Nc4mQ7sL2dV), sizeValue: 12, toneValue: Color(red: 128/255, green: 128/255, blue: 128/255))
                                            }
                                            MoodCanvas(sourceValue: a0Bv5mN3xS?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi")
                                                .frame(width: 58, height: 58)
                                                .clipShape(Circle())
                                        }
                                    }
                                    .padding(.leading, 78)
                                    .id(s9Lm4vK2dF.zg4iUlaaETunnsIrsR9vOBD)
                                } else {
                                    HStack(spacing: 0) {
                                        HStack(alignment: .top, spacing: 18) {
                                            MoodCanvas(sourceValue: p4Lc8tV2qR?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi")
                                                .frame(width: 58, height: 58)
                                                .clipShape(Circle())
                                            VStack(alignment: .leading, spacing: 9) {
                                                y8Nd1uQ5mW(s9Lm4vK2dF, isSelfValue: false)
                                                InstantContentSync(contentValue: JourneyLedgerStore.textTimeValue(s9Lm4vK2dF.p8Nc4mQ7sL2dV), sizeValue: 12, toneValue: Color(red: 128/255, green: 128/255, blue: 128/255))
                                            }
                                        }
                                        Spacer()
                                    }
                                    .padding(.trailing, 78)
                                    .id(s9Lm4vK2dF.zg4iUlaaETunnsIrsR9vOBD)
                                }
                            }
                            if let x9Lm2vQ4rD = j4Lm8vQ2rD() {
                                k8Lm2vQ4rD(x9Lm2vQ4rD)
                            }
                            Color.clear
                                .frame(height: 1)
                                .id("journey_bottom")
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    }
                    .padding(.top, 20)
                    .onAppear {
                        x3Lm8vQ2rD(v8Pc5rM1dQ)
                    }
                    .onChange(of: u3Fr2wP9zD.count) { _ in
                        x3Lm8vQ2rD(v8Pc5rM1dQ)
                    }
                }
                Group {
                    if poXof3mQMZqySxvREpt {
                        VStack(spacing: 36) {
                            HStack(spacing: 0) {
                                Spacer()
                                MoodCanvas(imageName: "zqTPAYP0RXTRJ9QB6GhSWleJdKxFM7N")
                                    .frame(width: 16, height: 16)
                                    .onTapGesture {
                                        poXof3mQMZqySxvREpt = false
                                    }
                            }
                            VStack(spacing: 16) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(Color.white.opacity(0.12))
                                        .frame(width: 160, height: 32)
                                    HStack(alignment: .center, spacing: 4) {
                                        ForEach(f5Vm1qR8dL.k3Qm7vR1dL.indices, id: \.self) { y7Pd4mQ2sR in
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Color.white.opacity(0.95))
                                                .frame(width: 6, height: f5Vm1qR8dL.k3Qm7vR1dL[y7Pd4mQ2sR] * 18)
                                        }
                                    }
                                    .frame(height: 18)
                                }
                                ZStack {
                                    MoodCanvas(imageName: "vstq687IiN")
                                        .frame(width: 46, height: 46)
                                    GateHoldBridge(
                                        onTapValue: {
                                            MoodNoteStore.shared.present("Please long press to record")
                                        },
                                        onBeganValue: {
                                            c8Lm2vQ4rD(true)
                                        },
                                        onEndedValue: {
                                            c8Lm2vQ4rD(false)
                                        }
                                    )
                                    .frame(width: 46, height: 46)
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 39)
                    } else {
                        VStack(alignment: .leading, spacing: 10) {
                            MoodCanvas(imageName: "p5GApmY5vNbse6")
                                .frame(width: 26, height: 26)
                                .padding(.leading, 11)
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    t6Nj4sQ0mK = nil
                                    q1Vp7mD3xR = true
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
                                        HStack(spacing: 8) {
                                            MoodCanvas(imageName: "tUvbL8tAU")
                                                .frame(width: 23, height: 23)
                                                .contentShape(Rectangle())
                                                .onTapGesture {
                                                    poXof3mQMZqySxvREpt = true
                                                    t6Nj4sQ0mK = nil
                                                }
                                            ZStack(alignment: .leading) {
                                                if d8Ks2mQ1vL.isEmpty {
                                                    Text("Say something")
                                                        .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                        .foregroundColor(Color(red: 153/255, green: 153/255, blue: 153/255))
                                                }
                                                TextField("", text: $d8Ks2mQ1vL)
                                                    .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                    .foregroundColor(.white)
                                                    .textInputAutocapitalization(.never)
                                                    .autocorrectionDisabled(true)
                                                    .submitLabel(.send)
                                                    .focused($t6Nj4sQ0mK, equals: .textValue)
                                                    .onSubmit {
                                                        v5Kd7mQ1sL()
                                                    }
                                            }
                                        }
                                        Spacer()
                                        MoodCanvas(imageName: "f3UPqEU2CRLOy0rLuCP")
                                            .frame(width: 36, height: 36)
                                            .contentShape(Rectangle())
                                            .onTapGesture {
                                                v5Kd7mQ1sL()
                                            }
                                    }
                                    .padding(.leading, 16)
                                    .padding(.trailing, 4)
                                }
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 26)
                    }
                }
                .padding(.bottom, z3Lm8vQ2rD.edgeValue)
            }
            if zm9zLWCgHoshJsIiJekqRHgh9teyMN {
                MyOrbit { ztBcXFcbRsRO4WiHUpaddkb7 in
                    zm9zLWCgHoshJsIiJekqRHgh9teyMN = false
                    if ztBcXFcbRsRO4WiHUpaddkb7 == 1 {
                        SnapshotLaneStore.shared.forward(.personalPlanet)
                    }
                    if ztBcXFcbRsRO4WiHUpaddkb7 == 2 {
                        p2Lm8vQ4rS()
                    }
                }
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            t6Nj4sQ0mK = nil
        }
        .ignoresSafeArea(.container, edges: .all)
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $q1Vp7mD3xR) {
            DriftAlbumLayer { imageValue in
                guard let imageValue else {
                    return
                }

                FramePulseStore.shared.begin("Loading...")
                DispatchQueue.global(qos: .userInitiated).async {
                    let sourceValue = b7Qm1vN4sD(imageValue)
                    DispatchQueue.main.async {
                        if let sourceValue {
                            JourneyLedgerStore.appendFrameValue(roomIdValue: roomIdValue, imageValue: sourceValue)
                            f1Kc7mS0qP()
                        }
                        FramePulseStore.shared.finish()
                    }
                }
            }
        }
        .onAppear {
            f1Kc7mS0qP()
        }
        .onReceive(NotificationCenter.default.publisher(for: .laneBridgeRipple)) { _ in
            f1Kc7mS0qP()
        }
        .onReceive(NotificationCenter.default.publisher(for: .auroraArchiveRipple)) { _ in
            f1Kc7mS0qP()
        }
        .onDisappear {
            f5Vm1qR8dL.t6Lm3qV1dS(sendValue: false)
            n2Jm7qR4dL.v6Qm3rD1sL()
        }
    }

    @ViewBuilder
    private func y8Nd1uQ5mW(_ s9Lm4vK2dF: z4RdmZtUD8y3GLPigU5CLbX, isSelfValue: Bool) -> some View {
        if let d3Mp8vR1qT = s9Lm4vK2dF.a6Qk1vR9mD3sT, let x9Lm2vQ4rD = CanvasTrailStore.frameValue(frameIdValue: d3Mp8vR1qT) {
            let t4Qn7mV2sL = seTrMWne.indices.contains(x9Lm2vQ4rD.bkSbTQ7S4XR2RmIECr0) ? seTrMWne[x9Lm2vQ4rD.bkSbTQ7S4XR2RmIECr0] : seTrMWne[0]
            let h3Qm7vR1dL = MomentArchiveStore.matchEntry(idValue: x9Lm2vQ4rD.fhOBFnLiOCJS)

            MoodCanvas(sourceValue: x9Lm2vQ4rD.aeQPf0wmzEtu4nHHFF)
                .frame(width: 335, height: 208)
                .overlay {
                    VStack(spacing: 0) {
                        Rectangle()
                            .fill(
                                LinearGradient(colors: [.black.opacity(0.28), .black.opacity(0)], startPoint: .top, endPoint: .bottom)
                            )
                            .frame(height: 60)
                            .overlay {
                                HStack(spacing: 0) {
                                    HStack(spacing: 8) {
                                        MoodCanvas(sourceValue: h3Qm7vR1dL?.skR5uKm8o7OZ ?? (isSelfValue ? (a0Bv5mN3xS?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi") : (p4Lc8tV2qR?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi")))
                                            .frame(width: 42, height: 42)
                                            .clipShape(Circle())
                                        VStack(alignment: .leading, spacing: 2) {
                                            InstantContentSync(contentValue: h3Qm7vR1dL?.fWo9s9qMVKRWTU3ec1HGXrlWe ?? (isSelfValue ? (a0Bv5mN3xS?.fWo9s9qMVKRWTU3ec1HGXrlWe ?? "Pingo") : (p4Lc8tV2qR?.fWo9s9qMVKRWTU3ec1HGXrlWe ?? "Pingo")), styleValue: .titleLine)
                                                .lineLimit(1)
                                            InstantContentSync(contentValue: t4Qn7mV2sL.d4WggBntkHlByB1zbrfl, sizeValue: 12)
                                        }
                                    }
                                    Spacer()
                                    InstantContentSync(contentValue: JourneyLedgerStore.textTimeValue(s9Lm4vK2dF.p8Nc4mQ7sL2dV), styleValue: .titleLine, sizeValue: 12)
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
                                    InstantContentSync(contentValue: x9Lm2vQ4rD.f8xiu2PaL3, styleValue: .titleLine, sizeValue: 14)
                                        .lineLimit(2)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                    MoodCanvas(imageName: "oStU2wZ0DPF")
                                        .frame(width: 36, height: 36)
                                }
                                .padding(.horizontal, 16)
                            }
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding(.top, 6)
        } else if !s9Lm4vK2dF.usYhdyYGGb9lD5ryz7jUlvdB.isEmpty {
            MoodCanvas(sourceValue: s9Lm4vK2dF.usYhdyYGGb9lD5ryz7jUlvdB)
                .frame(width: 131, height: 79)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.all, 10)
                .background {
                    c2Hk6rT8dV(isSelfValue: isSelfValue)
                }
        } else if !s9Lm4vK2dF.v31uwJv8ff.isEmpty || s9Lm4vK2dF.jwAgLej0B > 0 {
            HStack(spacing: 2) {
                if n2Jm7qR4dL.b3Qm8vR1dL == s9Lm4vK2dF.zg4iUlaaETunnsIrsR9vOBD {
                    HStack(alignment: .center, spacing: 3) {
                        ForEach(n2Jm7qR4dL.k7Lm2vQ4rD.indices, id: \.self) { y7Pd4mQ2sR in
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0.95))
                                .frame(width: 4, height: n2Jm7qR4dL.k7Lm2vQ4rD[y7Pd4mQ2sR] * 16)
                        }
                    }
                    .frame(width: 32, height: 16)
                } else {
                    MoodCanvas(imageName: "l4bxKdGXk9hX9U9pKN9oXQiZ")
                        .frame(width: 32, height: 16)
                }
                InstantContentSync(contentValue: "\(s9Lm4vK2dF.jwAgLej0B)s", sizeValue: 12)
            }
            .padding(.all, 10)
            .background {
                c2Hk6rT8dV(isSelfValue: isSelfValue)
            }
            .contentShape(Rectangle())
            .onTapGesture {
                q6Lm2vR4dS(s9Lm4vK2dF)
            }
        } else {
            InstantContentSync(contentValue: s9Lm4vK2dF.rnWk9AF43kH1OKj, sizeValue: 16)
                .padding(.all, 10)
                .background {
                    c2Hk6rT8dV(isSelfValue: isSelfValue)
                }
        }
    }

    @ViewBuilder
    private func c2Hk6rT8dV(isSelfValue: Bool) -> some View {
        Rectangle()
            .fill(isSelfValue ? Color(red: 187/255, green: 127/255, blue: 248/255) : Color(red: 121/255, green: 68/255, blue: 229/255))
            .clipShape(
                isSelfValue
                ? lrDbAkw60w2iEsO8VfWAQ2u1eNuOAkBN(iO9HmJ4QV1Biyf: 16, j6kIkNQXRaSsXh15IIQG50Ne: 1)
                : lrDbAkw60w2iEsO8VfWAQ2u1eNuOAkBN(iO9HmJ4QV1Biyf: 1)
            )
    }

    private func v5Kd7mQ1sL() {
        let c9Rm4vQ2dS = d8Ks2mQ1vL.trimmingCharacters(in: .whitespacesAndNewlines)

        guard !c9Rm4vQ2dS.isEmpty else {
            return
        }

        JourneyLedgerStore.appendLineValue(roomIdValue: roomIdValue, contentValue: c9Rm4vQ2dS)
        d8Ks2mQ1vL = ""
        f1Kc7mS0qP()
    }

    private func f1Kc7mS0qP() {
        a0Bv5mN3xS = MomentArchiveStore.readCurrent()
        p4Lc8tV2qR = JourneyLedgerStore.pairValue(roomIdValue: roomIdValue)
        h6Qj1kX7nC = JourneyLedgerStore.laneValue(for: roomIdValue)
        u3Fr2wP9zD = JourneyLedgerStore.traceValue(for: roomIdValue)
        h8Lm2vQ4rD = a0Bv5mN3xS?.hqzcmxfxps ?? []
        w2Lm8vQ4rD = s2Lm8vQ4rD()
    }

    private func j4Lm8vQ2rD() -> uMc4oTd6m09UolY? {
        guard roomIdValue == bF2y0YH5hhafLUDXntBtt2ztk2DL.first?.ywqjIS5gQrx3ng11kxwPf else {
            return nil
        }
        guard w2Lm8vQ4rD == false else {
            return nil
        }
        guard let x9Lm2vQ4rD = CanvasTrailStore.readFrameValue().first(where: { $0.fhOBFnLiOCJS == 4 }) else {
            return nil
        }

        guard MomentArchiveStore.readCurrent()?.vN3Zt2Tq12njX09eG.contains(x9Lm2vQ4rD.fhOBFnLiOCJS) != true else {
            return nil
        }

        return x9Lm2vQ4rD
    }

    @ViewBuilder
    private func k8Lm2vQ4rD(_ x9Lm2vQ4rD: uMc4oTd6m09UolY) -> some View {
        let t4Qn7mV2sL = seTrMWne.indices.contains(x9Lm2vQ4rD.bkSbTQ7S4XR2RmIECr0) ? seTrMWne[x9Lm2vQ4rD.bkSbTQ7S4XR2RmIECr0] : seTrMWne[0]
        let h3Qm7vR1dL = MomentArchiveStore.matchEntry(idValue: x9Lm2vQ4rD.fhOBFnLiOCJS)
        let c9Lm4vQ2dS = h8Lm2vQ4rD.contains(x9Lm2vQ4rD.qoxp4whzysl)
        let v7Lm2vQ4rD = x9Lm2vQ4rD.iHCS1SrfrHYpZKhrBSeh0eGCvwcD8B7.compactMap { idValue in
            MomentArchiveStore.matchEntry(idValue: idValue)
        }

        MoodCanvas(sourceValue: x9Lm2vQ4rD.aeQPf0wmzEtu4nHHFF)
            .frame(width: 335, height: 208)
            .overlay {
                ZStack(alignment: .topLeading) {
                    HStack(spacing: 0) {
                        InstantContentSync(contentValue: x9Lm2vQ4rD.f8xiu2PaL3, styleValue: .titleLine, sizeValue: 14, toneValue: .black)
                            .lineLimit(3)
                        MoodCanvas(imageName: t4Qn7mV2sL.botC87r)
                            .frame(width: 22, height: 22)
                    }
                    .padding(.all, 10)
                    .background(
                        Rectangle()
                            .fill(.white)
                            .clipShape(lrDbAkw60w2iEsO8VfWAQ2u1eNuOAkBN(vYNvfK0GBP86qzsgA7zZ1fkvGUGF0: 16, hux2raXx: 16, iO9HmJ4QV1Biyf: 16, j6kIkNQXRaSsXh15IIQG50Ne: 0))
                    )
                    .padding(.top, 96)
                    .padding(.leading, 12)
                    .padding(.trailing, 28)
                    VStack(spacing: 0) {
                        Rectangle()
                            .fill(
                                LinearGradient(colors: [.black.opacity(0.28), .black.opacity(0)], startPoint: .top, endPoint: .bottom)
                            )
                            .frame(height: 60)
                            .overlay {
                                HStack(spacing: 0) {
                                    HStack(spacing: 8) {
                                        MoodCanvas(sourceValue: h3Qm7vR1dL?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi")
                                            .frame(width: 42, height: 42)
                                            .clipShape(Circle())
                                        VStack(alignment: .leading, spacing: 2) {
                                            InstantContentSync(contentValue: h3Qm7vR1dL?.fWo9s9qMVKRWTU3ec1HGXrlWe ?? "Pingo", styleValue: .titleLine)
                                                .lineLimit(1)
                                            InstantContentSync(contentValue: CanvasTrailStore.textDriftValue(x9Lm2vQ4rD.uG4yDgqGX9YSuO27nUH7Nn), sizeValue: 12)
                                        }
                                    }
                                    Spacer()
                                    HStack(spacing: 12) {
                                        InstantContentSync(contentValue: CanvasTrailStore.textClockValue(x9Lm2vQ4rD.uG4yDgqGX9YSuO27nUH7Nn), styleValue: .titleLine, sizeValue: 12)
                                        if x9Lm2vQ4rD.fhOBFnLiOCJS != a0Bv5mN3xS?.gjoUb8530s4Tn {
                                            Button {
                                                r4Lm8vQ2dS = x9Lm2vQ4rD.fhOBFnLiOCJS
                                                zm9zLWCgHoshJsIiJekqRHgh9teyMN = true
                                                t6Nj4sQ0mK = nil
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
                                            ForEach(Array(v7Lm2vQ4rD.prefix(5).enumerated()), id: \.offset) { offsetValue, echoValue in
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
                                        InstantContentSync(contentValue: "\(x9Lm2vQ4rD.iHCS1SrfrHYpZKhrBSeh0eGCvwcD8B7.count)", styleValue: .titleLine, sizeValue: 12)
                                    }
                                    Spacer()
                                    Button {
                                        b4Lm8vQ2dS(x9Lm2vQ4rD.qoxp4whzysl)
                                    } label: {
                                        MoodCanvas(imageName: c9Lm4vQ2dS ? "dQgrZmpOmA8A5PzeJeDdF" : "oStU2wZ0DPF")
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
            .padding(.top, 6)
            .onTapGesture {
                v2Lm8vQ4rD()
                CanvasTrailStore.appendEchoValue(frameIdValue: x9Lm2vQ4rD.qoxp4whzysl)
                SnapshotLaneStore.shared.forward(.visualWorkshop(postIdValue: x9Lm2vQ4rD.qoxp4whzysl))
            }
    }

    private func x3Lm8vQ2rD(_ v8Pc5rM1dQ: ScrollViewProxy) {
        DispatchQueue.main.async {
            withAnimation(.easeOut(duration: 0.18)) {
                v8Pc5rM1dQ.scrollTo("journey_bottom", anchor: .bottom)
            }
        }
    }

    private func p2Lm8vQ4rS() {
        guard let partnerIdValue = r4Lm8vQ2dS ?? p4Lc8tV2qR?.gjoUb8530s4Tn else {
            return
        }

        FramePulseStore.shared.begin("Loading...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            MomentArchiveStore.appendShadeValueForCurrent(partnerIdValue)
            r4Lm8vQ2dS = nil
            f1Kc7mS0qP()
            FramePulseStore.shared.finish()
            SnapshotLaneStore.shared.retreat()
            MoodNoteStore.shared.present("Blocked successfully")
        }
    }

    private func b4Lm8vQ2dS(_ postIdValue: Int) {
        if let indexValue = h8Lm2vQ4rD.firstIndex(of: postIdValue) {
            h8Lm2vQ4rD.remove(at: indexValue)
        } else {
            h8Lm2vQ4rD.append(postIdValue)
        }
        MomentArchiveStore.switchMarkValue(postIdValue)
    }

    private func s2Lm8vQ4rD() -> Bool {
        guard let currentIdValue = a0Bv5mN3xS?.gjoUb8530s4Tn else {
            return false
        }

        let keyValue = "mood.gate.frame.card.hidden.\(currentIdValue).\(roomIdValue)"
        return UserDefaults.standard.bool(forKey: keyValue)
    }

    private func v2Lm8vQ4rD() {
        guard let currentIdValue = a0Bv5mN3xS?.gjoUb8530s4Tn else {
            return
        }

        w2Lm8vQ4rD = true
        let keyValue = "mood.gate.frame.card.hidden.\(currentIdValue).\(roomIdValue)"
        UserDefaults.standard.set(true, forKey: keyValue)
    }

    private func c8Lm2vQ4rD(_ x5Qm8vR2dL: Bool) {
        if x5Qm8vR2dL {
            guard !c3Lm8vQ2rD else {
                return
            }

            c3Lm8vQ2rD = true
            t6Nj4sQ0mK = nil
            f5Vm1qR8dL.h7Qm2vR4dL { [roomIdValue] audioPathValue, audioTimeValue in
                JourneyLedgerStore.appendToneValue(
                    roomIdValue: roomIdValue,
                    audioValue: audioPathValue,
                    audioTimeValue: audioTimeValue
                )
                f1Kc7mS0qP()
            } onDenied: {
                MoodNoteStore.shared.present("Microphone permission is unavailable")
            } onFailure: {
                MoodNoteStore.shared.present("Voice capture is currently unavailable")
            }
            return
        }

        f5Vm1qR8dL.g8Qm2vR1dL()
        c3Lm8vQ2rD = false
    }

    private func q6Lm2vR4dS(_ noteValue: z4RdmZtUD8y3GLPigU5CLbX) {
        guard !noteValue.v31uwJv8ff.isEmpty else {
            MoodNoteStore.shared.present("Voice file is unavailable")
            return
        }

        n2Jm7qR4dL.p4Qm8vR2dL(
            noteIdValue: noteValue.zg4iUlaaETunnsIrsR9vOBD,
            sourceValue: noteValue.v31uwJv8ff
        ) {
            MoodNoteStore.shared.present("Voice file is unavailable")
        } onFailure: {
            MoodNoteStore.shared.present("Voice playback is unavailable")
        }
    }

    private func b7Qm1vN4sD(_ imageValue: UIImage) -> String? {
        guard let dataValue = imageValue.jpegData(compressionQuality: 0.85) else {
            return nil
        }

        let rootValue = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        let fileValue = rootValue?.appendingPathComponent("pingo_journey_\(UUID().uuidString).jpg")

        guard let fileValue else {
            return nil
        }

        do {
            try dataValue.write(to: fileValue, options: .atomic)
            return fileValue.path
        } catch {
            return nil
        }
    }
}

@MainActor
private final class DriftChordDesk: NSObject, ObservableObject, AVAudioPlayerDelegate {

    @Published private(set) var b3Qm8vR1dL: Int?
    @Published private(set) var k7Lm2vQ4rD: [CGFloat] = [0.26, 0.62, 0.38, 0.74]

    private var q8Lm4vR1dS: AVAudioPlayer?
    private var t1Qm6vR3dL: Timer?

    func p4Qm8vR2dL(
        noteIdValue: Int,
        sourceValue: String,
        onMissing: @escaping () -> Void,
        onFailure: @escaping () -> Void
    ) {
        if b3Qm8vR1dL == noteIdValue {
            v6Qm3rD1sL()
            return
        }

        let fileValue: URL
        if sourceValue.hasPrefix("file://"), let urlValue = URL(string: sourceValue) {
            fileValue = urlValue
        } else {
            fileValue = URL(fileURLWithPath: sourceValue)
        }

        guard FileManager.default.fileExists(atPath: fileValue.path) else {
            onMissing()
            return
        }

        v6Qm3rD1sL()

        let sessionValue = AVAudioSession.sharedInstance()

        do {
            try sessionValue.setCategory(.playback, mode: .default)
            try sessionValue.setActive(true)

            let playerValue = try AVAudioPlayer(contentsOf: fileValue)
            playerValue.delegate = self
            playerValue.prepareToPlay()

            guard playerValue.play() else {
                onFailure()
                return
            }

            q8Lm4vR1dS = playerValue
            b3Qm8vR1dL = noteIdValue
            l5Qm2vR7dL()
        } catch {
            v6Qm3rD1sL()
            onFailure()
        }
    }

    func v6Qm3rD1sL() {
        q8Lm4vR1dS?.stop()
        q8Lm4vR1dS = nil
        t1Qm6vR3dL?.invalidate()
        t1Qm6vR3dL = nil
        b3Qm8vR1dL = nil
        k7Lm2vQ4rD = [0.26, 0.62, 0.38, 0.74]
        try? AVAudioSession.sharedInstance().setActive(false, options: .notifyOthersOnDeactivation)
    }

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        v6Qm3rD1sL()
    }

    private func l5Qm2vR7dL() {
        t1Qm6vR3dL?.invalidate()
        t1Qm6vR3dL = Timer.scheduledTimer(withTimeInterval: 0.12, repeats: true) { [weak self] _ in
            guard let self else {
                return
            }

            guard self.q8Lm4vR1dS?.isPlaying == true else {
                self.v6Qm3rD1sL()
                return
            }

            self.k7Lm2vQ4rD = (0..<4).map { indexValue in
                let phaseValue = CGFloat(self.q8Lm4vR1dS?.currentTime ?? 0) * 8 + CGFloat(indexValue)
                return max(0.24, min(1, abs(sin(phaseValue))))
            }
        }
    }
}

private struct GateHoldBridge: UIViewRepresentable {

    let onTapValue: () -> Void
    let onBeganValue: () -> Void
    let onEndedValue: () -> Void

    func makeCoordinator() -> EchoLane {
        EchoLane(onTapValue: onTapValue, onBeganValue: onBeganValue, onEndedValue: onEndedValue)
    }

    func makeUIView(context: Context) -> UIView {
        let viewValue = UIView(frame: .zero)
        viewValue.backgroundColor = .clear

        let tapValue = UITapGestureRecognizer(target: context.coordinator, action: #selector(EchoLane.tapValue))
        let holdValue = UILongPressGestureRecognizer(target: context.coordinator, action: #selector(EchoLane.holdValue(_:)))
        holdValue.minimumPressDuration = 0.25
        holdValue.allowableMovement = 80

        tapValue.require(toFail: holdValue)
        viewValue.addGestureRecognizer(tapValue)
        viewValue.addGestureRecognizer(holdValue)
        return viewValue
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        context.coordinator.onTapValue = onTapValue
        context.coordinator.onBeganValue = onBeganValue
        context.coordinator.onEndedValue = onEndedValue
    }

    final class EchoLane: NSObject {

        var onTapValue: () -> Void
        var onBeganValue: () -> Void
        var onEndedValue: () -> Void
        private var activeValue: Bool = false

        init(
            onTapValue: @escaping () -> Void,
            onBeganValue: @escaping () -> Void,
            onEndedValue: @escaping () -> Void
        ) {
            self.onTapValue = onTapValue
            self.onBeganValue = onBeganValue
            self.onEndedValue = onEndedValue
        }

        @objc func tapValue() {
            onTapValue()
        }

        @objc func holdValue(_ gestureValue: UILongPressGestureRecognizer) {
            switch gestureValue.state {
            case .began:
                guard !activeValue else {
                    return
                }
                activeValue = true
                onBeganValue()
            case .ended, .cancelled, .failed:
                guard activeValue else {
                    return
                }
                activeValue = false
                onEndedValue()
            default:
                break
            }
        }
    }
}

@MainActor
private final class EchoRibbonDesk: NSObject, ObservableObject, AVAudioRecorderDelegate {

    enum GateMark {
        case undetermined
        case denied
        case authorized
    }

    @Published private(set) var j8Qm5vR1dL: Bool = false
    @Published private(set) var k3Qm7vR1dL: [CGFloat] = Array(repeating: 0.22, count: 12)

    private var q4Lm8vR2dS: AVAudioRecorder?
    private var p1Qm6vR4dL: Timer?
    private var n8Vm2qR1dL: URL?
    private var w4Qm7vR3dL: ((String, Int) -> Void)?

    func p4Lm8vQ2rS() -> GateMark {
        switch AVAudioSession.sharedInstance().recordPermission {
        case .granted:
            return .authorized
        case .undetermined:
            return .undetermined
        default:
            return .denied
        }
    }

    func r7Qm1vD4sL(_ n1Qm8vR2dL: @escaping (Bool) -> Void) {
        AVAudioSession.sharedInstance().requestRecordPermission { z8Lm3qV1dS in
            DispatchQueue.main.async {
                n1Qm8vR2dL(z8Lm3qV1dS)
            }
        }
    }

    func b2Qm9vR1dS(_ w4Qm7vR3dL: @escaping (String, Int) -> Void) -> Bool {
        guard !j8Qm5vR1dL else {
            return true
        }

        let l6Qm3vR8dL = AVAudioSession.sharedInstance()

        do {
            try l6Qm3vR8dL.setCategory(.playAndRecord, mode: .default, options: [.defaultToSpeaker])
            try l6Qm3vR8dL.setActive(true)
        } catch {
            return false
        }

        let e7Qm1vR4dL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?
            .appendingPathComponent("pingo_voice_\(UUID().uuidString).m4a")

        guard let e7Qm1vR4dL else {
            return false
        }

        let v2Qm8vR1dL: [String: Any] = [
            AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
            AVSampleRateKey: 12_000,
            AVNumberOfChannelsKey: 1,
            AVEncoderAudioQualityKey: AVAudioQuality.medium.rawValue
        ]

        do {
            let r3Qm7vL1dS = try AVAudioRecorder(url: e7Qm1vR4dL, settings: v2Qm8vR1dL)
            r3Qm7vL1dS.isMeteringEnabled = true
            r3Qm7vL1dS.delegate = self
            r3Qm7vL1dS.prepareToRecord()

            guard r3Qm7vL1dS.record() else {
                return false
            }

            self.q4Lm8vR2dS = r3Qm7vL1dS
            self.n8Vm2qR1dL = e7Qm1vR4dL
            self.w4Qm7vR3dL = w4Qm7vR3dL
            self.j8Qm5vR1dL = true
            self.s5Qm4vR1dL()
            return true
        } catch {
            return false
        }
    }

    func t6Lm3qV1dS(sendValue: Bool) {
        guard let q4Lm8vR2dS else {
            return
        }

        let currentTimeValue = q4Lm8vR2dS.currentTime
        let n8Vm2qR1dL = n8Vm2qR1dL
        let w4Qm7vR3dL = w4Qm7vR3dL

        q4Lm8vR2dS.stop()
        p1Qm6vR4dL?.invalidate()
        p1Qm6vR4dL = nil
        self.q4Lm8vR2dS = nil
        self.n8Vm2qR1dL = nil
        self.w4Qm7vR3dL = nil
        self.j8Qm5vR1dL = false
        self.k3Qm7vR1dL = Array(repeating: 0.22, count: 12)

        try? AVAudioSession.sharedInstance().setActive(false)

        guard sendValue,
              let n8Vm2qR1dL,
              currentTimeValue > 0.1 else {
            return
        }

        w4Qm7vR3dL?(n8Vm2qR1dL.path, max(1, Int(ceil(currentTimeValue))))
    }

    func h7Qm2vR4dL(
        onSend: @escaping (String, Int) -> Void,
        onDenied: @escaping () -> Void,
        onFailure: @escaping () -> Void
    ) {
        guard !j8Qm5vR1dL else {
            return
        }

        switch p4Lm8vQ2rS() {
        case .undetermined:
            r7Qm1vD4sL { _ in }
        case .denied:
            onDenied()
        case .authorized:
            let startValue = b2Qm9vR1dS(onSend)
            if !startValue {
                onFailure()
            }
        }
    }

    func g8Qm2vR1dL() {
        if j8Qm5vR1dL {
            t6Lm3qV1dS(sendValue: true)
        }
    }

    private func s5Qm4vR1dL() {
        p1Qm6vR4dL?.invalidate()
        p1Qm6vR4dL = Timer.scheduledTimer(withTimeInterval: 0.08, repeats: true) { [weak self] _ in
            guard let self,
                  let q4Lm8vR2dS = self.q4Lm8vR2dS else {
                return
            }

            q4Lm8vR2dS.updateMeters()
            let powerValue = q4Lm8vR2dS.averagePower(forChannel: 0)
            let levelValue = max(0.12, CGFloat((powerValue + 50) / 50))
            self.k3Qm7vR1dL = self.k3Qm7vR1dL.enumerated().map { indexValue, _ in
                let waveValue = abs(sin(CGFloat(indexValue) + levelValue * 3.2))
                return max(0.18, min(1, waveValue * levelValue))
            }
        }
    }
}

struct lrDbAkw60w2iEsO8VfWAQ2u1eNuOAkBN: Shape {
    var vYNvfK0GBP86qzsgA7zZ1fkvGUGF0: CGFloat = 16
    var hux2raXx: CGFloat = 16
    var iO9HmJ4QV1Biyf: CGFloat = 16
    var j6kIkNQXRaSsXh15IIQG50Ne: CGFloat = 16

    func path(in wQ7Cdtl1CUFZvU: CGRect) -> Path {
        let nbfg7q6Tw8fc1qyd97J = UIBezierPath()

        let bjohj76AUKe5QhpjJj58s3014P4nFiA = wQ7Cdtl1CUFZvU.width
        let pBkW6NBVyIjoqErP2PHHDXhgVKDz5tx1 = wQ7Cdtl1CUFZvU.height

        nbfg7q6Tw8fc1qyd97J.move(to: CGPoint(x: vYNvfK0GBP86qzsgA7zZ1fkvGUGF0, y: 0))

        nbfg7q6Tw8fc1qyd97J.addLine(to: CGPoint(x: bjohj76AUKe5QhpjJj58s3014P4nFiA - hux2raXx, y: 0))
        nbfg7q6Tw8fc1qyd97J.addArc(
            withCenter: CGPoint(x: bjohj76AUKe5QhpjJj58s3014P4nFiA - hux2raXx, y: hux2raXx),
            radius: hux2raXx,
            startAngle: -.pi / 2,
            endAngle: 0,
            clockwise: true
        )

        nbfg7q6Tw8fc1qyd97J.addLine(to: CGPoint(x: bjohj76AUKe5QhpjJj58s3014P4nFiA, y: pBkW6NBVyIjoqErP2PHHDXhgVKDz5tx1 - j6kIkNQXRaSsXh15IIQG50Ne))
        nbfg7q6Tw8fc1qyd97J.addArc(
            withCenter: CGPoint(x: bjohj76AUKe5QhpjJj58s3014P4nFiA - j6kIkNQXRaSsXh15IIQG50Ne, y: pBkW6NBVyIjoqErP2PHHDXhgVKDz5tx1 - j6kIkNQXRaSsXh15IIQG50Ne),
            radius: j6kIkNQXRaSsXh15IIQG50Ne,
            startAngle: 0,
            endAngle: .pi / 2,
            clockwise: true
        )

        nbfg7q6Tw8fc1qyd97J.addLine(to: CGPoint(x: iO9HmJ4QV1Biyf, y: pBkW6NBVyIjoqErP2PHHDXhgVKDz5tx1))
        nbfg7q6Tw8fc1qyd97J.addArc(
            withCenter: CGPoint(x: iO9HmJ4QV1Biyf, y: pBkW6NBVyIjoqErP2PHHDXhgVKDz5tx1 - iO9HmJ4QV1Biyf),
            radius: iO9HmJ4QV1Biyf,
            startAngle: .pi / 2,
            endAngle: .pi,
            clockwise: true
        )

        nbfg7q6Tw8fc1qyd97J.addLine(to: CGPoint(x: 0, y: vYNvfK0GBP86qzsgA7zZ1fkvGUGF0))
        nbfg7q6Tw8fc1qyd97J.addArc(
            withCenter: CGPoint(x: vYNvfK0GBP86qzsgA7zZ1fkvGUGF0, y: vYNvfK0GBP86qzsgA7zZ1fkvGUGF0),
            radius: vYNvfK0GBP86qzsgA7zZ1fkvGUGF0,
            startAngle: .pi,
            endAngle: -.pi / 2,
            clockwise: true
        )

        nbfg7q6Tw8fc1qyd97J.close()

        return Path(nbfg7q6Tw8fc1qyd97J.cgPath)
    }
}
