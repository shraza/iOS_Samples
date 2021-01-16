import UIKit

/**
  Logger Strategy Example
 */

let lowerCasedLogger = Logger(strategy: LowerCaseStrategy())
lowerCasedLogger.log(message: "HAsan RaZA")

let upperCasedLogger = Logger(strategy: UpperCaseStrategy())
upperCasedLogger.log(message: "Hasan Raza")

let capitalisedLogger = Logger(strategy: CapitalizedStrategy())
capitalisedLogger.log(message: "hasan raza")

/*
 Payment Strategy Example
 */

let paymentController = PaymentController()
paymentController.pay(amount: 100.0, strategy: PayPalStrategy())
paymentController.pay(amount: 200.0, strategy: StripeStrategy())


/*
 Form Validator Example
 */

let fields:[Validator] = [
    EmailValidator(email: "abc@yahoo.com"),
    PhoneNumberValidator(phoneNumber: "+92123456789")
]

func validate(fields: [Validator]) -> Bool {
    let isValidated = fields.filter({ $0.validate() == false }).count == 0
    return isValidated
}

print("All fields validated? = \(validate(fields: fields))")

