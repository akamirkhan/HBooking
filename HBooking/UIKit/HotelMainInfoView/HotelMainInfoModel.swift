import Foundation

struct HotelMainInfoModel {
    let rating: String
    let name: String
    let address: String
    
    static var example: Self {
        HotelMainInfoModel(
            rating: "5 Превосходно",
            name: "Steigenberger Makadi",
            address: "Madinat Makadi, Safaga Road, Makadi Bay, Египет"
        )
    }
}
