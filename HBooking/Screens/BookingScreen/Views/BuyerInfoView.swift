//
//  BuyerInfoView.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 17.12.2023.
//

import SwiftUI

struct BuyerInfoView: View {
    
    @StateObject var viewModel: BookingScreenModel
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        VStack(spacing: 16) {
            TitleTextView(title: "Информация о покупателе")
            
            textFieldView
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
    }
    
    private var textFieldView: some View {
        VStack(alignment: .leading, spacing: 8) {
            TextFieldView(
                title: "Номер телефона",
                text: $viewModel.phoneNumber
            )
            
            TextFieldView(
                title: "Почта",
                text: $viewModel.mail
            )
            
            Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                .font(.sfPro(size: 14))
                .foregroundColor(.subtitleColor)
        }
    }
}

struct BuyerInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            BuyerInfoView(viewModel: .init())
        }
        .background(Color.secondaryBackgroundColor)
    }
}
