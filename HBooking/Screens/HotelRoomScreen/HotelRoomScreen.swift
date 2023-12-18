//
//  HotelRoomScreen.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 17.12.2023.
//

import SwiftUI

struct HotelRoomScreen: View {
    var body: some View {
        ScrollView {
            RoomView()
            RoomView()
        }
        .background(Color.secondaryBackgroundColor)
    }
}

struct HotelRoomScreen_Previews: PreviewProvider {
    static var previews: some View {
        HotelRoomScreen()
    }
}
