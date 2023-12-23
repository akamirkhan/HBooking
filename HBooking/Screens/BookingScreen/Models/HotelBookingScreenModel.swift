import Foundation

struct HotelBookingScreenModel {
    var buyerInfoModel: BuyerInfoModel
    let mainInfo: HotelMainInfoModel
    let details: [BookingDetailModel]
    let price: String
    var tourists: [TouristModel]
    var expenses: [BookingDetailModel]
    
    static var example: Self {
        HotelBookingScreenModel(
            buyerInfoModel: .init(),
            mainInfo: .example,
            details: BookingDetailModel.details,
            price: "186 600 ₽",
            tourists: [.example],
            expenses: BookingDetailModel.expenses
        )
    }
}
