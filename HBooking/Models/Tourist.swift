import SwiftUI

struct Tourist: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let dateBirth: String
    let citizenship: String
    let passportNumber: String
    let passportValidityPeriod: String
}
