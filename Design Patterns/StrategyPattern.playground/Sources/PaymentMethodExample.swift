import Foundation

public protocol PaymentStrategy {
    func pay(amount: Double)
}

public struct PayPalStrategy: PaymentStrategy {
    
    public init() {}
    
    public func pay(amount: Double) {
        print("\(amount) paid via PayPal")
    }
}

public struct StripeStrategy: PaymentStrategy {
    
    public init() {}
    
    public func pay(amount: Double) {
        print("\(amount) paid via Stripe")
    }
}

public struct PaymentController {
    
    public init() {}
    
    public func pay(amount: Double, strategy: PaymentStrategy) {
        strategy.pay(amount: amount)
    }
}





