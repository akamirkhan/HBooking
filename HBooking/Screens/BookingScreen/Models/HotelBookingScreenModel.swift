import Foundation

struct HotelBookingScreenModel {
    var phoneNumber: String = ""
    var email: String = ""
    let mainInfo: HotelMainInfoModel
    let details: [BookingDetailModel]
    let price: String
    var tourists: [TouristModel]
    var expenses: [BookingDetailModel]
    
    static var example: Self {
        HotelBookingScreenModel(
            mainInfo: .example,
            details: BookingDetailModel.details,
            price: "186 600 ₽",
            tourists: [.example],
            expenses: BookingDetailModel.expenses
        )
    }
}
