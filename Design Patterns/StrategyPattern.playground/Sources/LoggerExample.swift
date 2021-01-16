import Foundation

public protocol LoggerStrategy {
    func log(message: String)
}

public struct LowerCaseStrategy: LoggerStrategy {
    
    public init() {}
    
    public func log(message: String) {
        print(message.lowercased())
    }
}

public struct UpperCaseStrategy: LoggerStrategy {
    
    public init() {}
    
    public func log(message: String) {
        print(message.uppercased())
    }
}

public struct CapitalizedStrategy: LoggerStrategy {
    
    public init() {}
    
    public func log(message: String) {
        print(message.capitalized)
    }
}

public struct Logger {
    let strategy: LoggerStrategy!
    
    public init(strategy: LoggerStrategy) {
        self.strategy = strategy
    }
    
    public func log(message: String) {
        strategy.log(message: message)
    }
}
