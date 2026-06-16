import SwiftUI

struct ActivityCore: View {
    
    let u6GzQDK2v5vF: (Bool) -> Void

    init(u6GzQDK2v5vF: @escaping (Bool) -> Void = { _ in }) {
        self.u6GzQDK2v5vF = u6GzQDK2v5vF
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            MoodCanvas(imageName: "kZbOJdfzS8qwyQ9fEUVwkYt")
                .frame(width: 248, height: 322)
                .overlay {
                    VStack(spacing: 0) {
                        Spacer()
                        VStack(spacing: 13) {
                            InstantContentSync(contentValue: "Once deleted, you will not be able to recover your personal data.", toneValue: Color(red: 121/255, green: 68/255, blue: 229/255))
                                .multilineTextAlignment(.center)
                                .padding(.all, 10)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(.white)
                                )
                            VStack(spacing: 6) {
                                RoundedRectangle(cornerRadius: 60)
                                    .fill(.black)
                                    .frame(width: 148, height: 40)
                                    .overlay {
                                        InstantContentSync(contentValue: "Cancel", styleValue: .titleLine, sizeValue: 18)
                                    }
                                    .onTapGesture {
                                        u6GzQDK2v5vF(false)
                                    }
                                RoundedRectangle(cornerRadius: 60)
                                    .fill(.white)
                                    .frame(width: 148, height: 40)
                                    .overlay {
                                        InstantContentSync(contentValue: "Confirm", styleValue: .titleLine, sizeValue: 18, toneValue: Color(red: 121/255, green: 68/255, blue: 229/255))
                                    }
                                    .onTapGesture {
                                        u6GzQDK2v5vF(true)
                                    }
                            }
                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 37)
                        .padding(.bottom, 53)
                    }
                }
            MoodCanvas(imageName: "vPA19KIxy44GLzvssPYg")
                .frame(width: 157, height: 157)
                .offset(x: -33, y: -82)
        }
    }
}
