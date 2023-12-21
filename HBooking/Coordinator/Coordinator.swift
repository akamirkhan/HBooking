import SwiftUI

enum Screen: Hashable {
    case hotel, rooms(hotel: String), booking, purchase
}

final class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    
    func push(_ screen: Screen) {
        path.append(screen)
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    @ViewBuilder
    func build(screen: Screen) -> some View {
        switch screen {
        case .hotel:
            HotelScreen(viewModel: .init(coordinator: self))
        case .rooms(let hotel):
            HotelRoomsScreen(viewModel: .init(coordinator: self, hotelName: hotel))
        case .booking:
            BookingScreen(viewModel: .init(coordinator: self))
        case .purchase:
            HotelBookedScreen(viewModel: .init(coordinator: self))
        }
    }
}
