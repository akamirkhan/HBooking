import SwiftUI

struct BuyerInfoView: View {
    @Binding var phoneNumber: String
    @Binding var email: String
    
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
                TextFieldView(title: "Номер телефона", text: $phoneNumber)
                TextFieldView(title: "Почта", text: $email)
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
    ZStack {
        Color.secondaryBackgroundColor
        BuyerInfoView(phoneNumber: .constant(""), email: .constant(""))
    }
}
