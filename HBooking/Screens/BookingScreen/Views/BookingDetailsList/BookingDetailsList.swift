import SwiftUI

struct BookingDetailsList: View {
    let details: [BookingDetailModel]
    var textAlignment: Alignment = .leading
    
    var body: some View {
        contentView
            .padding(16)
            .background(Color.white)
            .cornerRadius(12)
    }
    
    private var contentView: some View {
        VStack(spacing: 16) {
            ForEach(details) { detail in
                HStack(alignment: .top) {
                    Text(detail.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.subtitleColor)
                    Text(detail.value)
                        .frame(maxWidth: .infinity, alignment: textAlignment)
                        .foregroundColor(detail.foregroundColor)
                }
                .font(.sfPro(size: 16))
            }
        }
    }
}

#Preview {
    ZStack {
        Color.secondaryBackgroundColor
        BookingDetailsList(details: BookingDetailModel.details)
    }
}
