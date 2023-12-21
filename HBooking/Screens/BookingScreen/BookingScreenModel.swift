import Combine

final class BookingScreenModel: ObservableObject {
    
    @Published var model: HotelBookingScreenModel = .example
    @Published var viewState: ViewState = .isLoading
    
    private let coordinator: Coordinator
    private let hotelService: HotelService
    private var cancellable: AnyCancellable?
    let fieldsValidator = PassthroughSubject<Void, Never>()
    
    init(coordinator: Coordinator, hotelService: HotelService = .init()) {
        self.coordinator = coordinator
        self.hotelService = hotelService
        
        getTour()
    }
    
    func getTour() {
        viewState = .isLoading
        
        cancellable = hotelService.getTour()
            .sink { [weak self] result in
                if case .failure(let error) = result {
                    self?.viewState = .error(error)
                }
            } receiveValue: { [weak self] response in
                self?.model = response.hotelBookingScreenModel
                self?.viewState = .content
            }
    }

    func payAction() {
        guard model.tourists.allSatisfy(\.isAllDataValid) else {
            fieldsValidator.send()
            return
        }
        
        coordinator.push(.purchase)
    }
    
    func addNewTourist() {
        model.tourists.append(.init())
    }
    
    func titleForTourist(_ index: Int) -> String {
        "1 Турист"
    }

}
