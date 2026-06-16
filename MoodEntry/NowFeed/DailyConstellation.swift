import SwiftUI

struct DailyConstellation: View {

    @State private var n3Qm7vR1dL: String = ""
    @State private var x4Lm8vQ2rD: [String] = []
    @State private var p6Qm2vR8dL: String = ""
    @State private var m4Lm9vQ1rD: Bool = false

    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 42) {
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
                                .frame(width: 85, height: 3)
                                .offset(x: 132, y: 6)
                            HStack(alignment: .top, spacing: 0) {
                                InstantContentSync(contentValue: "AI Copywriting Assistant", styleValue: .titleLine, sizeValue: 24)
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
                VStack(spacing: 62) {
                    VStack(alignment: .trailing, spacing: 18) {
                        VStack(spacing: 30) {
                            VStack(alignment: .leading, spacing: 24) {
                                InstantContentSync(contentValue: "Enter your current mood or what you want to say.", styleValue: .titleLine, sizeValue: 12, toneValue: .white.opacity(0.5))
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(red: 10/255, green: 17/255, blue: 25/255))
                                    .frame(height: 44)
                                    .overlay {
                                        HStack(spacing: 0) {
                                            ZStack(alignment: .leading) {
                                                if n3Qm7vR1dL.isEmpty {
                                                    InstantContentSync(contentValue: "Please enter", styleValue: .titleLine, sizeValue: 12, toneValue: .white.opacity(0.45))
                                                }
                                                TextField("", text: $n3Qm7vR1dL)
                                                    .font(.custom(InstantContentSync.LetterStyle.titleLine.rawValue, size: 12))
                                                    .foregroundColor(.white)
                                                    .tint(.white)
                                            }
                                            Spacer()
                                        }
                                        .padding(.horizontal, 10)
                                    }
                            }
                            HStack(spacing: 9) {
                                InstantContentSync(contentValue: "Generate copy", styleValue: .titleLine, sizeValue: 18)
                                    .padding(.trailing, 1)
                                MoodCanvas(imageName: "rEKSDShniDhGKOb6YNRvxHyQWWS4vurv")
                                    .frame(width: 26, height: 24)
                                InstantContentSync(contentValue: "-200", styleValue: .titleLine, sizeValue: 12)
                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal, 30)
                            .background(
                                RoundedRectangle(cornerRadius: 60)
                                    .fill(.black)
                                    .overlay(content: {
                                        RoundedRectangle(cornerRadius: 60)
                                            .stroke(LinearGradient(colors: [Color(red: 121/255, green: 68/255, blue: 229/255), Color(red: 187/255, green: 127/255, blue: 248/255)], startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                    })
                            )
                            .contentShape(Rectangle())
                            .onTapGesture {
                                y2Qm4vR7dL()
                            }
                        }
                        .padding(.top, 20)
                        .padding(.horizontal, 16)
                        .padding(.bottom, 23)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0.1))
                        )
                        HStack(spacing: 4) {
                            MoodCanvas(imageName: "lk3G6Y")
                                .frame(width: 16, height: 16)
                            InstantContentSync(contentValue: "Change batch", sizeValue: 16, toneValue: Color(red: 187/255, green: 127/255, blue: 248/255))
                                .shadow(color: .black.opacity(0.24), radius: 4, y: 2)
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            y2Qm4vR7dL()
                        }
                    }
                    .padding(.horizontal, 22)
                    ScrollView {
                        VStack(spacing: 20) {
                            ForEach(Array(x4Lm8vQ2rD.enumerated()), id: \.offset) { indexValue, itemValue in
                                HStack(alignment: .top, spacing: 12) {
                                    InstantContentSync(contentValue: "\(indexValue + 1).", styleValue: .titleLine, sizeValue: 18)
                                    HStack(spacing: 0) {
                                        InstantContentSync(
                                            contentValue: itemValue,
                                            styleValue: .titleLine,
                                            sizeValue: 16,
                                            toneValue: p6Qm2vR8dL == itemValue ? Color(red: 187/255, green: 127/255, blue: 248/255) : .white
                                        )
                                        .multilineTextAlignment(.leading)
                                        Spacer()
                                    }
                                }
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    DriftPhraseStore.savePickValue(itemValue)
                                    SnapshotLaneStore.shared.retreat()
                                }
                            }
                        }
                        .padding(.horizontal, 24)
                        .padding(.bottom, 40)
                    }
                }
            }
            if m4Lm9vQ1rD {
                Color.black.opacity(0.5)
                    .ignoresSafeArea()
                SnapshotVault { actionValue in
                    m4Lm9vQ1rD = false
                    guard actionValue else {
                        return
                    }

                    SnapshotLaneStore.shared.forward(.selfFrame)
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .contentShape(Rectangle())
        .onTapGesture {}
        .onAppear {
            c4Lm8vQ2rD()
        }
        .onChange(of: n3Qm7vR1dL) { newValue in
            DriftPhraseStore.saveInputValue(newValue)
        }
        .onReceive(NotificationCenter.default.publisher(for: .driftPhraseRipple)) { _ in
            c4Lm8vQ2rD()
        }
    }

    private func c4Lm8vQ2rD() {
        let pocketValue = DriftPhraseStore.readValue()
        n3Qm7vR1dL = pocketValue.inputValue
        x4Lm8vQ2rD = pocketValue.listValue
        p6Qm2vR8dL = pocketValue.pickValue
    }

    private func y2Qm4vR7dL() {
        let cleanValue = n3Qm7vR1dL.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !cleanValue.isEmpty else {
            MoodNoteStore.shared.present("Please enter your content")
            return
        }

        guard let currentValue = MomentArchiveStore.readCurrent(), currentValue.vHuSwBXuD9Q >= 200 else {
            m4Lm9vQ1rD = true
            return
        }

        FramePulseStore.shared.begin("Generating...")
        DriftPhraseDesk.requestValue(inputValue: cleanValue) { resultValue in
            switch resultValue {
            case .success(let listValue):
                guard MomentArchiveStore.consumeCoinsForCurrent(200) else {
                    FramePulseStore.shared.finish()
                    m4Lm9vQ1rD = true
                    return
                }

                DriftPhraseStore.saveListValue(inputValue: cleanValue, listValue: Array(listValue.prefix(5)))
                FramePulseStore.shared.finish()
            case .failure(let faultValue):
                FramePulseStore.shared.finish()
                MoodNoteStore.shared.present(faultValue.textValue)
            }
        }
    }
}
