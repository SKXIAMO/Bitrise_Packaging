import Foundation

extension Notification.Name {
    static let auroraArchiveRipple = Notification.Name("pingo.local.aurora.archive.ripple")
}

enum MomentArchiveStore {

    static let groupKey = "pingo.local.moment.archive.group"
    static let focusKey = "pingo.local.moment.archive.focus"
    private static let driftTailValue = "@drift.pingo.local"

    static func initializeIfNeeded() {
        guard UserDefaults.standard.object(forKey: groupKey) == nil else {
            return
        }

        saveAll(m7Y0hQYBk9IyjquOVNFL0)
    }

    static func readAll() -> [cLxodc3PrAw9Bsp0US] {
        initializeIfNeeded()

        guard let dataValue = UserDefaults.standard.data(forKey: groupKey) else {
            return []
        }

        return (try? JSONDecoder().decode([cLxodc3PrAw9Bsp0US].self, from: dataValue)) ?? []
    }

    static func saveAll(_ listValue: [cLxodc3PrAw9Bsp0US]) {
        guard let dataValue = try? JSONEncoder().encode(listValue) else {
            return
        }

        UserDefaults.standard.set(dataValue, forKey: groupKey)
    }

    static func matchEntry(mailValue: String) -> cLxodc3PrAw9Bsp0US? {
        let cleanEmailValue = normalizeMail(mailValue)

        return readAll().first { itemValue in
            normalizeMail(itemValue.x7J9D6yjgssSG1H6jD4fLKvAxRJX) == cleanEmailValue
        }
    }

    static func isDriftEntry(_ userValue: cLxodc3PrAw9Bsp0US) -> Bool {
        normalizeMail(userValue.x7J9D6yjgssSG1H6jD4fLKvAxRJX).hasSuffix(driftTailValue)
    }

    static func isCurrentDrift() -> Bool {
        guard let currentValue = readCurrent() else {
            return false
        }

        return isDriftEntry(currentValue)
    }

    static func saveCurrent(_ userValue: cLxodc3PrAw9Bsp0US) {
        guard let dataValue = try? JSONEncoder().encode(userValue) else {
            return
        }

        UserDefaults.standard.set(dataValue, forKey: focusKey)
        NotificationCenter.default.post(name: .auroraArchiveRipple, object: nil)
    }

    static func readCurrent() -> cLxodc3PrAw9Bsp0US? {
        guard let dataValue = UserDefaults.standard.data(forKey: focusKey) else {
            return nil
        }

        return try? JSONDecoder().decode(cLxodc3PrAw9Bsp0US.self, from: dataValue)
    }

    static func clearCurrent() {
        UserDefaults.standard.removeObject(forKey: focusKey)
    }

    static func dimCurrentEntry() {
        guard let currentValue = readCurrent() else {
            return
        }

        var listValue = readAll()

        guard let targetIndex = listValue.firstIndex(where: { itemValue in
            itemValue.gjoUb8530s4Tn == currentValue.gjoUb8530s4Tn
        }) else {
            return
        }

        listValue[targetIndex].d0LJcIHdCX = 1
        saveAll(listValue)

        var nextCurrentValue = currentValue
        nextCurrentValue.d0LJcIHdCX = 1
        saveCurrent(nextCurrentValue)
    }

    static func appendCoinsForCurrent(_ coinsValue: Int) {
        guard let currentValue = readCurrent() else {
            return
        }

        var listValue = readAll()

        guard let targetIndex = listValue.firstIndex(where: { itemValue in
            itemValue.gjoUb8530s4Tn == currentValue.gjoUb8530s4Tn
        }) else {
            return
        }

        listValue[targetIndex].vHuSwBXuD9Q += coinsValue
        saveAll(listValue)
        saveCurrent(listValue[targetIndex])
    }

