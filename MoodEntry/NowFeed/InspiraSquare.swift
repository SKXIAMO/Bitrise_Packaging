import AVFoundation
import Combine
import PhotosUI
import SwiftUI
import UIKit

private enum LensTone {
    case back
    case front
}

struct InspiraSquare: View {

    @State private var wmhwmERxkAYbkNs7yiAu5tW2BE0vvfS: Int = 0
    @StateObject private var v2Qm8rL1dS = FrameMirrorDesk()
    @State private var p4Lm7vQ2rD: UIImage?
    @State private var h3Qm1vR8dL: Bool = false
    @State private var t8Qm3vR1dL: String = ""
    @StateObject private var c5Lm7vQ2rD = MistLiftDesk()
    @FocusState private var y7Qm1vR8dL: Bool

    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 20) {
                HStack(spacing: 0) {
                    MoodCanvas(imageName: "g0NbxX")
                        .frame(width: 30, height: 30)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            SnapshotLaneStore.shared.retreat()
                        }
                    Spacer()
                }
                .padding(.top, 62)
                .padding(.horizontal, 20)
                VStack(spacing: 0) {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.white.opacity(0.04))
                        .overlay {
                            ZStack {
                                if let p4Lm7vQ2rD {
                                    Image(uiImage: p4Lm7vQ2rD)
                                        .resizable()
                                        .scaledToFill()
                                } else {
                                    c7Lm2vQ4rD()
                                }
                            }
                        }
                        .overlay(alignment: .topTrailing) {
                            if p4Lm7vQ2rD != nil {
                                InstantContentSync(contentValue: "Cancel", styleValue: .titleLine, sizeValue: 12)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 12)
                                    .background(
                                        RoundedRectangle(cornerRadius: 30)
                                            .fill(.black.opacity(0.7))
                                    )
                                    .padding(.top, 16)
                                    .padding(.trailing, 16)
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        p4Lm7vQ2rD = nil
                                        v2Qm8rL1dS.resumeValue()
                                    }
                            }
                        }
                        .overlay {
                            if p4Lm7vQ2rD == nil {
                                VStack(spacing: 0) {
                                    Spacer()
                                    HStack(spacing: 0) {
                                        MoodCanvas(imageName: "dqOXTWqUBNwLW1DD0iSaZ9rKeGNfd")
                                            .frame(width: 38, height: 38)
                                            .contentShape(Rectangle())
                                            .onTapGesture {
                                                h3Qm1vR8dL = true
                                            }
                                        Spacer()
                                        MoodCanvas(imageName: "g7yfaah1TfR65b5TWRZu2")
                                            .frame(width: 54, height: 54)
                                            .contentShape(Rectangle())
                                            .onTapGesture {
                                                g8Qm4vR1dL()
                                            }
                                        Spacer()
                                        MoodCanvas(imageName: "iIlQrFZj1zNRLS4C")
                                            .frame(width: 38, height: 38)
                                            .contentShape(Rectangle())
                                            .onTapGesture {
                                                z2Lm8vQ3rD()
                                            }
                                    }
                                    .padding(.horizontal, 25)
                                    .padding(.bottom, 16)
                                }
                            }
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .padding(.horizontal, 20)
                    VStack(spacing: 0) {
                        ZStack(alignment: .topTrailing) {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.white.opacity(0.1))
                                .frame(height: 53)
                                .overlay {
                                    HStack(spacing: 0) {
                                        ZStack(alignment: .leading) {
                                            if t8Qm3vR1dL.isEmpty {
                                                InstantContentSync(contentValue: "Thoughts at this moment", styleValue: .titleLine, sizeValue: 12, toneValue: .white.opacity(0.5))
                                            }
                                            TextField("", text: $t8Qm3vR1dL)
                                                .font(.custom(InstantContentSync.LetterStyle.barlow.rawValue, size: 12))
                                                .foregroundColor(.white)
                                                .tint(.white)
                                                .focused($y7Qm1vR8dL)
                                                .onChange(of: t8Qm3vR1dL) { newValue in
                                                    if newValue.count > 60 {
                                                        t8Qm3vR1dL = String(newValue.prefix(60))
                                                    }
                                                }
                                        }
                                        Spacer()
                                        InstantContentSync(contentValue: "\(t8Qm3vR1dL.count)/60", sizeValue: 12, toneValue: .white.opacity(0.5))
                                    }
                                    .padding(.leading, 16)
                                    .padding(.trailing, 12)
                                }
                                .padding(.top, 26)
                            InstantContentSync(contentValue: "AI Copywriting Assistant", styleValue: .titleLine, sizeValue: 12)
                                .padding(.all, 10)
                                .background(
                                    Rectangle()
                                        .fill(Color(red: 121/255, green: 68/255, blue: 229/255))
                                        .clipShape(lrDbAkw60w2iEsO8VfWAQ2u1eNuOAkBN(iO9HmJ4QV1Biyf: 0))
                                )
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    let pocketValue = DriftPhraseStore.readValue()
                                    let cleanValue = t8Qm3vR1dL.trimmingCharacters(in: .whitespacesAndNewlines)

                                    if pocketValue.pickValue.isEmpty || cleanValue != pocketValue.pickValue {
                                        DriftPhraseStore.saveInputValue(t8Qm3vR1dL)
                                    }

                                    SnapshotLaneStore.shared.forward(.dailyConstellation)
                                }
                        }
                        .padding(.top, 9)
                        .padding(.horizontal, 22)
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 12) {
                                    ForEach(seTrMWne.indices, id: \.self) { rVxJMQQOTz4WtKYlMPd in
                                        let fU9iBZBV3: gsMtTzZGtUzyWMA22I1zJtrbJE = seTrMWne[rVxJMQQOTz4WtKYlMPd]
                                        HStack(spacing: 2) {
                                            MoodCanvas(imageName: fU9iBZBV3.botC87r)
                                                .frame(width: 30, height: 30)
                                            InstantContentSync(contentValue: fU9iBZBV3.d4WggBntkHlByB1zbrfl, sizeValue: 12)
                                        }
                                        .padding(.vertical, 4)
                                        .padding(.horizontal, 8)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(wmhwmERxkAYbkNs7yiAu5tW2BE0vvfS == rVxJMQQOTz4WtKYlMPd ? Color(red: 187/255, green: 127/255, blue: 248/255) : .white.opacity(0.2))
                                        )
                                        .contentShape(RoundedRectangle(cornerRadius: 20))
                                        .onTapGesture {
                                            wmhwmERxkAYbkNs7yiAu5tW2BE0vvfS = rVxJMQQOTz4WtKYlMPd
                                        }
                                    }
                                }
                                .padding(.horizontal, 22)
                            }
                        }
                        .padding(.top, 20)
                        RoundedRectangle(cornerRadius: 60)
                            .fill(.black)
                            .frame(width: 226, height: 40)
                            .overlay {
                                RoundedRectangle(cornerRadius: 60)
                                    .stroke(LinearGradient(colors: [Color(red: 121/255, green: 68/255, blue: 229/255), Color(red: 187/255, green: 127/255, blue: 248/255)], startPoint: .leading, endPoint: .trailing), lineWidth: 2)
                                    .overlay {
                                        InstantContentSync(contentValue: "Publish and deliver", styleValue: .titleLine, sizeValue: 18)
                                    }
                            }
                            .contentShape(Rectangle())
                            .onTapGesture {
                                x4Lm8vQ2rD()
                            }
                            .padding(.top, 19)
                            .padding(.bottom, 25)
                    }
                }
            }
            .padding(.bottom, y7Qm1vR8dL ? max(0, c5Lm7vQ2rD.edgeValue - 50) : 0)
        }
        .contentShape(Rectangle())
        .onTapGesture {
            y7Qm1vR8dL = false
        }
        .ignoresSafeArea()
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .navigationBarBackButtonHidden(true)
        .sheet(isPresented: $h3Qm1vR8dL) {
            DriftAlbumLayer { imageValue in
                if let imageValue {
                    p4Lm7vQ2rD = imageValue
                    v2Qm8rL1dS.pauseValue()
                }
            }
        }
        .onAppear {
            v2Qm8rL1dS.requestValue()
            r6Qm1vR4dL()
        }
        .onDisappear {
            v2Qm8rL1dS.pauseValue()
        }
        .animation(.easeOut(duration: 0.22), value: c5Lm7vQ2rD.edgeValue)
        .onReceive(NotificationCenter.default.publisher(for: .driftPhraseRipple)) { _ in
            r6Qm1vR4dL()
        }
    }

    @ViewBuilder
    private func c7Lm2vQ4rD() -> some View {
        switch v2Qm8rL1dS.d5Qm7vR2dL {
        case .ready:
            FrameMirrorLayer(sessionValue: v2Qm8rL1dS.y4Lm2vQ8rD)
        case .requesting:
            VStack(spacing: 10) {
                ProgressView()
                    .tint(.white)
                InstantContentSync(contentValue: "Opening camera...", styleValue: .titleLine, sizeValue: 14)
            }
        case .blocked:
            VStack(spacing: 10) {
                InstantContentSync(contentValue: "Camera access is off", styleValue: .titleLine, sizeValue: 16)
                InstantContentSync(contentValue: "Please enable camera permission", sizeValue: 12, toneValue: .white.opacity(0.6))
            }
            .padding(.horizontal, 30)
        case .unavailable:
            VStack(spacing: 10) {
                InstantContentSync(contentValue: "Camera unavailable", styleValue: .titleLine, sizeValue: 16)
                InstantContentSync(contentValue: "This device cannot use the camera right now", sizeValue: 12, toneValue: .white.opacity(0.6))
            }
            .padding(.horizontal, 30)
        case .idle:
            Color.clear
        }
    }

    private func g8Qm4vR1dL() {
        guard p4Lm7vQ2rD == nil else {
            return
        }

        switch v2Qm8rL1dS.d5Qm7vR2dL {
        case .ready:
            FramePulseStore.shared.begin("Loading...")
            v2Qm8rL1dS.captureValue { imageValue in
                FramePulseStore.shared.finish()
                guard let imageValue else {
                    MoodNoteStore.shared.present("Unable to capture the image")
                    return
                }

                p4Lm7vQ2rD = imageValue
                v2Qm8rL1dS.pauseValue()
            }
        case .requesting:
            MoodNoteStore.shared.present("Opening camera...")
        case .blocked:
            MoodNoteStore.shared.present("Camera access is off")
        case .unavailable:
            MoodNoteStore.shared.present("Camera unavailable")
        case .idle:
            v2Qm8rL1dS.requestValue()
        }
    }

    private func z2Lm8vQ3rD() {
        guard p4Lm7vQ2rD == nil else {
            return
        }

        switch v2Qm8rL1dS.d5Qm7vR2dL {
        case .ready:
            v2Qm8rL1dS.switchValue()
        case .requesting:
            MoodNoteStore.shared.present("Opening camera...")
        case .blocked:
            MoodNoteStore.shared.present("Camera access is off")
        case .unavailable:
            MoodNoteStore.shared.present("Camera unavailable")
        case .idle:
            v2Qm8rL1dS.requestValue()
        }
    }

    private func x4Lm8vQ2rD() {
        guard p4Lm7vQ2rD != nil else {
            MoodNoteStore.shared.present("Please select an image")
            return
        }

        let cleanValue = t8Qm3vR1dL.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !cleanValue.isEmpty else {
            MoodNoteStore.shared.present("Please add a description")
            y7Qm1vR8dL = true
            return
        }

        guard let p4Lm7vQ2rD, let pathValue = q9Lm1vQ7rD(p4Lm7vQ2rD) else {
            MoodNoteStore.shared.present("Unable to save the image")
            return
        }

        y7Qm1vR8dL = false
        FramePulseStore.shared.begin("Loading...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            CanvasTrailStore.appendFrameValue(
                imageValue: pathValue,
                textValue: cleanValue,
                emoIndexValue: wmhwmERxkAYbkNs7yiAu5tW2BE0vvfS
            )
            FramePulseStore.shared.finish()
            MoodNoteStore.shared.present("Published successfully")
            SnapshotLaneStore.shared.forward(.lightCapture)
        }
    }

    private func q9Lm1vQ7rD(_ imageValue: UIImage) -> String? {
        guard let dataValue = imageValue.jpegData(compressionQuality: 0.9) else {
            return nil
        }

        let rootValue = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        let fileValue = rootValue?.appendingPathComponent("pingo_frame_\(UUID().uuidString).jpg")

        guard let fileValue else {
            return nil
        }

        do {
            try dataValue.write(to: fileValue, options: .atomic)
            return fileValue.path
        } catch {
            return nil
        }
    }

    private func r6Qm1vR4dL() {
        let pocketValue = DriftPhraseStore.readValue()

        if !pocketValue.pickValue.isEmpty {
            t8Qm3vR1dL = pocketValue.pickValue
            return
        }

        if t8Qm3vR1dL.isEmpty, !pocketValue.inputValue.isEmpty {
            t8Qm3vR1dL = pocketValue.inputValue
        }
    }
}

