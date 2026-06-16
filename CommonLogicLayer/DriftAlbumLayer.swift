import PhotosUI
import SwiftUI
import UIKit

struct DriftAlbumLayer: UIViewControllerRepresentable {

    let trailValue: (UIImage?) -> Void

    func makeCoordinator() -> RippleBridge {
        RippleBridge(trailValue: trailValue)
    }

    func makeUIViewController(context: Context) -> PHPickerViewController {
        var configValue = PHPickerConfiguration(photoLibrary: .shared())
        configValue.filter = .images
        configValue.selectionLimit = 1

        let pickerValue = PHPickerViewController(configuration: configValue)
        pickerValue.delegate = context.coordinator
        return pickerValue
    }

    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}

    final class RippleBridge: NSObject, PHPickerViewControllerDelegate {

        let trailValue: (UIImage?) -> Void

        init(trailValue: @escaping (UIImage?) -> Void) {
            self.trailValue = trailValue
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)

            guard let resultValue = results.first else {
                trailValue(nil)
                return
            }

            guard resultValue.itemProvider.canLoadObject(ofClass: UIImage.self) else {
                trailValue(nil)
                return
            }

            resultValue.itemProvider.loadObject(ofClass: UIImage.self) { objectValue, _ in
                DispatchQueue.main.async {
                    self.trailValue(objectValue as? UIImage)
                }
            }
        }
    }
}