    @discardableResult
    static func consumeCoinsForCurrent(_ coinsValue: Int) -> Bool {
        guard let currentValue = readCurrent(), coinsValue > 0 else {
            return false
        }

        var listValue = readAll()

        guard let targetIndex = listValue.firstIndex(where: { itemValue in
            itemValue.gjoUb8530s4Tn == currentValue.gjoUb8530s4Tn
        }) else {
            return false
        }

        guard listValue[targetIndex].vHuSwBXuD9Q >= coinsValue else {
            return false
        }

        listValue[targetIndex].vHuSwBXuD9Q -= coinsValue
        saveAll(listValue)
        saveCurrent(listValue[targetIndex])
        return true
    }

    static func matchEntry(idValue: Int) -> cLxodc3PrAw9Bsp0US? {
        readAll().first { itemValue in
            itemValue.gjoUb8530s4Tn == idValue
        }
    }

    static func removeShadeValueForCurrent(_ idValue: Int) {
        guard let currentValue = readCurrent() else {
            return
        }

        var listValue = readAll()

        guard let targetIndex = listValue.firstIndex(where: { itemValue in
            itemValue.gjoUb8530s4Tn == currentValue.gjoUb8530s4Tn
        }) else {
            return
        }

        listValue[targetIndex].vN3Zt2Tq12njX09eG.removeAll { itemValue in
            itemValue == idValue
        }
        saveAll(listValue)
        saveCurrent(listValue[targetIndex])
    }

    static func appendShadeValueForCurrent(_ idValue: Int) {
        guard let currentValue = readCurrent(), currentValue.gjoUb8530s4Tn != idValue else {
            return
        }

        var listValue = readAll()

        guard let targetIndex = listValue.firstIndex(where: { itemValue in
            itemValue.gjoUb8530s4Tn == currentValue.gjoUb8530s4Tn
        }) else {
            return
        }

        guard !listValue[targetIndex].vN3Zt2Tq12njX09eG.contains(idValue) else {
            return
        }

        listValue[targetIndex].vN3Zt2Tq12njX09eG.append(idValue)
        saveAll(listValue)
        saveCurrent(listValue[targetIndex])
    }

    static func appendOrbitValueForCurrent(_ idValue: Int) {
        guard let currentValue = readCurrent(), currentValue.gjoUb8530s4Tn != idValue else {
            return
        }

        var listValue = readAll()

        guard let targetIndex = listValue.firstIndex(where: { itemValue in
            itemValue.gjoUb8530s4Tn == currentValue.gjoUb8530s4Tn
        }) else {
            return
        }

        guard matchEntry(idValue: idValue)?.d0LJcIHdCX == 0 else {
            return
        }

        guard !listValue[targetIndex].uW67exDxDJqRnHcaUo5AhS6HBKC.contains(idValue) else {
            return
        }

        listValue[targetIndex].uW67exDxDJqRnHcaUo5AhS6HBKC.append(idValue)
        saveAll(listValue)
        saveCurrent(listValue[targetIndex])
    }

    static func removeOrbitValueForCurrent(_ idValue: Int) {
        guard let currentValue = readCurrent(), currentValue.gjoUb8530s4Tn != idValue else {
            return
        }

        var listValue = readAll()

        guard let targetIndex = listValue.firstIndex(where: { itemValue in
            itemValue.gjoUb8530s4Tn == currentValue.gjoUb8530s4Tn
        }) else {
            return
        }

        listValue[targetIndex].uW67exDxDJqRnHcaUo5AhS6HBKC.removeAll { followIdValue in
            followIdValue == idValue
        }
        saveAll(listValue)
        saveCurrent(listValue[targetIndex])
    }

    static func glowValueForCurrent() -> [cLxodc3PrAw9Bsp0US] {
        guard let currentValue = readCurrent() else {
            return []
        }

        return readAll().filter { itemValue in
            itemValue.gjoUb8530s4Tn != currentValue.gjoUb8530s4Tn &&
            itemValue.d0LJcIHdCX == 0 &&
            !currentValue.vN3Zt2Tq12njX09eG.contains(itemValue.gjoUb8530s4Tn)
        }
    }

