import SwiftUI

struct HotelInfoListItem: View {
    let model: HotelInfoListItemModel
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        HStack(spacing: 12) {
            Image(model.image)
            descriptionView
            Spacer()
            Image(systemName: "chevron.right")
                .padding(.trailing, 8)
        }
    }
    
    private var descriptionView: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(model.title)
                .font(.sfPro(size: 16, weight: .medium))
            
            Text("Самое необходимое")
                .font(.sfPro(size: 14, weight: .medium))
                .foregroundColor(.subtitleColor)
        }
    }

}

#Preview {
    HotelInfoListItem(model: HotelInfoListItemModel.example.first!)
        .padding(.horizontal, 16)
}
