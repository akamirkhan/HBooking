import SwiftUI

struct RoomView: View {
    let model: RoomViewModel
    let chooseRoomAction: EmptyBlock
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        VStack(alignment: .leading, spacing: 16) {
            mainInfoView
            additionalInfoView
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(12)
    }
    
    private var mainInfoView: some View {
        VStack(alignment: .leading, spacing: 8) {
            ImageCarousel(imageURLs: model.imageURLs)
            Text(model.name)
                .font(.hTitle)
            TagsView(tags: model.peculiarities)
            DetailRoomInfoButton()
        }
    }
    
    private var additionalInfoView: some View {
        VStack(spacing: 16) {
            PriceView(model: model.priceModel)
            PrimaryButton(title: "Выбрать номер", action: chooseRoomAction)
        }
    }

}

#Preview {
    ZStack {
        Color.secondaryBackgroundColor
        RoomView(model: .example, chooseRoomAction: {})
    }
}
