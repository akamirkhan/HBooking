//
//  HotelScreen.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 16.12.2023.
//

import SwiftUI

struct HotelScreen: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                titleView
                contentView
                SelectButton(title: "К выбору номера") {}
                    .padding(.horizontal, 16)
            }
        }
    }
    
    private var contentView: some View {
        ScrollView {
            HotelView()
            AboutHotelView()
        }
        .background(Color.secondaryBackgroundColor)
    }
    
    private var titleView: some View {
        Text("Отель")
            .font(.system(size: 16, weight: .medium))
    }
    
}

struct HotelScreen_Previews: PreviewProvider {
    static var previews: some View {
        HotelScreen()
    }
}
