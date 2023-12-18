//
//  PriceView.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 16.12.2023.
//

import SwiftUI

struct PriceView: View {
    
    let minPrice: String
    let subtitle: String
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        HStack(alignment: .bottom, spacing: 8) {
            priceView
            
            Text(subtitle)
                .font(.sfPro(size: 16))
                .foregroundColor(.subtitleColor)
                .padding(.bottom, 3)
        }
    }
    
    private var priceView: some View {
        HStack(alignment: .bottom, spacing: 8) {
            Text("от \(minPrice) ₽")
        }
        .font(.sfPro(size: 30, weight: .semibold))
    }
    
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView(minPrice: "135555", subtitle: "за тур с перелётом")
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
    }
}
