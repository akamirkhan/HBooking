//
//  RowView.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 16.12.2023.
//

import SwiftUI

struct RowView: View {
    
    let row: Row
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        HStack(spacing: 12) {
            Image(row.image)
            textView
            Spacer()
            vectorImageView
        }
    }
    
    private var textView: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(row.title)
                .font(.sfPro(size: 16, weight: .medium))
            
            Text("Самое необходимое")
                .font(.sfPro(size: 14, weight: .medium))
                .foregroundColor(.subtitleColor)
        }
    }
    
    private var vectorImageView: some View {
        Image("vector")
            .resizable()
            .frame(width: 6, height: 12)
    }
    
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(row: .init(image: "happyEmoji", title: "Удобства"))
            .padding(.horizontal, 16)
    }
}
