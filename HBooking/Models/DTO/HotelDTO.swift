import Foundation

struct HotelDTO: Decodable {
    let name: String
    let adress: String
    let minimalPrice: Int
    let priceForIt: String
    let rating: Int
    let ratingName: String
    let imageUrls: [String]
    let aboutTheHotel: AboutTheHotel
}

struct AboutTheHotel: Decodable {
    let description: String
    let peculiarities: [String]
}

extension HotelDTO {
    var hotelModel: HotelModel {
        let price = NumberFormatter.currency.string(from: NSNumber(value: minimalPrice)) ?? ""
        
        return HotelModel(
            mainInfo: HotelMainInfoModel(rating: "\(rating) \(ratingName)", name: name, address: adress),
            priceModel: PriceViewModel(price: "от \(price)", description: priceForIt),
            description: aboutTheHotel.description,
            peculiarities: aboutTheHotel.peculiarities,
            imageURLs: imageUrls.compactMap(URL.init)
        )
    }
}

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.locale = Locale(identifier: "ru_RU")
        formatter.numberStyle = .currency
        formatter.currencySymbol = Locale(identifier: "ru_RU").currencySymbol
        
        return formatter
    }
}
