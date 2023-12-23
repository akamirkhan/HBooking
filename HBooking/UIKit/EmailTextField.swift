//
//  EmailTextField.swift
//  HBooking
//
//  Created by Ibragim Akaev on 12/23/23.
//

import SwiftUI

struct EmailTextField: View {
    @Binding var model: BuyerInfoModel
    
    let title: String
    
    var body: some View {
        BaseTextField(
            text: $model.email,
            isDataValid: $model.isEmailValid,
            title: title
        ) { isFocused in
            if isFocused {
                model.isEmailValid = true
            } else {
                model.isEmailValid = model.isValidEmail(model.email)
            }
        }
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPredicate.evaluate(with: email)
    }
}

#Preview {
    StatefulPreviewWrapper(BuyerInfoModel()) { model in
        EmailTextField(model: model, title: "Почта")
    }
}
