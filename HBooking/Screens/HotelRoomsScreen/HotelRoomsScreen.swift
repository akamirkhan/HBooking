import SwiftUI

struct HotelRoomsScreen: View {
    @StateObject var viewModel: HotelRoomsScreenModel
    
    var body: some View {
        viewModel.viewState
            .default(content: contentView, action: viewModel.getRooms)
            .background(Color.secondaryBackgroundColor)
            .navigationTitle(viewModel.hotelName)
    }
    
    private var contentView: some View {
        ScrollView {
            VStack(spacing: 8) {
                ForEach(viewModel.rooms, id: \.name) { model in
                    RoomView(model: model, chooseRoomAction: viewModel.chooseRoomAction)
                }
            }
        }
    }

}

#Preview {
    HotelRoomsScreen(
        viewModel: .init(
            coordinator: .init(),
            hotelName: "Steigenberger Makadi"
        )
    )
}
