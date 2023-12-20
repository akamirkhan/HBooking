import SwiftUI

struct BookingScreen: View {
    
    @StateObject var viewModel: BookingScreenModel
    
    var body: some View {
        viewModel.viewState
            .default(content: contentView, action: viewModel.getTour)
            .background(Color.secondaryBackgroundColor)
            .navigationTitle("Бронирование")
    }
    
    private var contentView: some View {
        ScrollView {
            VStack(spacing: 8) {
                HotelMainInfoView(model: viewModel.model.mainInfo)
                    .padding(16)
                    .background(Color.white)
                    .cornerRadius(12)
                
                BookingDetailsList(details: viewModel.model.details)
                BuyerInfoView(phoneNumber: $viewModel.model.phoneNumber, email: $viewModel.model.email)
                touristsView
                AddTouristButton(action: viewModel.addNewTourist)
                BookingDetailsList(details: viewModel.model.expenses, textAlignment: .trailing)
                payButton
            }
        }
        
    }
    
    private var touristsView: some View {
        VStack(spacing: 8) {
            ForEach(viewModel.model.tourists.indices, id: \.self) { index in
                TouristView(
                    model: $viewModel.model.tourists[index],
                    title: viewModel.titleForTourist(index)
                )
            }
        }
    }
    
    private var payButton: some View {
        VStack {
            Divider()
            PrimaryButton(title: "Оплатить \(viewModel.model.price)", action: viewModel.payAction)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
        }
        .background(Color.white)
    }

}

#Preview {
    BookingScreen(viewModel: .init(coordinator: .init()))
}
