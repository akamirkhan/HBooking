//
//  BookingScreen.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 17.12.2023.
//

import SwiftUI

struct BookingScreen: View {
    
    @StateObject var viewModel: BookingScreenModel
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        ScrollView {
            InfoHotelView()
                .padding(.horizontal, 16)
                .background(Color.white)
                .cornerRadius(12)
            BuyerInfoView(viewModel: viewModel)
        }
        .background(Color.secondaryBackgroundColor)
    }
}

struct BookingScreen_Previews: PreviewProvider {
    static var previews: some View {
        BookingScreen(viewModel: .init())
    }
}
