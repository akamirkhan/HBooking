import Combine

final class HotelRoomsScreenModel: ObservableObject {
    
    @Published var rooms: [RoomViewModel] = []
    @Published var viewState: ViewState = .isLoading
    
    private let coordinator: Coordinator
    private let hotelService: HotelService
    private var cancellable: AnyCancellable?
    let hotelName: String
    
    init(coordinator: Coordinator, hotelName: String, hotelService: HotelService = .init()) {
        self.coordinator = coordinator
        self.hotelService = hotelService
        self.hotelName = hotelName
        
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
