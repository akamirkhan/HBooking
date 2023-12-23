import Foundation

struct BuyerInfoModel {
    let phoneNumberSymbols = 10
    var email = ""
    var phoneNumber = ""
    var isEmailValid = true
    var isPhoneValid = true
    
    var isFieldsValid: Bool {
        isEmailValid && 
        isPhoneValid &&
        phoneNumber.isNotEmpty &&
        email.isNotEmpty
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPredicate.evaluate(with: email)
    }
    
    func maskedPhoneNumber() -> String {
        let mask = "**********"
        let dots = phoneNumber.count > 10 ? phoneNumber : phoneNumber + mask.suffix(mask.count - phoneNumber.count)
        
        let formattedPhoneNumber = "+7 (\(dots.prefix(3))) \(dots.prefix(6).suffix(3))-\(dots.suffix(4).prefix(2))-\(dots.suffix(2))"
        return formattedPhoneNumber
    }
    
    mutating func validateFields() {
        isEmailValid = isValidEmail(email)
        isPhoneValid = phoneNumber.count == phoneNumberSymbols
    }

}
