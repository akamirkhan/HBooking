import SwiftUI

enum Screen: String, Identifiable, Hashable {
    case hotel, rooms, booking, purchase
    
    var id: String {
        rawValue
    }
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
        case .rooms:
            HotelRoomsScreen(viewModel: .init(coordinator: self))
        case .booking:
            BookingScreen(viewModel: .init(coordinator: self))
        case .purchase:
            HotelBookedScreen(viewModel: .init(coordinator: self))
        }
    }
}
