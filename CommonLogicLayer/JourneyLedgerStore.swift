import Foundation

extension Notification.Name {
    static let laneBridgeRipple = Notification.Name("pingo.local.lane.bridge.ripple")
}

struct JourneyLaneLine: Identifiable {
    let id: Int
    let laneValue: s7Gi1Vo5CCvtBpqHvgBy
    let pairValue: cLxodc3PrAw9Bsp0US
    let glowValue: Int
}

enum JourneyLedgerStore {

    private static let laneKey = "pingo.local.journey.ledger.lane"
    private static let traceKey = "pingo.local.journey.ledger.trace"
    private static let hushKey = "pingo.local.journey.ledger.hush"
    private static let hushMapKey = "pingo.local.journey.ledger.hush.map"

    static func initializeIfNeeded() {
        if UserDefaults.standard.object(forKey: laneKey) == nil {
            saveLaneValue(bF2y0YH5hhafLUDXntBtt2ztk2DL)
        }

        if UserDefaults.standard.object(forKey: traceKey) == nil {
            saveTraceValue(meQ83VFvVcfjYQ)
        }

        if UserDefaults.standard.object(forKey: hushMapKey) == nil,
           UserDefaults.standard.object(forKey: hushKey) == nil {
            UserDefaults.standard.set(Date(), forKey: hushKey)
        }
    }

    static func readLaneValue() -> [s7Gi1Vo5CCvtBpqHvgBy] {
        initializeIfNeeded()

        guard let dataValue = UserDefaults.standard.data(forKey: laneKey) else {
            return []
        }

        return (try? JSONDecoder().decode([s7Gi1Vo5CCvtBpqHvgBy].self, from: dataValue)) ?? []
    }

    static func saveLaneValue(_ laneValue: [s7Gi1Vo5CCvtBpqHvgBy]) {
        guard let dataValue = try? JSONEncoder().encode(laneValue) else {
            return
        }

        UserDefaults.standard.set(dataValue, forKey: laneKey)
        NotificationCenter.default.post(name: .laneBridgeRipple, object: nil)
    }

    static func readTraceValue() -> [z4RdmZtUD8y3GLPigU5CLbX] {
        initializeIfNeeded()

        guard let dataValue = UserDefaults.standard.data(forKey: traceKey) else {
            return []
        }

        return (try? JSONDecoder().decode([z4RdmZtUD8y3GLPigU5CLbX].self, from: dataValue)) ?? []
    }

    static func saveTraceValue(_ traceValue: [z4RdmZtUD8y3GLPigU5CLbX]) {
        guard let dataValue = try? JSONEncoder().encode(traceValue) else {
            return
        }

        UserDefaults.standard.set(dataValue, forKey: traceKey)
        NotificationCenter.default.post(name: .laneBridgeRipple, object: nil)
    }

    static func hushValue() -> Date {
        initializeIfNeeded()

        guard let currentValue = MomentArchiveStore.readCurrent() else {
            return UserDefaults.standard.object(forKey: hushKey) as? Date ?? Date()
        }

        let userKeyValue = String(currentValue.gjoUb8530s4Tn)
        var mapValue = readHushMap()

        if let savedValue = mapValue[userKeyValue] {
            return savedValue
        }

        let fallbackValue = UserDefaults.standard.object(forKey: hushKey) as? Date ?? Date()
        mapValue[userKeyValue] = fallbackValue
        saveHushMap(mapValue)
        return fallbackValue
    }

    static func laneValue(for idValue: Int) -> s7Gi1Vo5CCvtBpqHvgBy? {
        readLaneValue().first { itemValue in
            itemValue.ywqjIS5gQrx3ng11kxwPf == idValue
        }
    }

    static func traceValue(for roomIdValue: Int) -> [z4RdmZtUD8y3GLPigU5CLbX] {
        readTraceValue()
            .filter { itemValue in
                itemValue.c6BC2bXF078ub5fzPl3PfPcPRICmM7R == roomIdValue
            }
            .sorted { leftValue, rightValue in
                leftValue.p8Nc4mQ7sL2dV < rightValue.p8Nc4mQ7sL2dV
            }
    }

