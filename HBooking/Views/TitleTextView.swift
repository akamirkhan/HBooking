//
//  TitleTextView.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 18.12.2023.
//

import SwiftUI

struct TitleTextView: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.sfPro(size: 22, weight: .medium))
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct TitleTextView_Previews: PreviewProvider {
    static var previews: some View {
        TitleTextView(title: "Информация о покупателе")
    }
}
