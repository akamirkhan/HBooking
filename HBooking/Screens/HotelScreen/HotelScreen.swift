import SwiftUI

struct HotelScreen: View {
    @StateObject var viewModel: HotelScreenModel
    
    var body: some View {
        viewModel.viewState
            .default(content: contentView, action: viewModel.getHotel)
            .navigationTitle("Отель")
    }
    
    private var contentView: some View {
        ZStack {
            Color.secondaryBackgroundColor
            content
        }
        .background(Color.white.ignoresSafeArea())
    }
    
    private var content: some View {
        VStack(spacing: 0) {
            ScrollView {
                VStack(spacing: 16) {
                    HotelHeaderView(model: viewModel.model)
                    HotelContentView(model: viewModel.model)
                }
            }
            
            PinnedButton(title: "К выбору номера") {
                viewModel.selectRoomAction(model: viewModel.model)
            }
        }
    }
    
}

#Preview {
    NavigationView {
        HotelScreen(viewModel: .init(coordinator: .init()))
    }
}
