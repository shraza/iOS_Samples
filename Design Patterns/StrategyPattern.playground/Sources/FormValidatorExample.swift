import Foundation

public protocol Validator {
    func validate() -> Bool
}

public struct EmailValidator: Validator {
    public let email: String
    
    public init(email: String) {
        self.email = email
    }
    
    public func validate() -> Bool {
        return true
    }
}

public struct PhoneNumberValidator: Validator {
    public let phoneNumber: String
    
    public init(phoneNumber: String) {
        self.phoneNumber = phoneNumber
    }
    
    public func validate() -> Bool {
        return false
    }
}
