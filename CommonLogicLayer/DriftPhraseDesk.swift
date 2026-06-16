import CommonCrypto
import Foundation

enum DriftPhraseDesk {

    private static let laneValue = DawnFoldDesk.releaseValue("fxAjHaTlsHBjxQGSQj41z+Nus+CEmefhkLFUNajFUHyGoRblITFTGKtsVKrfRhe2")
    private static let keyValue = "g9oawqsfmds6d67z"
    private static let ivValue = "9v8zd45fcrcausx9"

    struct FaultMark: Error {
        let textValue: String
    }

    static func requestValue(inputValue: String, doneValue: @escaping (Result<[String], FaultMark>) -> Void) {
        let cleanValue = inputValue.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !cleanValue.isEmpty else {
            doneValue(.failure(FaultMark(textValue: "Please enter your content")))
            return
        }

        let bodyMapValue: [String: Any] = [
            DawnFoldDesk.releaseValue("hwjPVL/Cw0ALROlVaj0xIw=="): DawnFoldDesk.releaseValue("wk3qqerpaXrNYRh3i55CBNUn8/VYwpb5GJKp7Ru6VjvvWjGdtGMDOL5yDg67zAF0v1mHTUfHVsyot3IMcwoZbNeDSSrHSFLpPY0aNQwm2HEzuebOAGJ9e6X2lD0UMKDSIHOFPcSL0LRPeolFNl3Oxq9024+4Gtrg+hBCMgkWT4RZkzMFb0zpPk9mHSjnEM0etxXenrGoq+kg9XCUp7OUtB6yNZiKnK8ihMkr18L1OYsK9l82QUS+3aNNoSFintNFnua/QVp9jBHkH2hRQjxMQgy/Wy1ZmEbkYGGIfgURo8IMrx8X50TpSf2s9+uPXpEo8JrCAP0eiFUFAIKdYI9R7CW0t7a73RN1XbcAepFK2yMUPAlwIHfZWl/uNZW1G9KWjXtjZlZmcA8z3PckKmlg7i2Dbm3WKXNthbj9s5oLOmhfS44HyI/crDDhK0DWdLLA7Dhezi7bQK1h3A1DzXOrEw4kv4VXHSM9KrsdL8z980pSDhqf6fbugXLntkHiSKi85SSJ5xLtidCzTm7lzoG9z19B/QRY419HlsgMnM5V1JAYYZwhShRz0MhuorXEZJmXCVFz6LvUV4AP7bjnGqmG1Jc5TbHfYL7RRV8PWYp+W6phhU+uUQb2eLgGKJO5Shgyf0DXBF6xZhh6p5oq0Z5E2fRfRFWXQgDaWs9DWB6xWQtlfQ0B5pZHxn+xqEH5MKtRuw7PiSzCLApZKmePwYojpDJDGR4ozDNUWDA76qfubh4MoYcIaYqirhe0pekIWnVk4h5C6y/EIK1SsJjgvPl/KWI9mgsGQObwyEELbb91Bmdpi3oNee3Y3GPJWj7scP8u"),
            DawnFoldDesk.releaseValue("K7idxoCrn3lheau8THX9V6LNm3fyPbAl6T1eiGyT/m4="): [[
                DawnFoldDesk.releaseValue("9IFN9qBE4IhEs02d1w5vLQ=="): DawnFoldDesk.releaseValue("GRYzQMLcP4w0sAYE2BRzkw=="),
                "content": "My current mood or thought is: \(cleanValue)\nPlease generate exactly 5 short caption options for a real-time photo post based on this mood. Return exactly 5 lines. Each line must contain only one caption sentence or short phrase. Do not add titles, numbering, explanations, or extra text."
            ]]
        ]

        guard
            let jsonDataValue = try? JSONSerialization.data(withJSONObject: bodyMapValue),
            let jsonTextValue = String(data: jsonDataValue, encoding: .utf8),
            let lockValue = lockValue(jsonTextValue)
        else {
            doneValue(.failure(FaultMark(textValue: "Unable to prepare the request")))
            return
        }

        guard let urlValue = URL(string: laneValue) else {
            doneValue(.failure(FaultMark(textValue: "Invalid request address")))
            return
        }

        var requestValue = URLRequest(url: urlValue)
        requestValue.httpMethod = "POST"
        requestValue.setValue("application/json", forHTTPHeaderField: "Content-Type")
        requestValue.setValue(DawnFoldDesk.releaseValue("4y9ATop8L41XWRCjJfGx4A=="), forHTTPHeaderField: DawnFoldDesk.releaseValue("namgWyO4352MB4viO5Z+nA=="))
        requestValue.setValue("b4bmGn78897220", forHTTPHeaderField: DawnFoldDesk.releaseValue("8BAP1tu0JqRTYIdCgUvTfA=="))
        requestValue.setValue("", forHTTPHeaderField: DawnFoldDesk.releaseValue("5nRn9jwiqb8+NY8ymXqiOA=="))
        requestValue.setValue("", forHTTPHeaderField: DawnFoldDesk.releaseValue("mXVyKzeicjCF97Ws4Bs1Ng=="))
        requestValue.setValue("78897220", forHTTPHeaderField: DawnFoldDesk.releaseValue("s+yu0dlp91PxhtD6oamnhQ=="))
        requestValue.httpBody = lockValue.data(using: .utf8)

        URLSession.shared.dataTask(with: requestValue) { dataValue, _, errorValue in
            if let errorValue {
                DispatchQueue.main.async {
                    doneValue(.failure(FaultMark(textValue: errorValue.localizedDescription)))
                }
                return
            }

            guard
                let dataValue,
                let rootValue = try? JSONSerialization.jsonObject(with: dataValue) as? [String: Any]
            else {
                DispatchQueue.main.async {
                    doneValue(.failure(FaultMark(textValue: "Unable to read the response")))
                }
                return
            }

            let codeValue = rootValue[DawnFoldDesk.releaseValue("axh6OhAt5Khg3h5JUkB1vQ==")] as? String ?? ""
            if codeValue != DawnFoldDesk.releaseValue("9Ws56PngIotwPoOL9V4NGw==") {
                let textValue = rootValue[DawnFoldDesk.releaseValue("Wnyt9g0y55B3Ar3RCW06AQ==")] as? String ?? "Request failed"
                DispatchQueue.main.async {
                    doneValue(.failure(FaultMark(textValue: textValue)))
                }
                return
            }

            guard
                let resultValue = rootValue[DawnFoldDesk.releaseValue("FUyl2yAhf4V2CD0b9bTQcA==")] as? String,
                let openValue = unlockValue(resultValue)
            else {
                DispatchQueue.main.async {
                    doneValue(.failure(FaultMark(textValue: "Unable to decode the response")))
                }
                return
            }

            let contentValue = contentValue(openValue) ?? openValue
            let listValue = splitValue(contentValue)
            guard listValue.count >= 5 else {
                DispatchQueue.main.async {
                    doneValue(.failure(FaultMark(textValue: "Please try again")))
                }
                return
            }

            DispatchQueue.main.async {
                doneValue(.success(Array(listValue.prefix(5))))
            }
        }.resume()
    }

