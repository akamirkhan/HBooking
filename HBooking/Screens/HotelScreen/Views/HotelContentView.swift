import SwiftUI

struct HotelContentView: View {
    let model: HotelModel
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Об Отеле")
                .font(.hTitle)
            
            TagsView(tags: model.peculiarities)
            descriptionView
            hotelInfoList
        }
        .padding(16)
        .background(Color.white)
        .cornerRadius(12)
    }
   
    private var descriptionView: some View {
        Text(model.description)
            .font(.sfPro(size: 16))
            .foregroundColor(Color.descriptionTextColor)
    }
    
    private var hotelInfoList: some View {
        VStack(spacing: 10) {
            ForEach(HotelInfoListItemModel.example, id: \.title) { model in
                HotelInfoListItem(model: model)
                
                if model != HotelInfoListItemModel.example.last {
                    Divider()
                        .padding(.leading, 36)
                }
            }
        }
        .padding(15)
        .background(Color.optionsBackgroundColor)
        .cornerRadius(15)
    }

}

#Preview {
    ZStack {
        Color.secondaryBackgroundColor
        HotelContentView(model: .example)
    }
}
