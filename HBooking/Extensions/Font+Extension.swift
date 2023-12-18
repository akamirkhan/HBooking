//
//  Font+Extension.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 16.12.2023.
//

import SwiftUI

extension Font {
    static func sfPro(size: CGFloat, weight: FontWeight = .regular) -> Font {
        Font.custom("SF Pro Display \(weight.rawValue.capitalized)", size: size)
    }
}