    static func panelValueForCurrent() -> [JourneyLaneLine] {
        guard let currentValue = MomentArchiveStore.readCurrent() else {
            return []
        }

        let userMapValue = Dictionary(uniqueKeysWithValues: MomentArchiveStore.readAll().map { ($0.gjoUb8530s4Tn, $0) })

        return readLaneValue()
            .filter { itemValue in
                itemValue.aHJpKAsIgyC6klimm.contains(currentValue.gjoUb8530s4Tn)
            }
            .compactMap { itemValue in
                let partnerIdValue = itemValue.aHJpKAsIgyC6klimm.first { $0 != currentValue.gjoUb8530s4Tn } ?? 0

                guard let partnerValue = userMapValue[partnerIdValue],
                      partnerValue.d0LJcIHdCX == 0,
                      !currentValue.vN3Zt2Tq12njX09eG.contains(partnerIdValue) else {
                    return nil
                }

                let unreadValue = itemValue.wBUN2dEGa7p != currentValue.gjoUb8530s4Tn ? itemValue.lCO6W2r4AaZMCjG4lYK : 0
                return JourneyLaneLine(
                    id: itemValue.ywqjIS5gQrx3ng11kxwPf,
                    laneValue: itemValue,
                    pairValue: partnerValue,
                    glowValue: unreadValue
                )
            }
            .sorted { leftValue, rightValue in
                leftValue.laneValue.cuUMuR62Ds9rm1dT8 > rightValue.laneValue.cuUMuR62Ds9rm1dT8
            }
    }

    static func clearGlowValue(roomIdValue: Int) {
        guard let currentValue = MomentArchiveStore.readCurrent() else {
            return
        }

        var laneListValue = readLaneValue()

        guard let targetIndex = laneListValue.firstIndex(where: { itemValue in
            itemValue.ywqjIS5gQrx3ng11kxwPf == roomIdValue
        }) else {
            return
        }

        guard laneListValue[targetIndex].lCO6W2r4AaZMCjG4lYK > 0,
              laneListValue[targetIndex].wBUN2dEGa7p != currentValue.gjoUb8530s4Tn else {
            return
        }

        laneListValue[targetIndex].lCO6W2r4AaZMCjG4lYK = 0
        saveLaneValue(laneListValue)
    }

    static func pairValue(roomIdValue: Int) -> cLxodc3PrAw9Bsp0US? {
        guard let currentValue = MomentArchiveStore.readCurrent(),
              let laneValue = laneValue(for: roomIdValue) else {
            return nil
        }

        let partnerIdValue = laneValue.aHJpKAsIgyC6klimm.first { $0 != currentValue.gjoUb8530s4Tn } ?? 0
        return MomentArchiveStore.matchEntry(idValue: partnerIdValue)
    }

    static func textTimeValue(_ dateValue: Date) -> String {
        let formatterValue = DateFormatter()
        formatterValue.locale = Locale(identifier: "en_US_POSIX")
        formatterValue.dateFormat = "HH:mm"
        return formatterValue.string(from: dateValue)
    }

    static func appendLineValue(roomIdValue: Int, contentValue: String) {
        appendTraceValue(
            roomIdValue: roomIdValue,
            contentValue: contentValue,
            imageValue: "",
            audioValue: "",
            audioTimeValue: 0,
            postValue: nil,
            roomSummaryValue: contentValue
        )
    }

    static func appendFrameValue(roomIdValue: Int, imageValue: String) {
        appendTraceValue(
            roomIdValue: roomIdValue,
            contentValue: "",
            imageValue: imageValue,
            audioValue: "",
            audioTimeValue: 0,
            postValue: nil,
            roomSummaryValue: DawnFoldDesk.releaseValue("rbbVPhIzLIsCmuVThKx39g==")
        )
    }

    static func appendToneValue(roomIdValue: Int, audioValue: String, audioTimeValue: Int) {
        appendTraceValue(
            roomIdValue: roomIdValue,
            contentValue: "",
            imageValue: "",
            audioValue: audioValue,
            audioTimeValue: audioTimeValue,
            postValue: nil,
            roomSummaryValue: DawnFoldDesk.releaseValue("YnN8CKltCV8yqbFyIXUTqA==")
        )
    }