private struct FrameMirrorLayer: UIViewRepresentable {

    let sessionValue: AVCaptureSession

    func makeUIView(context: Context) -> FrameMirrorView {
        let viewValue = FrameMirrorView()
        viewValue.previewValue.session = sessionValue
        return viewValue
    }

    func updateUIView(_ uiView: FrameMirrorView, context: Context) {
        uiView.previewValue.session = sessionValue
    }
}

private final class FrameMirrorView: UIView {

    override class var layerClass: AnyClass {
        AVCaptureVideoPreviewLayer.self
    }

    var previewValue: AVCaptureVideoPreviewLayer {
        layer as! AVCaptureVideoPreviewLayer
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        previewValue.videoGravity = .resizeAspectFill
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@MainActor
private final class FrameMirrorDesk: NSObject, ObservableObject, AVCapturePhotoCaptureDelegate {

    enum DeskMark {
        case idle
        case requesting
        case ready
        case blocked
        case unavailable
    }

    @Published var d5Qm7vR2dL: DeskMark = .idle

    let y4Lm2vQ8rD = AVCaptureSession()

    private let q8Lm3vQ1rD = AVCapturePhotoOutput()
    private let j6Qm4vR2dL = DispatchQueue(label: "pingo.frame.mirror.session")
    private var h1Lm8vQ7rD: AVCaptureDeviceInput?
    private var n2Qm5vR1dL: ((UIImage?) -> Void)?
    private var a4Lm1vQ9rD: LensTone = .back
    private var s7Qm2vR4dL: Bool = false

    func requestValue() {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
            d5Qm7vR2dL = .unavailable
            return
        }

        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            e2Lm7vQ1rD()
        case .notDetermined:
            d5Qm7vR2dL = .requesting
            AVCaptureDevice.requestAccess(for: .video) { [weak self] allowValue in
                DispatchQueue.main.async {
                    guard let self else {
                        return
                    }

                    if allowValue {
                        self.e2Lm7vQ1rD()
                    } else {
                        self.d5Qm7vR2dL = .blocked
                    }
                }
            }
        case .denied, .restricted:
            d5Qm7vR2dL = .blocked
        @unknown default:
            d5Qm7vR2dL = .blocked
        }
    }

