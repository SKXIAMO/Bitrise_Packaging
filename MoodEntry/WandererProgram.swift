import SwiftUI

struct WandererProgram: View {
    
    @State private var k0Iv0EPNI0e8Rxvb09ydymuEi7E: Int = 0
    @State private var jNdNS8NS0mcW5HR8uPH5ue: Bool = false
    @State private var sApAm2xwmSK0H: Bool = false
    @State private var f3Qm8vR1dL: Int?
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                switch k0Iv0EPNI0e8Rxvb09ydymuEi7E {
                case 0: DiscoverSphere { rZRVo4ofDIG3J in
                    if let lhR4QEy3mTBXz: Int = rZRVo4ofDIG3J {
                        f3Qm8vR1dL = lhR4QEy3mTBXz
                        sApAm2xwmSK0H = true
                    }
                }
                case 1: BreezeHub()
                case 2: MomentJourney()
                default: InspiraSpace {
                    jNdNS8NS0mcW5HR8uPH5ue = true
                }
                }
            }
            ZStack(alignment: .top) {
                Rectangle()
                    .fill(.black)
                    .frame(height: 76)
                    .overlay {
                        HStack(spacing: 34) {
                            HStack(spacing: 10) {
                                Rectangle()
                                    .fill(.clear)
                                    .overlay {
                                        MoodCanvas(imageName: k0Iv0EPNI0e8Rxvb09ydymuEi7E == 0 ? "b4FEogs3yqEewQ8rwyOOYZA" : "zhbSJb9lGc")
                                            .frame(width: 28, height: 28)
                                    }
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        k0Iv0EPNI0e8Rxvb09ydymuEi7E = 0
                                    }
                                Rectangle()
                                    .fill(.clear)
                                    .overlay {
                                        MoodCanvas(imageName: k0Iv0EPNI0e8Rxvb09ydymuEi7E == 1 ? "oarI4cEFfAsot1" : "vNzS6f4412fF50U1u2CE3VtcSjNk6aDJ")
                                            .frame(width: 28, height: 28)
                                    }
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        k0Iv0EPNI0e8Rxvb09ydymuEi7E = 1
                                    }
                            }
                            HStack(spacing: 10) {
                                Rectangle()
                                    .fill(.clear)
                                    .overlay {
                                        MoodCanvas(imageName: k0Iv0EPNI0e8Rxvb09ydymuEi7E == 2 ? "cvPzNVwphqb" : "ug6sLLraj8msBtZfC8HfZe7QaZ")
                                            .frame(width: 28, height: 28)
                                    }
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        k0Iv0EPNI0e8Rxvb09ydymuEi7E = 2
                                    }
                                Rectangle()
                                    .fill(.clear)
                                    .overlay {
                                        MoodCanvas(imageName: k0Iv0EPNI0e8Rxvb09ydymuEi7E == 3 ? "ipRczcLPclNDgf" : "z7z8qVTX")
                                            .frame(width: 28, height: 28)
                                    }
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        k0Iv0EPNI0e8Rxvb09ydymuEi7E = 3
                                    }
                            }
                        }
                        .padding(.bottom, 16)
                    }
                    .padding(.top, 14)
                MoodCanvas(imageName: "sxfLccM33kOWpngDUiBNKqM4ar9SNV6V")
                    .frame(width: 48, height: 48)
                    .contentShape(Rectangle())
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
                        SnapshotLaneStore.shared.forward(.inspiraSquare)
                    }
            }
            if jNdNS8NS0mcW5HR8uPH5ue {
                ZStack {
                    Color.black.opacity(0.5)
                        .onTapGesture {
                            jNdNS8NS0mcW5HR8uPH5ue = false
                        }
                    ActivityCore { cQcFzYqPOfMzTPuC6TfrvTzhu1 in
                        jNdNS8NS0mcW5HR8uPH5ue = false
                        if cQcFzYqPOfMzTPuC6TfrvTzhu1 {
                            FramePulseStore.shared.begin("Loading...")
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                MomentArchiveStore.dimCurrentEntry()
                                MomentArchiveStore.clearCurrent()
                                SessionBridgeStore.clearSession()
                                SnapshotLaneStore.shared.resetLane()
                                FramePulseStore.shared.finish()
                                MoodNoteStore.shared.present("Account deactivated successfully")
                            }
                        }
                    }
                }
            }
            if sApAm2xwmSK0H {
                ZStack(alignment: .bottom) {
                    Color.black.opacity(0.5)
                        .onTapGesture {
                            sApAm2xwmSK0H = false
                        }
                    sls6W6wKzQ8kda { z7gn5 in
                        sApAm2xwmSK0H = false
                        if z7gn5 == 1 {
                            SnapshotLaneStore.shared.forward(.personalPlanet)
                        }
                        if z7gn5 == 2 {
                            guard let f3Qm8vR1dL else {
                                return
                            }

                            FramePulseStore.shared.begin("Loading...")
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                                MomentArchiveStore.appendShadeValueForCurrent(f3Qm8vR1dL)
                                FramePulseStore.shared.finish()
                                MoodNoteStore.shared.present("Blocked successfully")
                            }
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
