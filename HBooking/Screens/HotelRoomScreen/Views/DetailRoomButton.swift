//
//  DetailRoomButton.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 17.12.2023.
//

import SwiftUI

struct DetailRoomButton: View {
    var body: some View {
        Button {} label: {
            HStack(spacing: 12) {
                Text("Подробнее о номере")
                    .font(.sfPro(size: 16, weight: .medium))
                Image("vector")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 6, height: 12)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .foregroundColor(.buttonColor)
            .background(Color.detailButtonColor)
            .cornerRadius(5)
        }
        .disabled(false)
    }
}

struct DetailRoomButton_Previews: PreviewProvider {
    static var previews: some View {
        DetailRoomButton()
    }
}
