import Foundation

struct RoomViewModel {
    let name: String
    let priceModel: PriceViewModel
    let peculiarities: [String]
    let imageURLs: [URL]
    
    static var example: Self {
        RoomViewModel(
            name: "Стандартный с видом на бассейн или сад",
            priceModel: .example,
            peculiarities: ["Все включено", "Кондиционер"],
            imageURLs: [
                URL(string: "https://worlds-trip.ru/wp-content/uploads/2022/10/white-hills-resort-5.jpeg")!,
                URL(string: "https://tour-find.ru/thumb/2/bsb2EIEFA8nm22MvHqMLlw/r/d/screenshot_3_94.png")!
            ]
        )
    }
}
