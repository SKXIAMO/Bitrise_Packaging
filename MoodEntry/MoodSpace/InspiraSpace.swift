import SwiftUI

struct InspiraSpace: View {
    
    @State private var dph7mT4vSxq0cL8N: cLxodc3PrAw9Bsp0US?

    let aWKpnP3ZPILVPdl4OcX: () -> Void

    init(aWKpnP3ZPILVPdl4OcX: @escaping () -> Void = {}) {
        self.aWKpnP3ZPILVPdl4OcX = aWKpnP3ZPILVPdl4OcX
    }
    
    var body: some View {
        ZStack {
            MoodCanvas(sourceValue: "jra8wV7")
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    HStack(spacing: 19) {
                        MoodCanvas(sourceValue: dph7mT4vSxq0cL8N?.skR5uKm8o7OZ ?? "tgQTWvR1yoIdmGoi")
                            .frame(width: 67, height: 67)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        VStack(alignment: .leading, spacing: 12) {
                            InstantContentSync(contentValue: dph7mT4vSxq0cL8N?.fWo9s9qMVKRWTU3ec1HGXrlWe ?? "Aebadiah", styleValue: .titleLine, sizeValue: 18)
                                .lineLimit(1)
                            InstantContentSync(contentValue: "ID:\(dph7mT4vSxq0cL8N?.nvPAT ?? "123456")", styleValue: .Inter)
                        }
                    }
                    Spacer()
                }
                .padding(.top, 84)
                .padding(.horizontal, 30)
                HStack(spacing: 0) {
                    HStack(spacing: 73) {
                        VStack(alignment: .leading, spacing: 16) {
                            InstantContentSync(contentValue: "\(dph7mT4vSxq0cL8N?.cEAKRsFPVcziDPDf8C0K4lg ?? 246)", styleValue: .titleLine)
                            InstantContentSync(contentValue: "Delivery")
                        }
                        VStack(alignment: .leading, spacing: 16) {
                            InstantContentSync(contentValue: "\(dph7mT4vSxq0cL8N?.uW67exDxDJqRnHcaUo5AhS6HBKC.count ?? 256)", styleValue: .titleLine)
                            InstantContentSync(contentValue: DawnFoldDesk.releaseValue("qESJtkPQo4Om5a08gk5jvw=="))
                        }
                    }
                    Spacer()
                }
                .padding(.top, 30)
                .padding(.leading, 30)
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(red: 121/255, green: 68/255, blue: 229/255))
                    .frame(height: 72)
                    .overlay(alignment: .trailing) {
                        MoodCanvas(imageName: "ml8PQaB54Kyq00Cj4Cq3A8N7UB8z")
                            .frame(width: 335, height: 72)
                    }
                    .overlay {
                        HStack(spacing: 0) {
                            VStack(alignment: .leading, spacing: 5) {
                                InstantContentSync(contentValue: DawnFoldDesk.releaseValue("69j3gK0ryOYu2L7qwbNW6Q=="), styleValue: .titleLine, sizeValue: 16)
                                InstantContentSync(contentValue: DawnFoldDesk.releaseValue("S7I6nU3ZO6oMTGavWVybzDv3aFkFBWuvkxz0kqvMv3Y="), sizeValue: 12)
                            }
                            Spacer()
                            HStack(spacing: 9) {
                                MoodCanvas(imageName: "rEKSDShniDhGKOb6YNRvxHyQWWS4vurv")
                                    .frame(width: 37, height: 34)
                                InstantContentSync(contentValue: "\(dph7mT4vSxq0cL8N?.vHuSwBXuD9Q ?? 122)", styleValue: .titleLine, sizeValue: 16)
                            }
                        }
                        .padding(.leading, 18)
                        .padding(.trailing, 35)
                    }
                    .contentShape(RoundedRectangle(cornerRadius: 20))
                    .onTapGesture {
                        guard !MomentArchiveStore.isCurrentDrift() else {
                            MoodSyncStore.shared.present { flagValue in
                                guard flagValue else {
                                    return
                                }

                                MomentArchiveStore.clearCurrent()
                                SessionBridgeStore.clearSession()
                                SnapshotLaneStore.shared.resetLane()
                            }
                            return
                        }
                        SnapshotLaneStore.shared.forward(.selfFrame)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(dlo0S8MVZ7DyA78sESQvOa.indices, id: \.self) { tsjFTTYke43izPggv in
                            let vhJ7n63ovyxI: p1rN9uvJ = dlo0S8MVZ7DyA78sESQvOa[tsjFTTYke43izPggv]
                            VStack(spacing: 0) {
                                HStack(spacing: 0) {
                                    HStack(spacing: 6) {
                                        MoodCanvas(imageName: vhJ7n63ovyxI.drd6Iy2CUbaFwYecBe00lLiFNVirL6ud)
                                            .frame(width: 24, height: 24)
                                        InstantContentSync(contentValue: vhJ7n63ovyxI.bOzrmzy0596xaCTEHe5A8tGZyj, sizeValue: 16)
                                    }
                                    Spacer()
                                }
                                .padding(.vertical, 16)
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    runMomentAction(tsjFTTYke43izPggv)
                                }
                                Rectangle()
                                    .fill(.white.opacity(0.2))
                                    .frame(height: 1)
                            }
                        }
                    }
                    .padding(.vertical, 14)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 8)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(red: 17/255, green: 24/255, blue: 35/255))
                    )
                    .padding(.all, 20)
                    .padding(.bottom, 70)
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .onAppear {
            refreshCurrentValue()
        }
        .onReceive(NotificationCenter.default.publisher(for: .auroraArchiveRipple)) { _ in
            refreshCurrentValue()
        }
    }

    private func refreshCurrentValue() {
        dph7mT4vSxq0cL8N = MomentArchiveStore.readCurrent() ?? MomentArchiveStore.readAll().first
    }

    private func runMomentAction(_ indexValue: Int) {
        switch indexValue {
        case 0:
            SnapshotLaneStore.shared.forward(.dailyReflect(linkValue: DawnFoldDesk.releaseValue("n+AM4siUB8q4MNrEkKAdDV/beB452BdM2+BQIT2INif8xsskTlD/COWaC0YIdfH3")))
        case 1:
            SnapshotLaneStore.shared.forward(.dailyReflect(linkValue: DawnFoldDesk.releaseValue("n+AM4siUB8q4MNrEkKAdDbDO1EjLn8+qBR4IOqluE/k=")))
        case 2:
            SnapshotLaneStore.shared.forward(.memoryFlow)
        case 3:
            guard !MomentArchiveStore.isCurrentDrift() else {
                MoodSyncStore.shared.present { flagValue in
                    guard flagValue else {
                        return
                    }

                    MomentArchiveStore.clearCurrent()
                    SessionBridgeStore.clearSession()
                    SnapshotLaneStore.shared.resetLane()
                }
                return
            }

            SnapshotLaneStore.shared.forward(.auraProfile)
        case 4:
            FramePulseStore.shared.begin("Loading...")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                MomentArchiveStore.clearCurrent()
                SessionBridgeStore.clearSession()
                SnapshotLaneStore.shared.resetLane()
                FramePulseStore.shared.finish()
            }
        case 5:
            aWKpnP3ZPILVPdl4OcX()
        default:
            break
        }
    }
}


