import PhotosUI
import SwiftUI

struct VisualPass: View {

    private enum InputMark {
        case nickname
        case idString
    }

    @State private var h9vQm2dL4sR1nK: String = "tgQTWvR1yoIdmGoi"
    @State private var m4pQv8dS2rL0nK: String = ""
    @State private var c7rVq1mD5sL0pN: String = ""
    @State private var x2nQm6dV9rL1sK: Bool = false
    @FocusState private var b5pQm7dV1rL0sK: InputMark?

    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 25) {
                HStack(spacing: 0) {
                    MoodCanvas(imageName: "iufOeUloCUMC")
                        .frame(width: 40, height: 40)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            SnapshotLaneStore.shared.retreat()
                        }
                    Spacer()
                }
                .padding(.top, 56)
                .padding(.leading, 20)
                ScrollView {
                    VStack(spacing: 116) {
                        VStack(spacing: 32) {
                            ZStack(alignment: .bottomTrailing) {
                                MoodCanvas(sourceValue: h9vQm2dL4sR1nK)
                                    .frame(width: 94, height: 94)
                                    .clipShape(Circle())
                                MoodCanvas(imageName: "e5DuALXWEPJH")
                                    .frame(width: 24, height: 24)
                            }
                            .contentShape(Rectangle())
                            .onTapGesture {
                                x2nQm6dV9rL1sK = true
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
                                                    if m4pQv8dS2rL0nK.isEmpty {
                                                        Text("Please enter")
                                                            .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                            .foregroundColor(Color(red: 153/255, green: 153/255, blue: 153/255, opacity: 0.5))
                                                    }

                                                    TextField("", text: $m4pQv8dS2rL0nK)
                                                        .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                        .foregroundColor(.black)
                                                        .textInputAutocapitalization(.never)
                                                        .autocorrectionDisabled(true)
                                                        .submitLabel(.next)
                                                        .focused($b5pQm7dV1rL0sK, equals: .nickname)
                                                        .onSubmit {
                                                            b5pQm7dV1rL0sK = .idString
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
                                                    if c7rVq1mD5sL0pN.isEmpty {
                                                        Text("Please enter")
                                                            .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                            .foregroundColor(Color(red: 153/255, green: 153/255, blue: 153/255, opacity: 0.5))
                                                    }

                                                    TextField("", text: $c7rVq1mD5sL0pN)
                                                        .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                        .foregroundColor(.black)
                                                        .textInputAutocapitalization(.never)
                                                        .autocorrectionDisabled(true)
                                                        .submitLabel(.done)
                                                        .focused($b5pQm7dV1rL0sK, equals: .idString)
                                                        .onSubmit {
                                                            b5pQm7dV1rL0sK = nil
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
                            .frame(width: 249, height: 50)
                            .overlay {
                                RoundedRectangle(cornerRadius: 60)
                                    .stroke(LinearGradient(colors: [Color(red: 121/255, green: 68/255, blue: 229/255), Color(red: 187/255, green: 127/255, blue: 248/255)], startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                    .overlay {
                                        InstantContentSync(contentValue: "Save", styleValue: .titleLine, sizeValue: 20)
                                    }
                            }
                            .contentShape(Rectangle())
                            .onTapGesture {
                                runCreateFlow()
                            }
                    }
                }
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            b5pQm7dV1rL0sK = nil
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $x2nQm6dV9rL1sK) {
            DriftAlbumLayer { imageValue in
                if let imageValue {
                    FramePulseStore.shared.begin("Loading...")

                    DispatchQueue.global(qos: .userInitiated).async {
                        let sourceValue = savePickedAvatar(imageValue) ?? h9vQm2dL4sR1nK

                        DispatchQueue.main.async {
                            h9vQm2dL4sR1nK = sourceValue
                            FramePulseStore.shared.finish()
                        }
                    }
                }
            }
        }
    }

    private func runCreateFlow() {
        let cleanNicknameValue = m4pQv8dS2rL0nK.trimmingCharacters(in: .whitespacesAndNewlines)
        let cleanIdValue = c7rVq1mD5sL0pN.trimmingCharacters(in: .whitespacesAndNewlines)
        let emailValue = MomentDraftStore.readEmail()
        let passwordValue = MomentDraftStore.readPassword()

        guard !cleanNicknameValue.isEmpty else {
            MoodNoteStore.shared.present("Please enter your nickname")
            b5pQm7dV1rL0sK = .nickname
            return
        }

        guard !cleanIdValue.isEmpty else {
            MoodNoteStore.shared.present("Please enter your ID")
            b5pQm7dV1rL0sK = .idString
            return
        }

        guard !emailValue.isEmpty, !passwordValue.isEmpty else {
            MoodNoteStore.shared.present("Please sign up again")
            SnapshotLaneStore.shared.retreat()
            return
        }

        b5pQm7dV1rL0sK = nil
        FramePulseStore.shared.begin("Loading...")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            _ = MomentArchiveStore.createEntryValue(
                emailValue: emailValue,
                passwordValue: passwordValue,
                avatarValue: h9vQm2dL4sR1nK,
                nicknameValue: cleanNicknameValue,
                idStringValue: cleanIdValue
            )
            MomentDraftStore.clearSignUp()
            SnapshotLaneStore.shared.resetLane()
            SessionBridgeStore.updateSession(true)
            FramePulseStore.shared.finish()
            MoodNoteStore.shared.present("Registration successful")
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
