//
//  InfoHotelView.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 16.12.2023.
//

import SwiftUI

struct InfoHotelView: View {
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        VStack(alignment: .leading, spacing: 8) {
            ratingView
            
            TitleTextView(title: "Steigenberger Makadi")
            
            locationButton
        }
        .padding(.vertical, 16)
        .background(Color.white)
    }
    
    private var ratingView: some View {
        HStack(spacing: 2) {
            Image("ratingIcon")
            Text("5 Превосходно")
                .font(.sfPro(size: 16, weight: .medium))
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .foregroundColor(.ratingTitleColor)
        .background(Color.ratingBackgroundColor)
        .cornerRadius(5)
    }
    
    private var locationButton: some View {
        Button {} label: {
            Text("Madinat Makadi, Safaga Road, Makadi Bay, Египет")
                .lineLimit(.zero)
                .font(.sfPro(size: 14, weight: .medium))
                .foregroundColor(.buttonColor)
        }
        .disabled(false)
    }
}

struct InfoHotelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoHotelView()
            .padding(.horizontal, 16)
    }
}

