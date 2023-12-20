import Foundation

struct HotelInfoListItemModel: Hashable {
    let image: String
    let title: String
    
    static var example: [Self] {
        [
            HotelInfoListItemModel(image: "happyEmoji", title: "Удобства"),
            HotelInfoListItemModel(image: "checkMark", title: "Что включено"),
            HotelInfoListItemModel(image: "x.icon", title: "Что не включено")
        ]
    }
}
