import SwiftUI

struct sls6W6wKzQ8kda: View {
    
    let cPhZ37KUYSGi1R5ebJcMuCa: (Int) -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Rectangle()
                .fill(.white)
                .frame(height: 238)
                .overlay {
                    VStack(spacing: 24) {
                        VStack(spacing: 10) {
                            RoundedRectangle(cornerRadius: 60)
                                .fill(Color(red: 1, green: 103/255, blue: 61/255))
                                .frame(width: 224, height: 43)
                                .overlay {
                                    InstantContentSync(contentValue: "Report", styleValue: .titleLine)
                                }
                                .onTapGesture {
                                    cPhZ37KUYSGi1R5ebJcMuCa(1)
                                }
                            RoundedRectangle(cornerRadius: 60)
                                .fill(Color(red: 38/255, green: 54/255, blue: 69/255))
                                .frame(width: 224, height: 43)
                                .overlay {
                                    InstantContentSync(contentValue: "Block", styleValue: .titleLine)
                                }
                                .onTapGesture {
                                    cPhZ37KUYSGi1R5ebJcMuCa(2)
                                }
                        }
                        RoundedRectangle(cornerRadius: 60)
                            .fill(Color(red: 113/255, green: 190/255, blue: 232/255))
                            .frame(width: 150, height: 42)
                            .overlay {
                                InstantContentSync(contentValue: "Cancel", styleValue: .barlow900, sizeValue: 18)
                            }
                            .onTapGesture {
                                cPhZ37KUYSGi1R5ebJcMuCa(0)
                            }
                    }
                    .padding(.top, 49)
                    .padding(.leading, 21)
                    .padding(.trailing, 15)
                    .padding(.bottom, 27)
                }
                .clipShape(lrDbAkw60w2iEsO8VfWAQ2u1eNuOAkBN())
        }
    }
}
