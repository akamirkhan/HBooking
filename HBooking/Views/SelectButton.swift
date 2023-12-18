//
//  SelectButton.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 16.12.2023.
//

import SwiftUI

struct SelectButton: View {
    
    let title: String
    let action: EmptyBlock
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .foregroundColor(.white)
                .frame(height: 48)
                .frame(maxWidth: .infinity)
                .font(.sfPro(size: 16, weight: .medium))
                .background(Color.buttonColor)
                .cornerRadius(12)
        }
    }
}

struct SelectButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectButton(title: "К выбору номера", action: {})
            .padding(.horizontal, 16)
    }
}
