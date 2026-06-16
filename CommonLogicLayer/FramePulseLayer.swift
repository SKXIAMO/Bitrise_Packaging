import SwiftUI

struct FramePulseLayer: View {

    @EnvironmentObject private var pulseStore: FramePulseStore
    @State private var spinValue: Bool = false

    var body: some View {
        ZStack {
            if pulseStore.isPresentedValue {
                LinearGradient(
                    colors: [
                        .black.opacity(0.22),
                        .black.opacity(0.46)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                    .ignoresSafeArea()

                RoundedRectangle(cornerRadius: 26)
                    .fill(.ultraThinMaterial)
                    .background(
                        RoundedRectangle(cornerRadius: 26)
                            .fill(.black.opacity(0.76))
                    )
                    .frame(width: 120, height: 120)
                    .overlay {
                        RoundedRectangle(cornerRadius: 26)
                            .stroke(
                                LinearGradient(
                                    colors: [
                                        Color.white.opacity(0.5),
                                        Color(red: 121 / 255, green: 68 / 255, blue: 229 / 255),
                                        Color(red: 187 / 255, green: 127 / 255, blue: 248 / 255)
                                    ],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                ),
                                lineWidth: 1.3
                            )
                            .overlay {
                                VStack(spacing: 12) {
                                    ZStack {
                                        Circle()
                                            .stroke(.white.opacity(0.1), lineWidth: 6)
                                            .frame(width: 42, height: 42)

                                        Circle()
                                            .trim(from: 0.14, to: 0.78)
                                            .stroke(
                                                AngularGradient(
                                                    colors: [
                                                        Color(red: 121 / 255, green: 68 / 255, blue: 229 / 255),
                                                        Color(red: 187 / 255, green: 127 / 255, blue: 248 / 255),
                                                        .white
                                                    ],
                                                    center: .center
                                                ),
                                                style: StrokeStyle(lineWidth: 6, lineCap: .round)
                                            )
                                            .frame(width: 42, height: 42)
                                            .rotationEffect(.degrees(spinValue ? 360 : 0))

                                        Circle()
                                            .fill(
                                                RadialGradient(
                                                    colors: [
                                                        .white,
                                                        Color(red: 187 / 255, green: 127 / 255, blue: 248 / 255)
                                                    ],
                                                    center: .center,
                                                    startRadius: 1,
                                                    endRadius: 10
                                                )
                                            )
                                            .frame(width: 10, height: 10)
                                    }

                                    InstantContentSync(
                                        contentValue: pulseStore.contentValue,
                                        styleValue: .barlow600,
                                        sizeValue: 13
                                    )
                                    .lineLimit(2)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 12)
                                }
                            }
                    }
                    .overlay(alignment: .top) {
                        Capsule()
                            .fill(.white.opacity(0.18))
                            .frame(width: 62, height: 3)
                            .blur(radius: 2)
                            .padding(.top, 12)
                    }
                    .shadow(color: Color.black.opacity(0.32), radius: 24, y: 14)
                    .onAppear {
                        withAnimation(.linear(duration: 0.9).repeatForever(autoreverses: false)) {
                            spinValue = true
                        }
                    }
                    .onDisappear {
                        spinValue = false
                    }
                    .transition(.opacity)
            }
        }
        .animation(.easeInOut(duration: 0.2), value: pulseStore.isPresentedValue)
    }
}
