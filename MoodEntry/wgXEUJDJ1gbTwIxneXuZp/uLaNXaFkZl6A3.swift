import Foundation
import CommonCrypto

enum DawnFoldDesk {

    private static let keyValue = "dXoIYAH0RbW2yzjLlItQoFR4Vzy8Affm"
    private static let ivValue = "v5Yy6Y3xDhLcunUy"

    static func releaseValue(_ sourceValue: String) -> String {
        guard
            let dataValue = Data(base64Encoded: sourceValue.trimmingCharacters(in: .whitespacesAndNewlines)),
            let resultValue = blendValue(dataValue, actionValue: CCOperation(kCCDecrypt))
        else {
            return ""
        }

        return String(data: resultValue, encoding: .utf8) ?? ""
    }

    private static func blendValue(_ dataValue: Data, actionValue: CCOperation) -> Data? {
        guard
            let keyDataValue = keyValue.data(using: .utf8),
            let ivDataValue = ivValue.data(using: .utf8)
        else {
            return nil
        }

        let countValue = dataValue.count + kCCBlockSizeAES128
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
