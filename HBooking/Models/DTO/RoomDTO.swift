import Foundation

struct RoomDTO: Decodable {
    let name: String
    let price: Int
    let pricePer: String
    let peculiarities: [String]
    let imageUrls: [String]
}

extension RoomDTO {
    struct Container: Decodable {
        let rooms: [RoomDTO]
        
        var roomViewModels: [RoomViewModel] {
            rooms.map { room in
                let price = NumberFormatter.currency.string(from: NSNumber(value: room.price)) ?? ""
                
                return RoomViewModel(
                    name: room.name,
                    priceModel: PriceViewModel(price: price, description: room.pricePer),
                    peculiarities: room.peculiarities,
                    imageURLs: room.imageUrls.compactMap(URL.init)
                )
            }
        }
    }
}
