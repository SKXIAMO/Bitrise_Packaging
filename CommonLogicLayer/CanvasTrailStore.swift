import Foundation

extension Notification.Name {
    static let frameHarborRipple = Notification.Name("pingo.local.frame.harbor.ripple")
}

enum CanvasTrailStore {

    private static let frameKey = "pingo.local.canvas.trail.frame"
    private static let rippleKey = "pingo.local.canvas.trail.ripple"
    private static let glowKey = "pingo.local.canvas.trail.glow"

    static func initializeIfNeeded() {
        if UserDefaults.standard.object(forKey: frameKey) == nil {
            saveFrameValue(pYnL6w4o2kNCkv)
        }

        if UserDefaults.standard.object(forKey: rippleKey) == nil {
            saveRippleValue(jSMAbiHbpje0P9ge7)
        }

        if UserDefaults.standard.object(forKey: glowKey) == nil {
            saveGlowValue([:])
        }
    }

    static func readFrameValue() -> [uMc4oTd6m09UolY] {
        initializeIfNeeded()

        guard let dataValue = UserDefaults.standard.data(forKey: frameKey) else {
            return []
        }

        return (try? JSONDecoder().decode([uMc4oTd6m09UolY].self, from: dataValue)) ?? []
    }

    static func saveFrameValue(_ listValue: [uMc4oTd6m09UolY]) {
        guard let dataValue = try? JSONEncoder().encode(listValue) else {
            return
        }

        UserDefaults.standard.set(dataValue, forKey: frameKey)
        NotificationCenter.default.post(name: .frameHarborRipple, object: nil)
    }

    static func readRippleValue() -> [odZfoqIN7YlWet] {
        initializeIfNeeded()

        guard let dataValue = UserDefaults.standard.data(forKey: rippleKey) else {
            return []
        }

        return (try? JSONDecoder().decode([odZfoqIN7YlWet].self, from: dataValue)) ?? []
    }

    static func saveRippleValue(_ listValue: [odZfoqIN7YlWet]) {
        guard let dataValue = try? JSONEncoder().encode(listValue) else {
            return
        }

        UserDefaults.standard.set(dataValue, forKey: rippleKey)
        NotificationCenter.default.post(name: .frameHarborRipple, object: nil)
    }

    static func readGlowValue() -> [String: [Int]] {
        initializeIfNeeded()

        guard let dataValue = UserDefaults.standard.data(forKey: glowKey) else {
            return [:]
        }

        return (try? JSONDecoder().decode([String: [Int]].self, from: dataValue)) ?? [:]
    }

    static func saveGlowValue(_ mapValue: [String: [Int]]) {
        guard let dataValue = try? JSONEncoder().encode(mapValue) else {
            return
        }

        UserDefaults.standard.set(dataValue, forKey: glowKey)
        NotificationCenter.default.post(name: .frameHarborRipple, object: nil)
    }

    static func streamValueForCurrent() -> [uMc4oTd6m09UolY] {
        guard let currentValue = MomentArchiveStore.readCurrent() else {
            return []
        }

        return readFrameValue()
            .filter { itemValue in
                !currentValue.vN3Zt2Tq12njX09eG.contains(itemValue.fhOBFnLiOCJS)
            }
            .filter { itemValue in
                MomentArchiveStore.matchEntry(idValue: itemValue.fhOBFnLiOCJS)?.d0LJcIHdCX == 0
            }
            .sorted { leftValue, rightValue in
                leftValue.uG4yDgqGX9YSuO27nUH7Nn > rightValue.uG4yDgqGX9YSuO27nUH7Nn
            }
    }

    static func orbitStreamValueForCurrent() -> [uMc4oTd6m09UolY] {
        guard let currentValue = MomentArchiveStore.readCurrent() else {
            return []
        }

        return readFrameValue()
            .filter { itemValue in
                currentValue.uW67exDxDJqRnHcaUo5AhS6HBKC.contains(itemValue.fhOBFnLiOCJS)
            }
            .filter { itemValue in
                !currentValue.vN3Zt2Tq12njX09eG.contains(itemValue.fhOBFnLiOCJS)
            }
            .filter { itemValue in
                MomentArchiveStore.matchEntry(idValue: itemValue.fhOBFnLiOCJS)?.d0LJcIHdCX == 0
            }
            .sorted { leftValue, rightValue in
                leftValue.uG4yDgqGX9YSuO27nUH7Nn > rightValue.uG4yDgqGX9YSuO27nUH7Nn
            }
    }

    static func frameValue(frameIdValue: Int) -> uMc4oTd6m09UolY? {
        readFrameValue().first { $0.qoxp4whzysl == frameIdValue }
    }

    static func rippleValue(frameIdValue: Int) -> [odZfoqIN7YlWet] {
        let blacklistValue = MomentArchiveStore.readCurrent()?.vN3Zt2Tq12njX09eG ?? []

        return readRippleValue()
            .filter { $0.vXjrxR4DDZB96micR == frameIdValue }
            .filter { !blacklistValue.contains($0.ul8CzdoFMRyYt) }
            .filter { MomentArchiveStore.matchEntry(idValue: $0.ul8CzdoFMRyYt)?.d0LJcIHdCX == 0 }
            .sorted { leftValue, rightValue in
                leftValue.t71AM5GdzJ9Z4YHiuf70DMLRedPsTYYE > rightValue.t71AM5GdzJ9Z4YHiuf70DMLRedPsTYYE
            }
    }

