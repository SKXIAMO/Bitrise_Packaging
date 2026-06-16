import SwiftUI

struct InstantContentSync: View {

    enum LetterStyle: String {
        case barlow = "Barlow-Regular"
        case barlow600 = "Barlow-SemiBold"
        case barlow900 = "Barlow-Black"
        case archivo = "Archivo-Regular"
        case Inter = "Inter24pt-Regular"
        case titleLine = "PangMenZhengDaoBiaoTiTiMianFeiBan-4"
    }

    let contentValue: String
    let styleValue: LetterStyle
    let sizeValue: CGFloat
    let toneValue: Color
    let lineValue: Bool

    init(
        contentValue: String,
        styleValue: LetterStyle = .barlow,
        sizeValue: CGFloat = 14,
        toneValue: Color = .white,
        lineValue: Bool = false
    ) {
        self.contentValue = contentValue
        self.styleValue = styleValue
        self.sizeValue = sizeValue
        self.toneValue = toneValue
        self.lineValue = lineValue
    }

    var body: some View {
        Text(contentValue)
            .font(.custom(styleValue.rawValue, size: sizeValue))
            .foregroundStyle(toneValue)
            .overlay(alignment: .bottom) {
                if lineValue {
                    Rectangle()
                        .fill(toneValue)
                        .frame(height: 1)
                        .offset(y: 2)
                }
            }
    }
}
