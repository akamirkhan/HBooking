//
//  Row.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 16.12.2023.
//

import Foundation

struct Row: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    
    static var rows: [Row] {
        [
            Row(image: "happyEmoji", title: "Удобства"),
            Row(image: "checkMark", title: "Что включено"),
            Row(image: "x.icon", title: "Что не включено")
        ]
    }
}