    static func laneValue(currentIdValue: Int, pairIdValue: Int) -> s7Gi1Vo5CCvtBpqHvgBy? {
        readLaneValue().first { itemValue in
            Set(itemValue.aHJpKAsIgyC6klimm) == Set([currentIdValue, pairIdValue])
        }
    }

    @discardableResult
    static func bloomLaneValue(currentIdValue: Int, pairIdValue: Int) -> s7Gi1Vo5CCvtBpqHvgBy {
        if let laneValue = laneValue(currentIdValue: currentIdValue, pairIdValue: pairIdValue) {
            return laneValue
        }

        var laneListValue = readLaneValue()
        let nextIdValue = (laneListValue.map(\.ywqjIS5gQrx3ng11kxwPf).max() ?? 0) + 1
        let laneValue = s7Gi1Vo5CCvtBpqHvgBy(
            ywqjIS5gQrx3ng11kxwPf: nextIdValue,
            aHJpKAsIgyC6klimm: [currentIdValue, pairIdValue],
            caT2rRHxkQYU0EcZktjQ8qyT9WDFcb6: "",
            lCO6W2r4AaZMCjG4lYK: 0,
            wBUN2dEGa7p: currentIdValue,
            cuUMuR62Ds9rm1dT8: Date()
        )
        laneListValue.append(laneValue)
        saveLaneValue(laneListValue)
        return laneValue
    }

    private static func appendTraceValue(
        roomIdValue: Int,
        contentValue: String,
        imageValue: String,
        audioValue: String,
        audioTimeValue: Int,
        postValue: Int?,
        roomSummaryValue: String
    ) {
        guard let currentValue = MomentArchiveStore.readCurrent() else {
            return
        }

        let sendTimeValue = Date()
        var traceListValue = readTraceValue()
        let nextIdValue = (traceListValue.map(\.zg4iUlaaETunnsIrsR9vOBD).max() ?? 0) + 1
        let traceValue = z4RdmZtUD8y3GLPigU5CLbX(
            zg4iUlaaETunnsIrsR9vOBD: nextIdValue,
            c6BC2bXF078ub5fzPl3PfPcPRICmM7R: roomIdValue,
            xnawZMBPAAFW: currentValue.gjoUb8530s4Tn,
            rnWk9AF43kH1OKj: contentValue,
            usYhdyYGGb9lD5ryz7jUlvdB: imageValue,
            v31uwJv8ff: audioValue,
            jwAgLej0B: audioTimeValue,
            p8Nc4mQ7sL2dV: sendTimeValue,
            a6Qk1vR9mD3sT: postValue
        )
        traceListValue.append(traceValue)
        saveTraceValue(traceListValue)

        var laneListValue = readLaneValue()
        guard let targetIndex = laneListValue.firstIndex(where: { itemValue in
            itemValue.ywqjIS5gQrx3ng11kxwPf == roomIdValue
        }) else {
            return
        }

        laneListValue[targetIndex].caT2rRHxkQYU0EcZktjQ8qyT9WDFcb6 = roomSummaryValue
        laneListValue[targetIndex].wBUN2dEGa7p = currentValue.gjoUb8530s4Tn
        laneListValue[targetIndex].cuUMuR62Ds9rm1dT8 = sendTimeValue
        laneListValue[targetIndex].lCO6W2r4AaZMCjG4lYK += 1
        saveLaneValue(laneListValue)
    }

    private static func readHushMap() -> [String: Date] {
        let rawValue = UserDefaults.standard.dictionary(forKey: hushMapKey) ?? [:]
        return rawValue.reduce(into: [:]) { partialValue, itemValue in
            if let timeValue = itemValue.value as? TimeInterval {
                partialValue[itemValue.key] = Date(timeIntervalSince1970: timeValue)
            } else if let dateValue = itemValue.value as? Date {
                partialValue[itemValue.key] = dateValue
            }
        }
    }

    private static func saveHushMap(_ mapValue: [String: Date]) {
        let rawValue = mapValue.reduce(into: [String: TimeInterval]()) { partialValue, itemValue in
            partialValue[itemValue.key] = itemValue.value.timeIntervalSince1970
        }
        UserDefaults.standard.set(rawValue, forKey: hushMapKey)
    }
}