struct p1rN9uvJ {
    let drd6Iy2CUbaFwYecBe00lLiFNVirL6ud: String
    let bOzrmzy0596xaCTEHe5A8tGZyj: String
}

private let dlo0S8MVZ7DyA78sESQvOa: [p1rN9uvJ] = [
    p1rN9uvJ(drd6Iy2CUbaFwYecBe00lLiFNVirL6ud: "rNdqTaKc9orIHCu704sRh", bOzrmzy0596xaCTEHe5A8tGZyj: DawnFoldDesk.releaseValue("R/hjoalRnfJBWiNfx14ASw==")),
    p1rN9uvJ(drd6Iy2CUbaFwYecBe00lLiFNVirL6ud: "t25Sw1npazkb9SrYFHFTsN", bOzrmzy0596xaCTEHe5A8tGZyj: DawnFoldDesk.releaseValue("KnYX7G9dm+ARJLJF/tr/dg==")),
    p1rN9uvJ(drd6Iy2CUbaFwYecBe00lLiFNVirL6ud: "fQ7bEzR6733S", bOzrmzy0596xaCTEHe5A8tGZyj: DawnFoldDesk.releaseValue("9JTr8E1FODUAei4qUIGPPQ==")),
    p1rN9uvJ(drd6Iy2CUbaFwYecBe00lLiFNVirL6ud: "cdgRhwOtLNI0G", bOzrmzy0596xaCTEHe5A8tGZyj: "Edit personal information"),
    p1rN9uvJ(drd6Iy2CUbaFwYecBe00lLiFNVirL6ud: "prkqrEJhayMj2teicH", bOzrmzy0596xaCTEHe5A8tGZyj: "Logout"),
    p1rN9uvJ(drd6Iy2CUbaFwYecBe00lLiFNVirL6ud: "czHOngakT", bOzrmzy0596xaCTEHe5A8tGZyj: "Delete account")
]
