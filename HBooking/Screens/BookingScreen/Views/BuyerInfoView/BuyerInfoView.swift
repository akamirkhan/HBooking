import SwiftUI

struct BuyerInfoView: View {
    @Binding var model: BuyerInfoModel
    
    var body: some View {
        contentView
            .padding(16)
            .background(Color.white)
            .cornerRadius(12)
    }
    
    private var contentView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Информация о покупателе")
                .font(.hTitle)
            
            VStack(alignment: .leading, spacing: 8) {
                EmailTextField(model: $model, title: "Почта")
                descriptionView
            }
        }
    }
    
    private var descriptionView: some View {
        Text("Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту")
            .font(.sfPro(size: 14))
            .foregroundColor(.subtitleColor)
    }

}

#Preview {
    StatefulPreviewWrapper(BuyerInfoModel()) { model in
        ZStack {
            Color.secondaryBackgroundColor
            BuyerInfoView(model: model)
        }
    }
}
