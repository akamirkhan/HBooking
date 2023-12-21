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
        VStack(spacing: 0) {
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
                }
            }
            
            PinnedButton(title: "Оплатить \(viewModel.model.price)", action: viewModel.payAction)
        }
    }
    
    private var touristsView: some View {
        VStack(spacing: 8) {
            ForEach(viewModel.model.tourists.indices, id: \.self) { index in
                TouristView(
                    model: $viewModel.model.tourists[index],
                    title: viewModel.titleForTourist(index),
                    fieldsValidator: viewModel.fieldsValidator
                )
            }
        }
    }
    
}

#Preview {
    BookingScreen(viewModel: .init(coordinator: .init()))
}
