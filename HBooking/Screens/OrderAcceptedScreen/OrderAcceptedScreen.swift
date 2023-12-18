//
//  OrderAcceptedScreen.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 17.12.2023.
//

import SwiftUI

struct OrderAcceptedScreen: View {
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        VStack(spacing: 32) {
            imageView
            textView
            SelectButton(title: "Супер") {}
        }
        .padding(.horizontal, 16)
    }
    
    private var imageView: some View {
        Image("PartyPopper")
            .padding(25)
            .background(Color.partyPopperColor)
            .cornerRadius(100)
    }
    
    private var textView: some View {
        VStack(spacing: 20) {
            Text("Ваш заказ принят в работу")
                .font(.sfPro(size: 22, weight: .medium))
            
            Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                .font(.sfPro(size: 16))
                .foregroundColor(.subtitleColor)
        }
        .multilineTextAlignment(.center)
    }
}

struct OrderAcceptedScreen_Previews: PreviewProvider {
    static var previews: some View {
        OrderAcceptedScreen()
    }
}
