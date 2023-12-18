//
//  AboutHotelView.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 16.12.2023.
//

import SwiftUI

struct AboutHotelView: View {
    
    let rows = Row.rows
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        VStack(alignment: .leading, spacing: 16) {
            TitleTextView(title: "Об Отеле")
            descriptionView
            rowView
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 16)
        .background(Color.white)
        .cornerRadius(12)
        
    }
   
    private var descriptionView: some View {
        Text("Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!")
            .font(.sfPro(size: 16))
            .foregroundColor(Color.descriptionTextColor)
    }
    
    private var rowView: some View {
        VStack(spacing: 5) {
            ForEach(rows, id: \.id) { row in
                RowView(row: row)
            }
        }
        .padding(.horizontal, 15)
        .background(Color.optionsBackgroundColor)
    }
}

struct AboutHotelView_Previews: PreviewProvider {
    static var previews: some View {
        AboutHotelView()
    }
}
