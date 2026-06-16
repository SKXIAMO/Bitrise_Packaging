import AuthenticationServices
import SwiftUI

struct DailyPulse: View {
    
    @AppStorage(MomentClauseStore.storageKey) private var hasMomentClause: Bool = false
    @State private var xs8ijv8XbqyfHK0L0: Bool = false
    
    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Spacer()
                    InstantContentSync(contentValue: DawnFoldDesk.releaseValue("DODkp+jvUbQ/2Y0A6I4Wow=="), styleValue: .titleLine)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 10)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 121/255, green: 68/255, blue: 229/255))
                        )
                        .contentShape(RoundedRectangle(cornerRadius: 10))
                        .onTapGesture {
                            openClausePanel()
                        }
                }
                .padding(.top, 60)
                .padding(.trailing, 28)
                Spacer()
                VStack(spacing: 45) {
                    VStack(spacing: 40) {
                        VStack(spacing: 13) {
                            MoodCanvas(imageName: "cbbgiaVJ6GOqKfsy")
                                .frame(width: 86, height: 86)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            InstantContentSync(contentValue: "Pingo", styleValue: .titleLine, sizeValue: 40)
                        }
                        VStack(spacing: 24) {
                            VStack(spacing: 22) {
                                VStack(spacing: 16) {
                                    Button(action: {
                                        runEntryCheck {
                                            SnapshotLaneStore.shared.forward(.snapshotSession)
                                        }
                                    }) {
                                        RoundedRectangle(cornerRadius: 60)
                                            .fill(.black)
                                            .frame(width: 249, height: 50)
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 60)
                                                    .stroke(LinearGradient(colors: [Color(red: 121/255, green: 68/255, blue: 229/255), Color(red: 187/255, green: 127/255, blue: 248/255)], startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                                    .overlay {
                                                        InstantContentSync(contentValue: "Login by email", styleValue: .titleLine, sizeValue: 20)
                                                    }
                                            }
                                    }
                                    .buttonStyle(.plain)
                                    Button(action: {
                                        runEntryCheck {
                                            runGuestEntryFlow()
                                        }
                                    }) {
                                        RoundedRectangle(cornerRadius: 60)
                                            .fill(.white)
                                            .frame(width: 249, height: 50)
                                            .overlay {
                                                RoundedRectangle(cornerRadius: 60)
                                                    .stroke(LinearGradient(colors: [Color(red: 121/255, green: 68/255, blue: 229/255), Color(red: 187/255, green: 127/255, blue: 248/255)], startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                                    .overlay {
                                                        InstantContentSync(contentValue: "I'm new", styleValue: .titleLine, sizeValue: 20, toneValue: Color(red: 121/255, green: 68/255, blue: 229/255))
                                                    }
                                            }
                                    }
                                    .buttonStyle(.plain)
                                }
                                HStack(spacing: 0) {
                                    InstantContentSync(contentValue: "Don't have an account? ")
                                    InstantContentSync(contentValue: "Sign up", styleValue: .barlow600, lineValue: true)
                                        .contentShape(Rectangle())
                                        .onTapGesture {
                                            runEntryCheck {
                                                SnapshotLaneStore.shared.forward(.vibeCredentialSignUp)
                                            }
                                        }
                                }
                            }
                            VStack(spacing: 20) {
                                HStack(spacing: 4) {
                                    Rectangle()
                                        .fill(.white)
                                        .frame(width: 78, height: 0.4)
                                    InstantContentSync(contentValue: "Other login methods", sizeValue: 10)
                                    Rectangle()
                                        .fill(.white)
                                        .frame(width: 78, height: 0.4)
                                }
                                Button(action: {
                                    runEntryCheck {
                                        runOrchardEntryFlow()
                                    }
                                }) {
                                    MoodCanvas(imageName: "nkjg2bWhMSNkUbNj579q")
                                        .frame(width: 40, height: 40)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        HStack(spacing: 8) {
                            Group {
                                if xs8ijv8XbqyfHK0L0 {
                                    MoodCanvas(imageName: "f09ObMTSaSVmBo")
                                        .frame(width: 19, height: 19)
                                } else {
                                    Circle()
                                        .stroke(.white, lineWidth: 1)
                                        .frame(width: 19)
                                }
                            }
                            .contentShape(Circle())
                            .onTapGesture {
                                xs8ijv8XbqyfHK0L0.toggle()
                            }
                            HStack(spacing: 0) {
                                InstantContentSync(contentValue: "Agree with ")
                                    .minimumScaleFactor(0.5)
                                InstantContentSync(contentValue: DawnFoldDesk.releaseValue("KnYX7G9dm+ARJLJF/tr/dg=="), lineValue: true)
                                    .minimumScaleFactor(0.5)
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        openPolicyCanvas(DawnFoldDesk.releaseValue("n+AM4siUB8q4MNrEkKAdDbDO1EjLn8+qBR4IOqluE/k="))
                                    }
                                InstantContentSync(contentValue: " and ")
                                    .minimumScaleFactor(0.5)
                                InstantContentSync(contentValue: DawnFoldDesk.releaseValue("R/hjoalRnfJBWiNfx14ASw=="), lineValue: true)
                                    .minimumScaleFactor(0.5)
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        openPolicyCanvas(DawnFoldDesk.releaseValue("n+AM4siUB8q4MNrEkKAdDV/beB452BdM2+BQIT2INif8xsskTlD/COWaC0YIdfH3"))
                                    }
                            }
                        }
                        .padding(.bottom, 29)
                    }
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }

    private func runEntryCheck(onReady: @escaping () -> Void) {
        guard hasMomentClause else {
            MoodNoteStore.shared.present(DawnFoldDesk.releaseValue("x9/Hq60v7yUYQY2AAP81kG6iH/fszBXHEKIsNOmjO1s="))
            openClausePanel()
            return
        }

        guard xs8ijv8XbqyfHK0L0 else {
            MoodNoteStore.shared.present("Please agree to the terms below")
            return
        }

        onReady()
    }

    private func openClausePanel() {
        SnapshotLaneStore.shared.forward(.inspiraSession)
    }

    private func openPolicyCanvas(_ linkValue: String) {
        SnapshotLaneStore.shared.forward(.dailyReflect(linkValue: linkValue))
    }

    private func runGuestEntryFlow() {
        FramePulseStore.shared.begin("Loading...")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            _ = MomentArchiveStore.createDriftEntryValue()
            SnapshotLaneStore.shared.resetLane()
            SessionBridgeStore.updateSession(true)
            FramePulseStore.shared.finish()
            MoodNoteStore.shared.present("Login successful")
        }
    }

    private func runOrchardEntryFlow() {
        FramePulseStore.shared.begin("Loading...")
        OrchardBridgeDesk.shared.beginFlow { resultValue in
            switch resultValue {
            case .success(let leafValue):
                if let userValue = MomentArchiveStore.matchEntry(mailValue: leafValue.emailValue) {
                    guard userValue.d0LJcIHdCX == 0 else {
                        FramePulseStore.shared.finish()
                        MoodNoteStore.shared.present("This account has been deactivated")
                        return
                    }

                    OrchardBridgeStore.bindSeedValue(
                        appleValue: leafValue.appleValue,
                        emailValue: leafValue.emailValue
                    )
                    MomentArchiveStore.saveCurrent(userValue)
                    SnapshotLaneStore.shared.resetLane()
                    SessionBridgeStore.updateSession(true)
                    FramePulseStore.shared.finish()
                    MoodNoteStore.shared.present("Login successful")
                    return
                }

                let idValue = MomentArchiveStore.randomIdValue()
                let nicknameValue = leafValue.nicknameValue.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
                    ? "Pingo\(String(idValue.suffix(4)))"
                    : leafValue.nicknameValue

                _ = MomentArchiveStore.createEntryValue(
                    emailValue: leafValue.emailValue,
                    passwordValue: "",
                    avatarValue: "tgQTWvR1yoIdmGoi",
                    nicknameValue: nicknameValue,
                    idStringValue: idValue
                )
                OrchardBridgeStore.bindSeedValue(
                    appleValue: leafValue.appleValue,
                    emailValue: leafValue.emailValue
                )
                SnapshotLaneStore.shared.resetLane()
                SessionBridgeStore.updateSession(true)
                FramePulseStore.shared.finish()
                MoodNoteStore.shared.present("Login successful")
            case .failure(let error):
                FramePulseStore.shared.finish()

                if let errorValue = error as? ASAuthorizationError, errorValue.code == .canceled {
                    MoodNoteStore.shared.present(DawnFoldDesk.releaseValue("1Whp2Q3c+Cz6ZowEFAltFQK25hYBs8N+vz2pGXPsPgU="))
                } else {
                    MoodNoteStore.shared.present(error.localizedDescription)
                }
            }
        }
    }
}
