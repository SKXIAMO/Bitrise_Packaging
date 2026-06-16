import SwiftUI

struct MyOrbit: View {
    
    let iN69zxITAt3aEvV1qQ3pm: (Int) -> Void

    init(iN69zxITAt3aEvV1qQ3pm: @escaping (Int) -> Void = { _ in }) {
        self.iN69zxITAt3aEvV1qQ3pm = iN69zxITAt3aEvV1qQ3pm
    }
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color.black.opacity(0.5)
                .onTapGesture {
                    iN69zxITAt3aEvV1qQ3pm(0)
                }
            VStack(spacing: 24) {
                VStack(spacing: 10) {
                    RoundedRectangle(cornerRadius: 60)
                        .fill(Color(red: 1, green: 103/255, blue: 61/255))
                        .frame(width: 224, height: 43)
                        .overlay {
                            InstantContentSync(contentValue: "Report", styleValue: .titleLine)
                        }
                        .onTapGesture {
                            iN69zxITAt3aEvV1qQ3pm(1)
                        }
                    RoundedRectangle(cornerRadius: 60)
                        .fill(Color(red: 38/255, green: 54/255, blue: 69/255))
                        .frame(width: 224, height: 43)
                        .overlay {
                            InstantContentSync(contentValue: "Block", styleValue: .titleLine)
                        }
                        .onTapGesture {
                            iN69zxITAt3aEvV1qQ3pm(2)
                        }
                }
                RoundedRectangle(cornerRadius: 60)
                    .fill(Color(red: 113/255, green: 190/255, blue: 232/255))
                    .frame(width: 150, height: 42)
                    .overlay {
                        InstantContentSync(contentValue: "Cancel", styleValue: .barlow900, sizeValue: 18)
                    }
                    .onTapGesture {
                        iN69zxITAt3aEvV1qQ3pm(0)
                    }
            }
            .padding(.top, 49)
            .padding(.leading, 21)
            .padding(.trailing, 15)
            .padding(.bottom, 27)
            .background(
                Rectangle()
                    .fill(.white)
                    .clipShape(sCvQr2SBaQ())
            )
            .padding(.top, 108)
            .padding(.trailing, 13)
        }
    }
}

struct sCvQr2SBaQ: Shape {
    func path(in ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq: CGRect) -> Path {
        var hf0vpB3fUmqqx5BxOybiydBGV = Path()
        
        hf0vpB3fUmqqx5BxOybiydBGV.move(to: CGPoint(x: 0, y: 31))
        hf0vpB3fUmqqx5BxOybiydBGV.addQuadCurve(to: CGPoint(x: 16, y: 15), control: CGPoint(x: 0, y: 15))
        hf0vpB3fUmqqx5BxOybiydBGV.addLine(to: CGPoint(x: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxX - 97.5, y: 15))
        hf0vpB3fUmqqx5BxOybiydBGV.addLine(to: CGPoint(x: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxX - 78, y: 2.3))
        hf0vpB3fUmqqx5BxOybiydBGV.addQuadCurve(to: CGPoint(x: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxX - 72, y: 4), control: CGPoint(x: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxX - 74.5, y: 0))
        hf0vpB3fUmqqx5BxOybiydBGV.addLine(to: CGPoint(x: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxX - 65, y: 15))
        hf0vpB3fUmqqx5BxOybiydBGV.addLine(to: CGPoint(x: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxX - 16, y: 15))
        hf0vpB3fUmqqx5BxOybiydBGV.addQuadCurve(to: CGPoint(x: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxX, y: 31), control: CGPoint(x: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxX, y: 15))
        hf0vpB3fUmqqx5BxOybiydBGV.addLine(to: CGPoint(x: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxX, y: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxY - 16))
        hf0vpB3fUmqqx5BxOybiydBGV.addQuadCurve(to: CGPoint(x: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxX - 16, y: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxY), control: CGPoint(x: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxX, y: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxY))
        hf0vpB3fUmqqx5BxOybiydBGV.addLine(to: CGPoint(x: 16, y: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxY))
        hf0vpB3fUmqqx5BxOybiydBGV.addQuadCurve(to: CGPoint(x: 0, y: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxY - 16), control: CGPoint(x: 0, y: ue5OgaGgvf2i9E3ZlZFANY0p3cqBnq.maxY))
        hf0vpB3fUmqqx5BxOybiydBGV.closeSubpath()
        
        return hf0vpB3fUmqqx5BxOybiydBGV
    }
}
