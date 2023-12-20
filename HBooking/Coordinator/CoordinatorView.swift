import SwiftUI

struct CoordinatorView: View {
    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(screen: .hotel)
                .navigationBarTitleDisplayMode(.inline)
                .navigationDestination(for: Screen.self) { screen in
                    coordinator.build(screen: screen)
                }
        }
        .tint(.black)
    }

}

#Preview {
    CoordinatorView()
}
