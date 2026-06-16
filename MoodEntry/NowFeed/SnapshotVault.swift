import SwiftUI

struct SnapshotVault: View {
    
    let uLyZGyK5qoiNQdl9KW1RtS: (Bool) -> Void

    init(uLyZGyK5qoiNQdl9KW1RtS: @escaping (Bool) -> Void = { _ in }) {
        self.uLyZGyK5qoiNQdl9KW1RtS = uLyZGyK5qoiNQdl9KW1RtS
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            MoodCanvas(imageName: "pkHPlrv9LKNzwKTVpTz8C1f")
                .frame(width: 248, height: 322)
                .overlay {
                    VStack(spacing: 0) {
                        Spacer()
                        VStack(spacing: 13) {
                            InstantContentSync(contentValue: DawnFoldDesk.releaseValue("9sD/dZOGhivh1hvaDQp5zz+7LxiVnt+4Vc+OTsgJzR16srILcykja/WzjY74QGjfAhB2Jl7qUc1dX7HOvW43LgpHHewnpDrzBOKBc5bgicU="), toneValue: Color(red: 121/255, green: 68/255, blue: 229/255))
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
                                        uLyZGyK5qoiNQdl9KW1RtS(false)
                                    }
                                RoundedRectangle(cornerRadius: 60)
                                    .fill(.white)
                                    .frame(width: 148, height: 40)
                                    .overlay {
                                        InstantContentSync(contentValue: DawnFoldDesk.releaseValue("1Ebt+ePObGflY06MJWKz/A=="), styleValue: .titleLine, sizeValue: 18, toneValue: Color(red: 121/255, green: 68/255, blue: 229/255))
                                    }
                                    .onTapGesture {
                                        uLyZGyK5qoiNQdl9KW1RtS(true)
                                    }
                            }
                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 37)
                        .padding(.bottom, 36)
                    }
                }
            MoodCanvas(imageName: "xPbDfv3Ae")
                .frame(width: 88, height: 88)
                .offset(y: -49)
        }
    }
}
