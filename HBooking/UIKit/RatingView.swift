import SwiftUI

struct RatingView: View {
    let rating: String
    
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            Text(rating)
                .font(.sfPro(size: 16, weight: .medium))
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .foregroundColor(.ratingTitleColor)
        .background(Color.ratingBackgroundColor)
        .cornerRadius(5)
    }
}

#Preview {
    RatingView(rating: HotelMainInfoModel.example.rating)
}
