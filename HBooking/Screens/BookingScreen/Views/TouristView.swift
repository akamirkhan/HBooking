//
//  TouristView.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 18.12.2023.
//

import SwiftUI

struct TouristView: View {
    
    @Binding var selected: Bool
    
    let title: String

    var body: some View {
        HStack {
            TitleTextView(title: title)
            Spacer()
            
            chevronImageView
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 13)
        .padding(.horizontal, 16)
        .onTapGesture {
            selected.toggle()
        }
    }
    
    private var chevronImageView: some View {
        Image(systemName: selected ? "chevron.up" : "chevron.down")
            .resizable()
            .frame(width: 12, height: 6)
            .foregroundColor(.buttonColor)
            .padding(12)
            .background(Color.detailButtonColor)
            .cornerRadius(6)
    }
}

struct TouristView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            TouristView(selected: .constant(true), title: "Первый турист")
                .background(Color.white)
                .cornerRadius(8)
        }
        .background(Color.secondaryBackgroundColor)

    }
}
