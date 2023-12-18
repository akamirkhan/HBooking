//
//  Tourist.swift
//  HBooking
//
//  Created by Amirkhan Akaev on 18.12.2023.
//

import SwiftUI

struct Tourist: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let dateBirth: String
    let citizenship: String
    let passportNumber: String
    let passportValidityPeriod: String
}
