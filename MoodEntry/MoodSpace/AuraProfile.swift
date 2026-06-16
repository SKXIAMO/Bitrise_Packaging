import PhotosUI
import SwiftUI

struct AuraProfile: View {

    private enum InputMark {
        case nickname
        case idString
    }

    @State private var g4vQm8pL1sR2dN: cLxodc3PrAw9Bsp0US?
    @State private var j7mQv2dP9xL0sR: String = ""
    @State private var h2nKp6vQ4sM1dR: String = ""
    @State private var c8rVq3mL0pD5sN: String = "tgQTWvR1yoIdmGoi"
    @State private var n5pQm7dV1rL0sK: Bool = false
    @FocusState private var v6mPq2dS9rL1nK: InputMark?

    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 23) {
                HStack(spacing: 0) {
                    MoodCanvas(imageName: "g0NbxX")
                        .frame(width: 30, height: 30)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            SnapshotLaneStore.shared.retreat()
                        }
                    Spacer()
                }
                .padding(.top, 62)
                .padding(.leading, 20)
                ScrollView {
                    VStack(spacing: 153) {
                        VStack(spacing: 32) {
                            ZStack(alignment: .bottomTrailing) {
                                MoodCanvas(sourceValue: c8rVq3mL0pD5sN)
                                    .frame(width: 94, height: 94)
                                    .clipShape(Circle())
                                MoodCanvas(imageName: "e5DuALXWEPJH")
                                    .frame(width: 24, height: 24)
                            }
                            .contentShape(Rectangle())
                            .onTapGesture {
                                n5pQm7dV1rL0sK = true
                            }
                            VStack(spacing: 16) {
                                VStack(alignment: .leading, spacing: 15) {
                                    InstantContentSync(contentValue: "Nickname:", styleValue: .titleLine, sizeValue: 18)
                                    RoundedRectangle(cornerRadius: 40)
                                        .fill(.white)
                                        .frame(height: 64)
                                        .overlay {
                                            HStack(spacing: 10) {
                                                ZStack(alignment: .leading) {
                                                    if j7mQv2dP9xL0sR.isEmpty {
                                                        Text("Please enter")
                                                            .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                            .foregroundColor(Color(red: 153/255, green: 153/255, blue: 153/255, opacity: 0.5))
                                                    }

                                                    TextField("", text: $j7mQv2dP9xL0sR)
                                                        .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                        .foregroundColor(.black)
                                                        .textInputAutocapitalization(.never)
                                                        .autocorrectionDisabled(true)
                                                        .submitLabel(.next)
                                                        .focused($v6mPq2dS9rL1nK, equals: .nickname)
                                                        .onSubmit {
                                                            v6mPq2dS9rL1nK = .idString
                                                        }
                                                }
                                                Spacer(minLength: 0)
                                            }
                                            .padding(.horizontal, 16)
                                        }
                                }
                                VStack(alignment: .leading, spacing: 15) {
                                    InstantContentSync(contentValue: "ID:", styleValue: .titleLine, sizeValue: 18)
                                    RoundedRectangle(cornerRadius: 40)
                                        .fill(.white)
                                        .frame(height: 64)
                                        .overlay {
                                            HStack(spacing: 10) {
                                                ZStack(alignment: .leading) {
                                                    if h2nKp6vQ4sM1dR.isEmpty {
                                                        Text("Please enter")
                                                            .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                            .foregroundColor(Color(red: 153/255, green: 153/255, blue: 153/255, opacity: 0.5))
                                                    }

                                                    TextField("", text: $h2nKp6vQ4sM1dR)
                                                        .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                        .foregroundColor(.black)
                                                        .textInputAutocapitalization(.never)
                                                        .autocorrectionDisabled(true)
                                                        .submitLabel(.done)
                                                        .focused($v6mPq2dS9rL1nK, equals: .idString)
                                                        .onSubmit {
                                                            v6mPq2dS9rL1nK = nil
                                                        }
                                                }
                                                Spacer(minLength: 0)
                                            }
                                            .padding(.horizontal, 16)
                                        }
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                        RoundedRectangle(cornerRadius: 60)
                            .fill(.black)
                            .frame(width: 200, height: 40)
                            .overlay {
                                RoundedRectangle(cornerRadius: 60)
                                    .stroke(LinearGradient(colors: [Color(red: 121/255, green: 68/255, blue: 229/255), Color(red: 187/255, green: 127/255, blue: 248/255)], startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                    .overlay {
                                        InstantContentSync(contentValue: "Save", styleValue: .titleLine, sizeValue: 18)
                                    }
                            }
                            .contentShape(Rectangle())
                            .onTapGesture {
                                runProfileSave()
                            }
                    }
                }
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            v6mPq2dS9rL1nK = nil
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $n5pQm7dV1rL0sK) {
            DriftAlbumLayer { imageValue in
                if let imageValue {
                    FramePulseStore.shared.begin("Loading...")

                    DispatchQueue.global(qos: .userInitiated).async {
                        let sourceValue = savePickedAvatar(imageValue) ?? c8rVq3mL0pD5sN

                        DispatchQueue.main.async {
                            c8rVq3mL0pD5sN = sourceValue
                            FramePulseStore.shared.finish()
                        }
                    }
                }
            }
        }
        .onAppear {
            refreshProfileValue()
        }
    }

    private func refreshProfileValue() {
        let currentValue = MomentArchiveStore.readCurrent()
        g4vQm8pL1sR2dN = currentValue
        j7mQv2dP9xL0sR = currentValue?.fWo9s9qMVKRWTU3ec1HGXrlWe ?? ""
        h2nKp6vQ4sM1dR = currentValue?.nvPAT ?? ""
        c8rVq3mL0pD5sN = currentValue?.skR5uKm8o7OZ.isEmpty == false ? currentValue?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi" : "tgQTWvR1yoIdmGoi"
    }

    private func runProfileSave() {
        let cleanNicknameValue = j7mQv2dP9xL0sR.trimmingCharacters(in: .whitespacesAndNewlines)
        let cleanIdValue = h2nKp6vQ4sM1dR.trimmingCharacters(in: .whitespacesAndNewlines)

        guard !cleanNicknameValue.isEmpty else {
            MoodNoteStore.shared.present("Please enter your nickname")
            v6mPq2dS9rL1nK = .nickname
            return
        }

        guard !cleanIdValue.isEmpty else {
            MoodNoteStore.shared.present("Please enter your ID")
            v6mPq2dS9rL1nK = .idString
            return
        }

        v6mPq2dS9rL1nK = nil
        FramePulseStore.shared.begin("Loading...")

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            MomentArchiveStore.updateCurrentProfile(
                avatarValue: c8rVq3mL0pD5sN,
                nicknameValue: cleanNicknameValue,
                idStringValue: cleanIdValue
            )
            refreshProfileValue()
            FramePulseStore.shared.finish()
            MoodNoteStore.shared.present("Profile updated successfully")
            SnapshotLaneStore.shared.retreat()
        }
    }

    private func savePickedAvatar(_ imageValue: UIImage) -> String? {
        guard let dataValue = imageValue.jpegData(compressionQuality: 0.85) else {
            return nil
        }

        let rootValue = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        let fileValue = rootValue?.appendingPathComponent("pingo_avatar_\(UUID().uuidString).jpg")

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
