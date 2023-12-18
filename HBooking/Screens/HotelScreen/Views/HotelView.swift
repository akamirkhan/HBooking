//
//  HotelView.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 16.12.2023.
//

import SwiftUI

struct HotelView: View {
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        VStack(alignment: .leading, spacing: 0) {
            imageView
            
            InfoHotelView()
            
            PriceView(minPrice: "135555", subtitle: "за тур с перелётом")
        }
        .padding(.horizontal, 16)
        .background(Color.white)
        .cornerRadius(12)
    }
    
    private var imageView: some View {
        Image("")
            .resizable()
            .scaledToFill()
            .frame(height: 257)
            .frame(maxWidth: .infinity)
            .background(Color.red)
            .cornerRadius(15)
    }
}

struct HotelView_Previews: PreviewProvider {
    static var previews: some View {
        HotelView()
    }
}