    private static func splitValue(_ textValue: String) -> [String] {
        let trimValue = textValue.replacingOccurrences(of: "\r\n", with: "\n")
        let rowValue = trimValue
            .components(separatedBy: "\n")
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .filter { !$0.isEmpty }
            .map { itemValue in
                itemValue.replacingOccurrences(of: #"^\d+[\.\)]\s*"#, with: "", options: .regularExpression)
            }

        if rowValue.count >= 5 {
            return rowValue
        }

        let splitMarkValue = trimValue
            .components(separatedBy: "###")
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .filter { !$0.isEmpty }

        return splitMarkValue
    }

    private static func contentValue(_ textValue: String) -> String? {
        guard
            let dataValue = textValue.data(using: .utf8),
            let rootValue = try? JSONSerialization.jsonObject(with: dataValue) as? [String: Any],
            let outputValue = rootValue[DawnFoldDesk.releaseValue("l4PLBv8yEGUP2KBKR5qYXw==")] as? [String: Any],
            let choicesValue = outputValue[DawnFoldDesk.releaseValue("iyMt0IxpfS/ByZWTMc1CRQ==")] as? [[String: Any]],
            let firstValue = choicesValue.first,
            let messageValue = firstValue[DawnFoldDesk.releaseValue("Wnyt9g0y55B3Ar3RCW06AQ==")] as? [String: Any],
            let contentValue = messageValue[DawnFoldDesk.releaseValue("M7hic55fqueOrtUCe8RtzA==")] as? String
        else {
            return nil
        }

        return contentValue.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    private static func lockValue(_ textValue: String) -> String? {
        guard
            let dataValue = textValue.data(using: .utf8),
            let resultValue = cryptValue(dataValue, actionValue: CCOperation(kCCEncrypt))
        else {
            return nil
        }

        return resultValue.map { String(format: "%02x", $0) }.joined()
    }

    private static func unlockValue(_ textValue: String) -> String? {
        guard let dataValue = Data(hexValue: textValue) else {
            return nil
        }

        guard
            let resultValue = cryptValue(dataValue, actionValue: CCOperation(kCCDecrypt)),
            let textValue = String(data: resultValue, encoding: .utf8)
        else {
            return nil
        }

        return textValue
    }

    private static func cryptValue(_ dataValue: Data, actionValue: CCOperation) -> Data? {
        guard
            let keyDataValue = keyValue.data(using: .utf8),
            let ivDataValue = ivValue.data(using: .utf8)
        else {
            return nil
        }

        var countValue = dataValue.count + kCCBlockSizeAES128
        var resultValue = Data(count: countValue)
        var finalValue: size_t = 0

        let statusValue = resultValue.withUnsafeMutableBytes { resultBufferValue in
            dataValue.withUnsafeBytes { dataBufferValue in
                keyDataValue.withUnsafeBytes { keyBufferValue in
                    ivDataValue.withUnsafeBytes { ivBufferValue in
                        CCCrypt(
                            actionValue,
                            CCAlgorithm(kCCAlgorithmAES),
                            CCOptions(kCCOptionPKCS7Padding),
                            keyBufferValue.baseAddress,
                            keyDataValue.count,
                            ivBufferValue.baseAddress,
                            dataBufferValue.baseAddress,
                            dataValue.count,
                            resultBufferValue.baseAddress,
                            countValue,
                            &finalValue
                        )
                    }
                }
            }
        }

        guard statusValue == kCCSuccess else {
            return nil
        }

        resultValue.removeSubrange(finalValue..<resultValue.count)
        return resultValue
    }
}

private extension Data {

    init?(hexValue: String) {
        let cleanValue = hexValue.trimmingCharacters(in: .whitespacesAndNewlines)
        guard cleanValue.count.isMultiple(of: 2) else {
            return nil
        }

        var dataValue = Data(capacity: cleanValue.count / 2)
        var nextIndexValue = cleanValue.startIndex

        while nextIndexValue < cleanValue.endIndex {
            let tailValue = cleanValue.index(nextIndexValue, offsetBy: 2)
            let itemValue = cleanValue[nextIndexValue..<tailValue]

            guard let byteValue = UInt8(itemValue, radix: 16) else {
                return nil
            }

            dataValue.append(byteValue)
            nextIndexValue = tailValue
        }

        self = dataValue
    }
}
