import PhotosUI
import SwiftUI

struct PersonalPlanet: View {

    @State private var q7Lm3vR1dS: String = ""
    @State private var x4Qm8vR2dL: Bool = false
    @State private var b6Qm2vR4dL: UIImage?
    @FocusState private var n3Lm8vQ1rD: Bool

    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 24) {
                HStack(spacing: 0) {
                    MoodCanvas(imageName: "g0NbxX")
                        .frame(width: 30, height: 30)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            n3Lm8vQ1rD = false
                            SnapshotLaneStore.shared.retreat()
                        }
                    Spacer()
                }
                .padding(.top, 62)
                .padding(.leading, 20)
                ScrollView {
                    VStack(spacing: 70) {
                        VStack(alignment: .leading, spacing: 30) {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white)
                                .frame(height: 290)
                                .overlay(alignment: .topLeading) {
                                    ZStack(alignment: .topLeading) {
                                        TextEditor(text: $q7Lm3vR1dS)
                                            .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                            .foregroundColor(.black)
                                            .background(.clear)
                                            .focused($n3Lm8vQ1rD)
                                            .padding(.horizontal, 12)
                                            .padding(.vertical, 8)
                                        if q7Lm3vR1dS.isEmpty {
                                            Text("Please describe the issue you are reporting...")
                                                .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                .foregroundColor(Color(red: 128/255, green: 128/255, blue: 128/255))
                                                .padding(.all, 16)
                                                .allowsHitTesting(false)
                                        }
                                    }
                                }
                            VStack(alignment: .leading, spacing: 24) {
                                InstantContentSync(contentValue: "Picture (Optional)", styleValue: .titleLine, sizeValue: 24)
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(.white)
                                    .frame(width: 127, height: 137)
                                    .overlay {
                                        Group {
                                            if let b6Qm2vR4dL {
                                                Image(uiImage: b6Qm2vR4dL)
                                                    .resizable()
                                                    .scaledToFill()
                                            } else {
                                                MoodCanvas(imageName: "dqAET0CiS7XtO5ROCGC47")
                                                    .frame(width: 28, height: 28)
                                            }
                                        }
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                    }
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        n3Lm8vQ1rD = false
                                        x4Qm8vR2dL = true
                                    }
                            }
                        }
                        .padding(.horizontal, 20)
                        RoundedRectangle(cornerRadius: 60)
                            .fill(.black)
                            .frame(width: 197, height: 40)
                            .overlay {
                                RoundedRectangle(cornerRadius: 60)
                                    .stroke(LinearGradient(colors: [Color(red: 121/255, green: 68/255, blue: 229/255), Color(red: 187/255, green: 127/255, blue: 248/255)], startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                    .overlay {
                                        InstantContentSync(contentValue: "Submit", styleValue: .titleLine, sizeValue: 18)
                                    }
                            }
                            .contentShape(Rectangle())
                            .onTapGesture {
                                m8Qm2vR4dL()
                            }
                    }
                }
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            n3Lm8vQ1rD = false
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $x4Qm8vR2dL) {
            DriftAlbumLayer { imageValue in
                guard let imageValue else {
                    return
                }
                b6Qm2vR4dL = imageValue
            }
        }
    }

    private func m8Qm2vR4dL() {
        let noteValue = q7Lm3vR1dS.trimmingCharacters(in: .whitespacesAndNewlines)

        guard !noteValue.isEmpty else {
            MoodNoteStore.shared.present("Please fill in the report details")
            return
        }

        n3Lm8vQ1rD = false
        FramePulseStore.shared.begin("Loading...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
            FramePulseStore.shared.finish()
            MoodNoteStore.shared.present("Report submitted successfully")
            SnapshotLaneStore.shared.retreat()
        }
    }
}
