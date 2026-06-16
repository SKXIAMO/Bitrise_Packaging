import SwiftUI

struct MoodNoteLayer: View {

    @EnvironmentObject private var noteStore: MoodNoteStore

    var body: some View {
        GeometryReader { proxyValue in
            ZStack {
                if let activeValue = noteStore.activeValue {
                    VStack(spacing: 0) {
                        Spacer()
                        HStack(spacing: 0) {
                            Spacer(minLength: 0)
                            InstantContentSync(
                                contentValue: activeValue.contentValue,
                                styleValue: .barlow600,
                                sizeValue: 15
                            )
                            .lineLimit(3)
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.horizontal, 18)
                            .padding(.vertical, 15)
                            .background(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(.ultraThinMaterial)
                                    .background(
                                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                                            .fill(.black.opacity(0.74))
                                    )
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                                            .stroke(
                                                LinearGradient(
                                                    colors: [
                                                        Color.white.opacity(0.55),
                                                        Color(red: 121 / 255, green: 68 / 255, blue: 229 / 255),
                                                        Color(red: 187 / 255, green: 127 / 255, blue: 248 / 255)
                                                    ],
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                ),
                                                lineWidth: 1.2
                                            )
                                    }
                            )
                            .frame(maxWidth: min(proxyValue.size.width - 52, 280))
                            .shadow(color: Color.black.opacity(0.28), radius: 20, y: 10)
                            Spacer(minLength: 0)
                        }
                        .padding(.horizontal, 26)
                        .padding(.bottom, 118)
                    }
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .allowsHitTesting(false)
        .animation(.easeInOut(duration: 0.2), value: noteStore.activeValue?.id)
    }
}
