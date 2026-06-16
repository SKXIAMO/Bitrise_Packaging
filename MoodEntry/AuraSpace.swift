import SwiftUI

struct AuraSpace: View {
    var body: some View {
        VStack(spacing: 26) {
            MoodCanvas(imageName: "zokJhj")
                .frame(width: 92, height: 92)
            InstantContentSync(contentValue: "No content available yet.", sizeValue: 16)
        }
    }
}
