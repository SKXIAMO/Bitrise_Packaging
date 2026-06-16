import SwiftUI
import WebKit

struct DailyReflect: View {
    
    let linkValue: String
    
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
                PolicyCanvasView(linkValue: linkValue)
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}

private struct PolicyCanvasView: UIViewRepresentable {

    let linkValue: String

    func makeUIView(context: Context) -> WKWebView {
        let webValue = WKWebView(frame: .zero)
        webValue.backgroundColor = .white
        webValue.isOpaque = false
        webValue.scrollView.backgroundColor = .clear
        return webValue
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let urlValue = URL(string: linkValue) else {
            uiView.loadHTMLString("", baseURL: nil)
            return
        }

        if uiView.url?.absoluteString == linkValue {
            return
        }

        uiView.load(URLRequest(url: urlValue))
    }
}
