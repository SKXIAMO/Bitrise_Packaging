import Foundation
import StoreKit

enum MomentChargeEcho {
    case success(Int)
    case cancelled
    case failed(String)
}

final class MomentChargeDesk: NSObject {

    static let shared = MomentChargeDesk()

    private var qvO2sP7dR4mNC8f: SKProductsRequest?
    private var b4rK8oQmY1tV7x: ((MomentChargeEcho) -> Void)?
    private var v3uM0gKpN6eR4d: jl82tnictsGRL1NsrPaF4U2VGQhqh?

    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }

    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func beginCharge(_ itemValue: jl82tnictsGRL1NsrPaF4U2VGQhqh, q7dL2vQm4fN8sP: @escaping (MomentChargeEcho) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            q7dL2vQm4fN8sP(.failed(DawnFoldDesk.releaseValue("lnAH49f31MLunLuppUimgPjgTMjKZ7EOklW4rIVX311DFF3wBAAfaoRMhDHn/O/6")))
            return
        }

        guard v3uM0gKpN6eR4d == nil else {
            q7dL2vQm4fN8sP(.failed(DawnFoldDesk.releaseValue("nyyOrgmQ9CkvP0HWyEV4tmtCLx+dxu2sbDDMKuODEzTwSV3q2N4JUdXiuckfcUQe")))
            return
        }

        v3uM0gKpN6eR4d = itemValue
        b4rK8oQmY1tV7x = q7dL2vQm4fN8sP

        let requestValue = SKProductsRequest(productIdentifiers: [itemValue.qZmRY])
        requestValue.delegate = self
        qvO2sP7dR4mNC8f = requestValue
        requestValue.start()
    }

    private func finishCharge(_ echoValue: MomentChargeEcho) {
        let pulseValue = b4rK8oQmY1tV7x
        qvO2sP7dR4mNC8f = nil
        b4rK8oQmY1tV7x = nil
        v3uM0gKpN6eR4d = nil

        DispatchQueue.main.async {
            pulseValue?(echoValue)
        }
    }
}

extension MomentChargeDesk: SKProductsRequestDelegate {

    nonisolated func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        Task { @MainActor in
            handleProductsResponse(response)
        }
    }

    nonisolated func request(_ request: SKRequest, didFailWithError error: Error) {
        Task { @MainActor in
            handleRequestError(error)
        }
    }
}

extension MomentChargeDesk: SKPaymentTransactionObserver {

    nonisolated func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        Task { @MainActor in
            handleTransactions(queue, transactions: transactions)
        }
    }
}

private extension MomentChargeDesk {

    func handleProductsResponse(_ response: SKProductsResponse) {
        guard let itemValue = v3uM0gKpN6eR4d else {
            finishCharge(.failed(DawnFoldDesk.releaseValue("uNIyFECTU0BanLcyGgidgru2LgRUOq93tf7vCoktzsygFOYLzIJDZLT49Mszd2QF")))
            return
        }

        guard response.invalidProductIdentifiers.isEmpty else {
            finishCharge(.failed(DawnFoldDesk.releaseValue("sk9fy8fWrYZDKoUXVB3yxcw9VbPn0aiVR0tuC35s4cx1jTeFuGxdx0leFBoUexk+")))
            return
        }

        guard let productValue = response.products.first(where: { productValue in
            productValue.productIdentifier == itemValue.qZmRY
        }) else {
            finishCharge(.failed(DawnFoldDesk.releaseValue("sk9fy8fWrYZDKoUXVB3yxcw9VbPn0aiVR0tuC35s4cx1jTeFuGxdx0leFBoUexk+")))
            return
        }

        let paymentValue = SKPayment(product: productValue)
        SKPaymentQueue.default().add(paymentValue)
    }

    func handleRequestError(_ error: Error) {
        let nsErrorValue = error as NSError

        if nsErrorValue.domain == SKErrorDomain,
           nsErrorValue.code == SKError.paymentCancelled.rawValue {
            finishCharge(.cancelled)
            return
        }

        finishCharge(.failed(DawnFoldDesk.releaseValue("wV+Z+InLNhoA9eDv4TC8qxo1Zw/29t1ppxuIqfQLZlweEZKK2ZIfMVn/9b76x2Ih")))
    }

    func handleTransactions(_ queue: SKPaymentQueue, transactions: [SKPaymentTransaction]) {
        for transactionValue in transactions {
            guard let itemValue = v3uM0gKpN6eR4d else {
                if transactionValue.transactionState == .purchased ||
                    transactionValue.transactionState == .failed ||
                    transactionValue.transactionState == .restored {
                    queue.finishTransaction(transactionValue)
                }
                continue
            }

            guard transactionValue.payment.productIdentifier == itemValue.qZmRY else {
                continue
            }

            switch transactionValue.transactionState {
            case .purchased:
                MomentArchiveStore.appendCoinsForCurrent(itemValue.wggdibYUo6Gd7ktQU79O)
                queue.finishTransaction(transactionValue)
                finishCharge(.success(itemValue.wggdibYUo6Gd7ktQU79O))
            case .failed:
                queue.finishTransaction(transactionValue)

                if let errorValue = transactionValue.error as? SKError,
                   errorValue.code == .paymentCancelled {
                    finishCharge(.cancelled)
                } else {
                    finishCharge(.failed(DawnFoldDesk.releaseValue("eFg/+uVky60sAN2XOElyYlAi0YhYCoHgucvNJS/1kG9D9cBRaUNFxYiywOFNYVSw")))
                }
            case .restored:
                queue.finishTransaction(transactionValue)
                finishCharge(.failed(DawnFoldDesk.releaseValue("HycHaU67ne3ldyOU0IdzIIFmV37h+qRJae1E0iXEzyG6sz7rEPNrh0qjG4/r9yDU")))
            case .deferred, .purchasing:
                break
            @unknown default:
                queue.finishTransaction(transactionValue)
                finishCharge(.failed(DawnFoldDesk.releaseValue("eFg/+uVky60sAN2XOElyYlAi0YhYCoHgucvNJS/1kG9D9cBRaUNFxYiywOFNYVSw")))
            }
        }
    }
}
