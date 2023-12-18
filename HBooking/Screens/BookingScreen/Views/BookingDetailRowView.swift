//
//  BookingDetailRowView.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 17.12.2023.
//

import SwiftUI

struct Test: Identifiable {
    let id = UUID()
    let title: String
    let value: String
    
//    var uiModel: Model {
//        var tests = [
//            Test(title: "Ttes", value: hotel),
//            Test(title: "Ttes", value: hotel),
//            Test(title: "Ttes", value: hotel),
//            Test(title: "Ttes", value: hotel),
//        ]
//
//
//        return Model(tests: tests)
//    }
}


struct BookingDetailRowView: View {
//    let data: [Test] = []
    
    var body: some View {
//        List(data) { item in
            HStack(alignment: .top) {
                Text("item.title")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.subtitleColor)
                Text("item.value")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .font(.sfPro(size: 16))
            .listRowSeparator(.hidden)
//        }
//        .listStyle(.plain)
    }
}

struct BookingDetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        BookingDetailRowView()
    }
}
