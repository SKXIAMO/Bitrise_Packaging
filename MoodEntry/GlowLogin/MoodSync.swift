import SwiftUI

struct MoodSync: View {
    
    let oUKce6: (Bool) -> Void

    init(oUKce6: @escaping (Bool) -> Void = { _ in }) {
        self.oUKce6 = oUKce6
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            MoodCanvas(imageName: "czVpWXjd3")
                .frame(width: 248, height: 316)
                .overlay {
                    VStack(spacing: 0) {
                        Spacer()
                        VStack(spacing: 13) {
                            InstantContentSync(contentValue: "To ensure the normal operation of the function, please log in to your account first.", styleValue: .Inter, sizeValue: 15, toneValue: Color(red: 121/255, green: 68/255, blue: 229/255))
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
                                        oUKce6(false)
                                    }
                                RoundedRectangle(cornerRadius: 60)
                                    .fill(.white)
                                    .frame(width: 148, height: 40)
                                    .overlay {
                                        InstantContentSync(contentValue: "log in", styleValue: .titleLine, sizeValue: 18, toneValue: Color(red: 121/255, green: 68/255, blue: 229/255))
                                    }
                                    .onTapGesture {
                                        oUKce6(true)
                                    }
                            }
                        }
                        .padding(.leading, 15)
                        .padding(.trailing, 42)
                        .padding(.bottom, 27)
                    }
                }
            MoodCanvas(imageName: "efnlCXJOJFv1CJsIXp")
                .frame(width: 140, height: 140)
                .offset(x: -28, y: -80)
        }
    }
}
