import SwiftUI

struct HotelMainInfoView: View {
    let model: HotelMainInfoModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            RatingView(rating: model.rating)
            Text(model.name)
                .font(.hTitle)
            locationButton
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var locationButton: some View {
        Button(action: {}) {
            Text(model.address)
                .lineLimit(.zero)
                .font(.sfPro(size: 14, weight: .medium))
                .foregroundColor(.buttonColor)
        }
    }
}

#Preview {
    HotelMainInfoView(model: .example)
        .padding()
}
