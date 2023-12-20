import Foundation

struct TourDTO: Decodable {
    let hotelName: String
    let hotelAdress: String
    let horating: Int
    let ratingName: String
    let departure: String
    let arrivalCountry: String
    let tourDateStart: String
    let tourDateStop: String
    let numberOfNights: Int
    let room: String
    let nutrition: String
    let tourPrice: Int
    let fuelCharge: Int
    let serviceCharge: Int
}

extension TourDTO {
    var hotelBookingScreenModel: HotelBookingScreenModel {
        let totalPrice = tourPrice + fuelCharge + serviceCharge
        let price = NumberFormatter.currency.string(from: NSNumber(value: totalPrice)) ?? ""
        
        let tourDates = "\(tourDateStart) – \(tourDateStop)"
        let details = [departure, arrivalCountry, tourDates, "\(numberOfNights)", hotelName, room, nutrition].enumerated().map { index, element in
            BookingDetailModel(title: HotelDetails.allCases[index].rawValue, value: element)
        }
        
        let expenses = [tourPrice, fuelCharge, serviceCharge, totalPrice].enumerated().map { index, element in
            BookingDetailModel(
                title: TravelExpenses.allCases[index].rawValue,
                value: NumberFormatter.currency.string(from: NSNumber(value: element)) ?? "",
                foregroundColor: TravelExpenses.allCases[index] == .total ? .buttonColor : .black
            )
        }
        
        return HotelBookingScreenModel(
            mainInfo: HotelMainInfoModel(
                rating: "\(horating) \(ratingName)",
                name: hotelName,
                address: hotelAdress
            ),
            details: details,
            price: price,
            tourists: [.init()],
            expenses: expenses
        )
    }
}