    static func likeValue(noteIdValue: Int) -> Bool {
        guard let currentIdValue = MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn else {
            return false
        }

        return readGlowValue()["\(currentIdValue)"]?.contains(noteIdValue) ?? false
    }

    static func countValue(noteValue: odZfoqIN7YlWet) -> Int {
        noteValue.dfUh1CV + (likeValue(noteIdValue: noteValue.y60xOUbObeeqanpvlFa1cYjREz0L) ? 1 : 0)
    }

    static func switchGlowValue(noteIdValue: Int) {
        guard let currentIdValue = MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn else {
            return
        }

        var mapValue = readGlowValue()
        let keyValue = "\(currentIdValue)"
        var listValue = mapValue[keyValue] ?? []

        if let indexValue = listValue.firstIndex(of: noteIdValue) {
            listValue.remove(at: indexValue)
        } else {
            listValue.append(noteIdValue)
        }

        mapValue[keyValue] = listValue
        saveGlowValue(mapValue)
    }

    static func appendEchoValue(frameIdValue: Int) {
        guard let currentIdValue = MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn else {
            return
        }

        var listValue = readFrameValue()
        guard let indexValue = listValue.firstIndex(where: { $0.qoxp4whzysl == frameIdValue }) else {
            return
        }

        guard !listValue[indexValue].iHCS1SrfrHYpZKhrBSeh0eGCvwcD8B7.contains(currentIdValue) else {
            return
        }

        listValue[indexValue].iHCS1SrfrHYpZKhrBSeh0eGCvwcD8B7.append(currentIdValue)
        saveFrameValue(listValue)
    }

    static func appendLineValue(frameIdValue: Int, textValue: String) {
        guard let currentIdValue = MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn else {
            return
        }

        let cleanValue = textValue.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !cleanValue.isEmpty else {
            return
        }

        var listValue = readRippleValue()
        let nextIdValue = (listValue.map(\.y60xOUbObeeqanpvlFa1cYjREz0L).max() ?? 0) + 1

        listValue.append(
            odZfoqIN7YlWet(
                y60xOUbObeeqanpvlFa1cYjREz0L: nextIdValue,
                vXjrxR4DDZB96micR: frameIdValue,
                ul8CzdoFMRyYt: currentIdValue,
                wYfaGqjPW54YKPbu: cleanValue,
                xtBUyDsfHJawXx: 0,
                t71AM5GdzJ9Z4YHiuf70DMLRedPsTYYE: Date(),
                dfUh1CV: 0
            )
        )

        saveRippleValue(listValue)
    }

    static func appendMoodValue(frameIdValue: Int, emoIndexValue: Int) {
        guard let currentIdValue = MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn else {
            return
        }

        var listValue = readRippleValue()
        let nextIdValue = (listValue.map(\.y60xOUbObeeqanpvlFa1cYjREz0L).max() ?? 0) + 1

        listValue.append(
            odZfoqIN7YlWet(
                y60xOUbObeeqanpvlFa1cYjREz0L: nextIdValue,
                vXjrxR4DDZB96micR: frameIdValue,
                ul8CzdoFMRyYt: currentIdValue,
                wYfaGqjPW54YKPbu: "",
                xtBUyDsfHJawXx: emoIndexValue,
                t71AM5GdzJ9Z4YHiuf70DMLRedPsTYYE: Date(),
                dfUh1CV: 0
            )
        )

        saveRippleValue(listValue)
    }

    static func appendFrameValue(imageValue: String, textValue: String, emoIndexValue: Int) {
        guard let currentIdValue = MomentArchiveStore.readCurrent()?.gjoUb8530s4Tn else {
            return
        }

        let cleanTextValue = textValue.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !imageValue.isEmpty, !cleanTextValue.isEmpty else {
            return
        }

        var listValue = readFrameValue()
        let nextIdValue = (listValue.map(\.qoxp4whzysl).max() ?? 0) + 1

        listValue.append(
            uMc4oTd6m09UolY(
                qoxp4whzysl: nextIdValue,
                fhOBFnLiOCJS: currentIdValue,
                aeQPf0wmzEtu4nHHFF: imageValue,
                f8xiu2PaL3: cleanTextValue,
                bkSbTQ7S4XR2RmIECr0: emoIndexValue,
                uG4yDgqGX9YSuO27nUH7Nn: Date(),
                iHCS1SrfrHYpZKhrBSeh0eGCvwcD8B7: [currentIdValue]
            )
        )

        saveFrameValue(listValue)
    }

    static func textClockValue(_ dateValue: Date) -> String {
        let formatValue = DateFormatter()
        formatValue.locale = Locale(identifier: "en_US_POSIX")
        formatValue.dateFormat = "HH:mm"
        return formatValue.string(from: dateValue)
    }

    static func textDriftValue(_ dateValue: Date) -> String {
        let formatValue = RelativeDateTimeFormatter()
        formatValue.locale = Locale(identifier: "en_US_POSIX")
        formatValue.unitsStyle = .full
        return formatValue.localizedString(for: dateValue, relativeTo: Date())
    }
}
