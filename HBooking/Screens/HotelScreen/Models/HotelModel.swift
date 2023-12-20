import Foundation

struct HotelModel {
    let mainInfo: HotelMainInfoModel
    let priceModel: PriceViewModel
    let description: String
    let peculiarities: [String]
    let imageURLs: [URL]
    
    static var example: Self {
        HotelModel(
            mainInfo: .example,
            priceModel: .example,
            description: "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса.",
            peculiarities: ["3-я линия", "Платный Wi-Fi в фойе", "30 км до аэропорта", "1 км до пляжа"],
            imageURLs: [
                URL(string: "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg")!,
                URL(string: "https://www.atorus.ru/sites/default/files/upload/image/News/56871/%D1%80%D0%B8%D0%BA%D1%81%D0%BE%D1%81%20%D1%81%D0%B8%D0%B3%D0%B5%D0%B9%D1%82.jpg")!,
                URL(string: "https://mmf5angy.twic.pics/ahstatic/www.ahstatic.com/photos/b1j0_roskdc_00_p_1024x768.jpg?ritok=65&twic=v1")!
            ]
        )
    }
}
