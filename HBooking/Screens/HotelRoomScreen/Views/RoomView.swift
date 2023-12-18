//
//  RoomView.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 17.12.2023.
//

import SwiftUI

struct RoomView: View {
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        VStack(alignment: .leading, spacing: 8) {
            imageView
            
            TitleTextView(title: "Стандартный с видом на бассейн или сад")
            
            DetailRoomButton()
            
            roomSelectionView
        }
        .padding([.horizontal, .bottom], 16)
        .background(Color.white)
        .cornerRadius(12)
    }
    
    private var imageView: some View {
        Image("")
            .resizable()
            .frame(height: 257)
            .scaledToFill()
            .frame(maxWidth: .infinity)
            .background(Color.red)
            .cornerRadius(15)
    }
    
    private var roomSelectionView: some View {
        VStack(alignment: .leading, spacing: 16) {
            priceView
            
            SelectButton(title: "Выбрать номер") {}
        }
        .padding(.top, 8)
    }
    
    private var priceView: some View {
        HStack(alignment: .bottom, spacing: 8) {
            Text("135555 ₽")
                .font(.sfPro(size: 30, weight: .semibold))
            
            Text("за 7 ночей с перелётом")
                .font(.sfPro(size: 16))
                .foregroundColor(.subtitleColor)
                .padding(.bottom, 3)
        }
    }
    
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView()
    }
}