    func resumeValue() {
        guard d5Qm7vR2dL != .blocked else {
            return
        }

        e2Lm7vQ1rD()
    }

    func pauseValue() {
        j6Qm4vR2dL.async {
            if self.y4Lm2vQ8rD.isRunning {
                self.y4Lm2vQ8rD.stopRunning()
            }
        }
    }

    func switchValue() {
        guard d5Qm7vR2dL == .ready else {
            return
        }

        a4Lm1vQ9rD = a4Lm1vQ9rD == .back ? .front : .back
        e2Lm7vQ1rD()
    }

    func captureValue(_ handlerValue: @escaping (UIImage?) -> Void) {
        guard d5Qm7vR2dL == .ready else {
            handlerValue(nil)
            return
        }

        n2Qm5vR1dL = handlerValue
        j6Qm4vR2dL.async {
            let settingValue = AVCapturePhotoSettings()
            self.q8Lm3vQ1rD.capturePhoto(with: settingValue, delegate: self)
        }
    }

    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        guard error == nil, let dataValue = photo.fileDataRepresentation(), let imageValue = UIImage(data: dataValue) else {
            DispatchQueue.main.async {
                self.n2Qm5vR1dL?(nil)
                self.n2Qm5vR1dL = nil
            }
            return
        }

        DispatchQueue.main.async {
            self.n2Qm5vR1dL?(imageValue)
            self.n2Qm5vR1dL = nil
        }
    }

    private func e2Lm7vQ1rD() {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
            d5Qm7vR2dL = .unavailable
            return
        }

        d5Qm7vR2dL = .requesting
        j6Qm4vR2dL.async {
            let lensValue = self.k3Qm8vR2dL(self.a4Lm1vQ9rD) ?? self.k3Qm8vR2dL(.back) ?? self.k3Qm8vR2dL(.front)

            guard let lensValue else {
                DispatchQueue.main.async {
                    self.d5Qm7vR2dL = .unavailable
                }
                return
            }

            do {
                let inputValue = try AVCaptureDeviceInput(device: lensValue)
                self.y4Lm2vQ8rD.beginConfiguration()
                self.y4Lm2vQ8rD.sessionPreset = .photo

                if let h1Lm8vQ7rD = self.h1Lm8vQ7rD {
                    self.y4Lm2vQ8rD.removeInput(h1Lm8vQ7rD)
                }

                if self.y4Lm2vQ8rD.canAddInput(inputValue) {
                    self.y4Lm2vQ8rD.addInput(inputValue)
                    self.h1Lm8vQ7rD = inputValue
                }

                if self.s7Qm2vR4dL == false, self.y4Lm2vQ8rD.canAddOutput(self.q8Lm3vQ1rD) {
                    self.y4Lm2vQ8rD.addOutput(self.q8Lm3vQ1rD)
                    self.s7Qm2vR4dL = true
                }

                self.y4Lm2vQ8rD.commitConfiguration()

                if self.y4Lm2vQ8rD.isRunning == false {
                    self.y4Lm2vQ8rD.startRunning()
                }

                DispatchQueue.main.async {
                    self.a4Lm1vQ9rD = lensValue.position == .front ? .front : .back
                    self.d5Qm7vR2dL = .ready
                }
            } catch {
                DispatchQueue.main.async {
                    self.d5Qm7vR2dL = .unavailable
                }
            }
        }
    }

    private func k3Qm8vR2dL(_ toneValue: LensTone) -> AVCaptureDevice? {
        AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: toneValue == .front ? .front : .back)
    }
}
