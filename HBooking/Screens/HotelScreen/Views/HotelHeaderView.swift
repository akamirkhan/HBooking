import SwiftUI

struct HotelHeaderView: View {
    let model: HotelModel
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        VStack(spacing: 16) {
            ImageCarousel(imageURLs: model.imageURLs)
            HotelMainInfoView(model: model.mainInfo)
            PriceView(model: model.priceModel)
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(12, corners: [.bottomLeft, .bottomRight])
    }

}

#Preview {
    ZStack {
        Color.secondaryBackgroundColor
        HotelHeaderView(model: .example)
    }
}