    static func switchMarkValue(_ postIdValue: Int) {
        guard let currentValue = readCurrent() else {
            return
        }

        var listValue = readAll()

        guard let targetIndex = listValue.firstIndex(where: { itemValue in
            itemValue.gjoUb8530s4Tn == currentValue.gjoUb8530s4Tn
        }) else {
            return
        }

        if let likeIndexValue = listValue[targetIndex].hqzcmxfxps.firstIndex(of: postIdValue) {
            listValue[targetIndex].hqzcmxfxps.remove(at: likeIndexValue)
        } else {
            listValue[targetIndex].hqzcmxfxps.append(postIdValue)
        }

        saveAll(listValue)
        saveCurrent(listValue[targetIndex])
    }

    static func updateCurrentProfile(avatarValue: String, nicknameValue: String, idStringValue: String) {
        guard let currentValue = readCurrent() else {
            return
        }

        var listValue = readAll()

        guard let targetIndex = listValue.firstIndex(where: { itemValue in
            itemValue.gjoUb8530s4Tn == currentValue.gjoUb8530s4Tn
        }) else {
            return
        }

        listValue[targetIndex].skR5uKm8o7OZ = avatarValue
        listValue[targetIndex].fWo9s9qMVKRWTU3ec1HGXrlWe = nicknameValue
        listValue[targetIndex].nvPAT = idStringValue
        saveAll(listValue)
        saveCurrent(listValue[targetIndex])
    }

    static func renewPassword(emailValue: String, passwordValue: String) {
        let cleanEmailValue = normalizeMail(emailValue)
        var listValue = readAll()

        guard let targetIndex = listValue.firstIndex(where: { itemValue in
            normalizeMail(itemValue.x7J9D6yjgssSG1H6jD4fLKvAxRJX) == cleanEmailValue
        }) else {
            return
        }

        listValue[targetIndex].fy7ZlFRsziI2aZJjpAl = passwordValue
        saveAll(listValue)

        if let currentValue = readCurrent(), currentValue.gjoUb8530s4Tn == listValue[targetIndex].gjoUb8530s4Tn {
            saveCurrent(listValue[targetIndex])
        }
    }

    @discardableResult
    static func createEntryValue(
        emailValue: String,
        passwordValue: String,
        avatarValue: String,
        nicknameValue: String,
        idStringValue: String
    ) -> cLxodc3PrAw9Bsp0US {
        var listValue = readAll()
        let nextIdValue = (listValue.map(\.gjoUb8530s4Tn).max() ?? 0) + 1

        let userValue = cLxodc3PrAw9Bsp0US(
            gjoUb8530s4Tn: nextIdValue,
            x7J9D6yjgssSG1H6jD4fLKvAxRJX: normalizeMail(emailValue),
            fy7ZlFRsziI2aZJjpAl: passwordValue,
            skR5uKm8o7OZ: avatarValue,
            fWo9s9qMVKRWTU3ec1HGXrlWe: nicknameValue,
            nvPAT: idStringValue,
            vHuSwBXuD9Q: 0,
            cEAKRsFPVcziDPDf8C0K4lg: 0,
            uW67exDxDJqRnHcaUo5AhS6HBKC: [],
            vN3Zt2Tq12njX09eG: [],
            hqzcmxfxps: [],
            d0LJcIHdCX: 0
        )

        listValue.append(userValue)
        saveAll(listValue)
        saveCurrent(userValue)
        return userValue
    }

    @discardableResult
    static func createDriftEntryValue() -> cLxodc3PrAw9Bsp0US {
        createEntryValue(
            emailValue: DawnFoldDesk.releaseValue("jar/murWRUjRC2bWDv5juQ==") + "\(UUID().uuidString.lowercased())\(driftTailValue)",
            passwordValue: "",
            avatarValue: "tgQTWvR1yoIdmGoi",
            nicknameValue: DawnFoldDesk.releaseValue("KA90QRHk7Jy/t4kA39khCw=="),
            idStringValue: randomIdValue()
        )
    }

    static func randomIdValue() -> String {
        String(Int.random(in: 100000...999999))
    }

    private static func normalizeMail(_ emailValue: String) -> String {
        emailValue.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    }
}
