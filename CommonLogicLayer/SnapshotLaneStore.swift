import Combine
import SwiftUI

enum SnapshotLaneMark {
    case entryGate
    case dailyPulse
    case wandererProgram
    case visualPass
    case moodSync
    case inspiraSession
    case snapshotSession
    case dailyReflect(linkValue: String)
    case vibeCredentialSignUp
    case vibeCredentialReset
    case auraSpace
    case discoverSphere
    case lightCapture
    case visualWorkshop(postIdValue: Int)
    case snapshotVault
    case inspiraSquare
    case dailyConstellation
    case personalPlanet
    case polarisSystem
    case moodGate(roomIdValue: Int)
    case momentJourney
    case myOrbit
    case activityCore
    case auraProfile
    case inspiraSpace
    case memoryFlow
    case selfFrame

    @ViewBuilder
    func buildView() -> some View {
        switch self {
        case .entryGate:
            EntryGateView()
        case .dailyPulse:
            DailyPulse()
        case .wandererProgram:
            WandererProgram()
        case .visualPass:
            VisualPass()
        case .moodSync:
            MoodSync()
        case .inspiraSession:
            InspiraSession()
        case .snapshotSession:
            SnapshotSession()
        case .dailyReflect(let linkValue):
            DailyReflect(linkValue: linkValue)
        case .vibeCredentialSignUp:
            VibeCredential(iGUk0WVS1rJsVr9: 0)
        case .vibeCredentialReset:
            VibeCredential(iGUk0WVS1rJsVr9: 1)
        case .auraSpace:
            AuraSpace()
        case .discoverSphere:
            DiscoverSphere()
        case .lightCapture:
            LightCapture()
        case .visualWorkshop(let postIdValue):
            VisualWorkshop(postIdValue: postIdValue)
        case .snapshotVault:
            SnapshotVault()
        case .inspiraSquare:
            InspiraSquare()
        case .dailyConstellation:
            DailyConstellation()
        case .personalPlanet:
            PersonalPlanet()
        case .polarisSystem:
            PolarisSystem()
        case .moodGate(let roomIdValue):
            MoodGate(roomIdValue: roomIdValue)
        case .momentJourney:
            MomentJourney()
        case .myOrbit:
            MyOrbit()
        case .activityCore:
            ActivityCore()
        case .auraProfile:
            AuraProfile()
        case .inspiraSpace:
            InspiraSpace()
        case .memoryFlow:
            MemoryFlow()
        case .selfFrame:
            SelfFrame()
        }
    }
}

struct SnapshotLaneNode: Identifiable {
    let id = UUID()
    let markValue: SnapshotLaneMark
}

@MainActor
final class SnapshotLaneStore: ObservableObject {

    static let shared = SnapshotLaneStore()

    @Published private(set) var pushValue: [SnapshotLaneNode] = []
    @Published private(set) var coverValue: SnapshotLaneNode?

    private init() {}

    func forward(_ markValue: SnapshotLaneMark) {
        pushValue.append(SnapshotLaneNode(markValue: markValue))
    }

    func overlay(_ markValue: SnapshotLaneMark) {
        coverValue = SnapshotLaneNode(markValue: markValue)
    }

    func retreat() {
        if !pushValue.isEmpty {
            pushValue.removeLast()
            return
        }

        coverValue = nil
    }

    func clearOverlay() {
        coverValue = nil
    }

    func resetLane() {
        pushValue.removeAll()
        coverValue = nil
    }
}
