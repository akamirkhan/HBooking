import SwiftUI

struct HotelBookedScreen: View {
    let viewModel: HotelBookedScreenModel
    
    var body: some View {
        contentView
            .navigationTitle("Заказ оплачен")
    }
    
    private var contentView: some View {
        VStack(spacing: 32) {
            Spacer()
            partyPopperView
            orderInfoView
            Spacer()
            superButton
        }
    }
    
    private var partyPopperView: some View {
        Image("partyPopper")
            .padding(25)
            .background(Color.partyPopperColor)
            .clipShape(Circle())
            .padding(.horizontal, 16)
    }
    
    private var orderInfoView: some View {
        VStack(spacing: 20) {
            Text("Ваш заказ принят в работу")
                .font(.sfPro(size: 22, weight: .medium))
            
            Text("Подтверждение заказа №\(viewModel.orderNumber) может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                .font(.sfPro(size: 16))
                .foregroundColor(.subtitleColor)
        }
        .multilineTextAlignment(.center)
        .padding(.horizontal, 16)
    }
    
    private var superButton: some View {
        VStack {
            Divider()
            PrimaryButton(title: "Супер", action: viewModel.superAction)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
        }
        .background(Color.white)
    }
    
}

#Preview {
    HotelBookedScreen(viewModel: .init(coordinator: .init()))
}
