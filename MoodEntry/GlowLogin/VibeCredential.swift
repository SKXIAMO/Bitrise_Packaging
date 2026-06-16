import SwiftUI

struct VibeCredential: View {
    
    private enum InputMark {
        case email
        case password
        case repeatPassword
    }
    
    let iGUk0WVS1rJsVr9: Int
    
    @State private var emailValue: String = ""
    @State private var passwordValue: String = ""
    @State private var repeatPasswordValue: String = ""
    @FocusState private var activeInput: InputMark?
    
    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 17) {
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
                    VStack(spacing: 92) {
                        VStack(spacing: iGUk0WVS1rJsVr9 == 1 ? 48 : 86) {
                            InstantContentSync(contentValue: iGUk0WVS1rJsVr9 == 1 ? "Forget\npassword" : "Sign up".uppercased(), styleValue: .titleLine, sizeValue: 36)
                                .multilineTextAlignment(.center)
                                .shadow(color: Color(red: 54/255, green: 193/255, blue: 214/255, opacity: 0.25), radius: 4, y: 2)
                            VStack(spacing: 24) {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(.white)
                                    .frame(height: 64)
                                    .overlay {
                                        HStack(spacing: 10) {
                                            MoodCanvas(imageName: "z2nc11tYKRnFIhfFeHct2Y65dJxyj")
                                                .frame(width: 24, height: 24)
                                            ZStack(alignment: .leading) {
                                                if emailValue.isEmpty {
                                                    Text("Email")
                                                        .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                        .foregroundColor(.black.opacity(0.45))
                                                }
                                                
                                                TextField("", text: $emailValue)
                                                    .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                    .foregroundColor(.black)
                                                    .keyboardType(.emailAddress)
                                                    .textInputAutocapitalization(.never)
                                                    .autocorrectionDisabled(true)
                                                    .submitLabel(.next)
                                                    .focused($activeInput, equals: .email)
                                                    .onSubmit {
                                                        activeInput = .password
                                                    }
                                            }
                                        }
                                        .padding(.horizontal, 16)
                                    }
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(.white)
                                    .frame(height: 64)
                                    .overlay {
                                        HStack(spacing: 10) {
                                            MoodCanvas(imageName: "joZKR4P")
                                                .frame(width: 24, height: 24)
                                            ZStack(alignment: .leading) {
                                                if passwordValue.isEmpty {
                                                    Text("Password")
                                                        .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                        .foregroundColor(.black.opacity(0.45))
                                                }
                                                
                                                SecureField("", text: $passwordValue)
                                                    .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                    .foregroundColor(.black)
                                                    .textInputAutocapitalization(.never)
                                                    .autocorrectionDisabled(true)
                                                    .submitLabel(.next)
                                                    .focused($activeInput, equals: .password)
                                                    .onSubmit {
                                                        activeInput = .repeatPassword
                                                    }
                                            }
                                        }
                                        .padding(.horizontal, 16)
                                    }
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(.white)
                                    .frame(height: 64)
                                    .overlay {
                                        HStack(spacing: 10) {
                                            MoodCanvas(imageName: "joZKR4P")
                                                .frame(width: 24, height: 24)
                                            ZStack(alignment: .leading) {
                                                if repeatPasswordValue.isEmpty {
                                                    Text("Enter the password again")
                                                        .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                        .foregroundColor(.black.opacity(0.45))
                                                }
                                                
                                                SecureField("", text: $repeatPasswordValue)
                                                    .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 16))
                                                    .foregroundColor(.black)
                                                    .textInputAutocapitalization(.never)
                                                    .autocorrectionDisabled(true)
                                                    .submitLabel(.done)
                                                    .focused($activeInput, equals: .repeatPassword)
                                                    .onSubmit {
                                                        activeInput = nil
                                                    }
                                            }
                                        }
                                        .padding(.horizontal, 16)
                                    }
                            }
                            .padding(.horizontal, 30)
                        }
                        Button(action: {
                            runCredentialFlow()
                        }) {
                            RoundedRectangle(cornerRadius: 60)
                                .fill(.black)
                                .frame(width: 249, height: 50)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 60)
                                        .stroke(LinearGradient(colors: [Color(red: 121/255, green: 68/255, blue: 229/255), Color(red: 187/255, green: 127/255, blue: 248/255)], startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                        .overlay {
                                            InstantContentSync(contentValue: iGUk0WVS1rJsVr9 == 1 ? "Save" : "Sign up", styleValue: .titleLine, sizeValue: 20)
                                        }
                                }
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            activeInput = nil
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
    
    private func runCredentialFlow() {
        let cleanEmail = emailValue.trimmingCharacters(in: .whitespacesAndNewlines)
        let cleanPassword = passwordValue
        
        guard !cleanEmail.isEmpty else {
            MoodNoteStore.shared.present("Please enter your email")
            activeInput = .email
            return
        }
        
        guard isValidEmailValue(cleanEmail) else {
            MoodNoteStore.shared.present("Incorrect email format")
            activeInput = .email
            return
        }
        
        guard !passwordValue.isEmpty else {
            MoodNoteStore.shared.present("Please enter your password")
            activeInput = .password
            return
        }
        
        guard passwordValue.count >= 6 else {
            MoodNoteStore.shared.present("Password must be at least 6 characters")
            activeInput = .password
            return
        }
        
        guard repeatPasswordValue == passwordValue else {
            MoodNoteStore.shared.present("The two passwords do not match")
            activeInput = .repeatPassword
            return
        }
        
        activeInput = nil
        FramePulseStore.shared.begin("Loading...")

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            let userValue = MomentArchiveStore.matchEntry(mailValue: cleanEmail)

            if iGUk0WVS1rJsVr9 == 0 {
                guard userValue == nil else {
                    FramePulseStore.shared.finish()
                    MoodNoteStore.shared.present("This email has been registered")
                    return
                }

                MomentDraftStore.holdSignUp(emailValue: cleanEmail, passwordValue: cleanPassword)
                FramePulseStore.shared.finish()
                SnapshotLaneStore.shared.forward(.visualPass)
                return
            }

            guard let userValue else {
                FramePulseStore.shared.finish()
                MoodNoteStore.shared.present("This account is not registered")
                return
            }

            guard userValue.d0LJcIHdCX == 0 else {
                FramePulseStore.shared.finish()
                MoodNoteStore.shared.present("This account has been deactivated")
                return
            }

            MomentArchiveStore.renewPassword(emailValue: cleanEmail, passwordValue: cleanPassword)
            FramePulseStore.shared.finish()
            MoodNoteStore.shared.present("Password changed successfully")
            SnapshotLaneStore.shared.retreat()
        }
    }
    
    private func isValidEmailValue(_ emailValue: String) -> Bool {
        let ruleValue = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        return NSPredicate(format: "SELF MATCHES %@", ruleValue).evaluate(with: emailValue)
    }
}
