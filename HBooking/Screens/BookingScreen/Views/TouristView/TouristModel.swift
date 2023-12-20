import Foundation

struct TouristModel: Identifiable {
    let id = UUID()
    var name: String
    var surname: String
    var birthDate: String
    var citizenship: String
    var passportNumber: String
    var passportValidity: String
    
    static var example: Self {
        TouristModel(
            name: "Иван",
            surname: "Иванов",
            birthDate: "",
            citizenship: "",
            passportNumber: "",
            passportValidity: ""
        )
    }
}

extension TouristModel {
    /// Initializer for creating empty tourist
    init() {
        self.name = ""
        self.surname = ""
        self.birthDate = ""
        self.citizenship = ""
        self.passportNumber = ""
        self.passportValidity = ""
    }
}
