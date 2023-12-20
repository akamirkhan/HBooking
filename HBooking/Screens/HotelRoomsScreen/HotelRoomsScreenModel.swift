import Combine

final class HotelRoomsScreenModel: ObservableObject {
    
    @Published var rooms: [RoomViewModel] = []
    @Published var viewState: ViewState = .isLoading
    
    private let coordinator: Coordinator
    private let hotelService: HotelService
    private var cancellable: AnyCancellable?
    
    init(coordinator: Coordinator, hotelService: HotelService = .init()) {
        self.coordinator = coordinator
        self.hotelService = hotelService
        
        getRooms()
    }
    
    func getRooms() {
        viewState = .isLoading
        
        cancellable = hotelService.getRooms()
            .sink { [weak self] result in
                if case .failure(let error) = result {
                    self?.viewState = .error(error)
                }
            } receiveValue: { [weak self] response in
                self?.rooms = response.roomViewModels
                self?.viewState = .content
            }
    }
    
    func chooseRoomAction() {
        coordinator.push(.booking)
    }
    
}
