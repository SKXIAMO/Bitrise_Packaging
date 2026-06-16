import SwiftUI

struct PolarisSystem: View {
    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 24) {
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
                                .frame(width: 45, height: 3)
                                .offset(x: 70, y: 2)
                            HStack(alignment: .top, spacing: 0) {
                                InstantContentSync(contentValue: DawnFoldDesk.releaseValue("l9/IXsvfluDYNMujQbXrKQ=="), styleValue: .titleLine, sizeValue: 24)
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
                ScrollView {
                    VStack(spacing: 20) {
                        HStack(spacing: 0) {
                            HStack(spacing: 18) {
                                MoodCanvas(imageName: "fqZUXrAzTXlfA49bQCB8HBGQMSVH2")
                                    .frame(width: 58, height: 58)
                                InstantContentSync(contentValue: DawnFoldDesk.releaseValue("4ceKe9Ehrll6FQ+hkN7a7pnvjra6k50BPd3SEc2S5cc="), sizeValue: 16)
                                    .padding(.all, 10)
                                    .background(
                                        Rectangle()
                                            .fill(Color(red: 121/255, green: 68/255, blue: 229/255))
                                            .clipShape(lrDbAkw60w2iEsO8VfWAQ2u1eNuOAkBN(iO9HmJ4QV1Biyf: 1))
                                    )
                            }
                            Spacer()
                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 98)
                    }
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
