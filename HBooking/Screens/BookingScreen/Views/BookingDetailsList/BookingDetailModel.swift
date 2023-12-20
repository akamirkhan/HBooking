import SwiftUI

struct BookingDetailModel: Identifiable {
    let id = UUID()
    let title: String
    let value: String
    var foregroundColor: Color = .black
    
    static var details: [Self] {
        [
            BookingDetailModel(title: HotelDetails.departure.rawValue, value: "Санкт-Петербург"),
            BookingDetailModel(title: HotelDetails.country.rawValue, value: "Египет, Хургада"),
            BookingDetailModel(title: HotelDetails.room.rawValue, value: "Стандартный с видом на бассейн или сад"),
            BookingDetailModel(title: HotelDetails.nutrition.rawValue, value: "Все включено")
        ]
    }
    
    static var expenses: [Self] {
        [
            BookingDetailModel(title: TravelExpenses.tour.rawValue, value: "186 600 ₽"),
            BookingDetailModel(title: TravelExpenses.fuelSurcharge.rawValue, value: "9 300 ₽"),
            BookingDetailModel(title: TravelExpenses.serviceSurcharge.rawValue, value: "2 136 ₽"),
            BookingDetailModel(title: TravelExpenses.total.rawValue, value: "198 036 ₽", foregroundColor: .buttonColor)
        ]
    }
}
