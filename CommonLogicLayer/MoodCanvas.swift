import SwiftUI

struct MoodCanvas: View {

    let sourceValue: String

    init(sourceValue: String) {
        self.sourceValue = sourceValue
    }

    init(imageName: String) {
        self.sourceValue = imageName
    }

    var body: some View {
        Rectangle()
            .fill(.clear)
            .overlay {
                if let frameImage = resolveFrameImage() {
                    Image(uiImage: frameImage)
                        .resizable()
                        .scaledToFill()
                } else {
                    Color.clear
                }
            }
            .clipped()
    }

    private func resolveFrameImage() -> UIImage? {
        if let bundleImage = UIImage(named: sourceValue) {
            return bundleImage
        }

        if let bundlePath = resolveBundlePath(for: sourceValue) {
            return UIImage(contentsOfFile: bundlePath)
        }

        if let localPath = resolveLocalPath(for: sourceValue) {
            return UIImage(contentsOfFile: localPath)
        }

        return nil
    }

    private func resolveBundlePath(for sourceValue: String) -> String? {
        let nameValue = sourceValue as NSString
        let rawExtension = nameValue.pathExtension
        let typeValue = rawExtension.isEmpty ? "png" : rawExtension
        let baseValue = rawExtension.isEmpty ? sourceValue : nameValue.deletingPathExtension

        if let bundlePath = Bundle.main.path(forResource: baseValue, ofType: typeValue) {
            return bundlePath
        }

        return Bundle.main.path(forResource: sourceValue, ofType: nil)
    }

    private func resolveLocalPath(for sourceValue: String) -> String? {
        if FileManager.default.fileExists(atPath: sourceValue) {
            return sourceValue
        }

        guard let fileValue = URL(string: sourceValue), fileValue.isFileURL else {
            return nil
        }

        let localPath = fileValue.path
        return FileManager.default.fileExists(atPath: localPath) ? localPath : nil
    }
}
