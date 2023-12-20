import Foundation

struct PriceViewModel {
    let price: String
    let description: String
    
    static var example: Self {
        PriceViewModel(price: "от 134 673 ₽", description: "за тур с перелётом")
    }
}
