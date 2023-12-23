import SwiftUI

struct EmailTextField: View {
    @Binding var model: BuyerInfoModel
    
    var body: some View {
        BaseTextField(
            text: $model.email,
            isDataValid: $model.isEmailValid,
            title: "Почта"
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
        EmailTextField(model: model)
    }
}
