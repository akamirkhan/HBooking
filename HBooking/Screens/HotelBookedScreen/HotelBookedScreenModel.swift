import Foundation

final class HotelBookedScreenModel {
    private let coordinator: Coordinator
    let orderNumber: Int
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
        self.orderNumber = Int.random(in: 100000...999999)
    }
    
    func superAction() {
        coordinator.popToRoot()
    }

}
