import Combine

final class HotelScreenModel: ObservableObject {
    @Published var model: HotelModel = .example
    @Published var viewState: ViewState = .isLoading
    
    private let coordinator: Coordinator
    private let hotelService: HotelService
    private var cancellable: AnyCancellable?
    
    init(coordinator: Coordinator, hotelService: HotelService = .init()) {
        self.coordinator = coordinator
        self.hotelService = hotelService
        
        getHotel()
    }
    
    func getHotel() {
        viewState = .isLoading
        
        cancellable = hotelService.getHotel()
            .sink { [weak self] result in
                if case .failure(let error) = result {
                    self?.viewState = .error(error)
                }
            } receiveValue: { [weak self] response in
                self?.model = response.hotelModel
                self?.viewState = .content
            }
    }
    
    func selectRoomAction(model: HotelModel) {
        coordinator.push(.rooms(hotel: model.mainInfo.name))
    }
    
}
