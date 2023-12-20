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
        ScrollView {
            VStack(spacing: 16) {
                HotelHeaderView(model: viewModel.model)
                HotelContentView(model: viewModel.model)
                selectRoomButton
            }
        }
    }
    
    private var selectRoomButton: some View {
        VStack {
            Divider()
            PrimaryButton(title: "К выбору номера", action: viewModel.selectRoomAction)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
        }
        .background(Color.white)
    }

}

#Preview {
    NavigationView {
        HotelScreen(viewModel: .init(coordinator: .init()))
    }
}
