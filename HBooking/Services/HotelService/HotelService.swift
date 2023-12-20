import Combine

final class HotelService {
    
    private let networkProvider: NetworkProvider
    
    init(networkProvider: NetworkProvider = .init()) {
        self.networkProvider = networkProvider
    }
    
    func getHotel() -> AnyPublisher<HotelDTO, NetworkError> {
        return networkProvider.request(type: HotelDTO.self, endpoint: .hotel)
    }
    
    func getRooms() -> AnyPublisher<RoomDTO.Container, NetworkError> {
        return networkProvider.request(type: RoomDTO.Container.self, endpoint: .rooms)
    }
    
    func getTour() -> AnyPublisher<TourDTO, NetworkError> {
        return networkProvider.request(type: TourDTO.self, endpoint: .tour)
    }

}
