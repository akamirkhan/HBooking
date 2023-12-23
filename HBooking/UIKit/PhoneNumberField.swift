import SwiftUI

struct PhoneNumberField: View {
    @FocusState private var isFocused: Bool
    @Binding var model: BuyerInfoModel
    
    var body: some View {
        ZStack(alignment: .leading) {
            textFieldView
                .onChange(of: model.phoneNumber) { oldValue, newValue in
                    guard newValue.count <= model.phoneNumberSymbols else {
                        model.phoneNumber = oldValue
                        return
                    }
                }
            
            phoneNumberMaskView
        }
        .onTapGesture {
            isFocused = true
        }
    }
    
    private var textFieldView: some View {
        VStack(alignment: .leading, spacing: 0) {
            titleView
            TextField("", text: $model.phoneNumber)
                .tint(.clear)
                .focused($isFocused)
                .foregroundColor(.clear)
                .font(.sfPro(size: 16))
                .keyboardType(.numberPad)
                .onChange(of: isFocused) { _, isFocused in
                    if isFocused {
                        model.isPhoneValid = true
                    } else {
                        model.isPhoneValid = model.phoneNumber.count == model.phoneNumberSymbols
                    }
                }
                .placeholder(when: !isFocused && model.phoneNumber.isEmpty) {
                    Text("Номер телефона")
                        .font(.sfPro(size: 17))
                }
                
        }
        .padding(.leading, 16)
        .frame(height: 52)
        .foregroundColor(.textFieldTitleColor)
        .background(model.isPhoneValid ? Color.textFieldBackgroundColor : Color.errorBackgroundColor)
        .cornerRadius(12)
    }
    
    @ViewBuilder
    private var phoneNumberMaskView: some View {
        if isFocused || model.phoneNumber.isNotEmpty {
            Text(model.maskedPhoneNumber())
                .padding(.top, 16)
                .padding(.leading, 16)
        }
    }
    
    @ViewBuilder
    private var titleView: some View {
        if model.phoneNumber.isNotEmpty || isFocused {
            Text("Номер телефона")
                .font(.sfPro(size: 12))
        }
    }
}

#Preview {
    StatefulPreviewWrapper(BuyerInfoModel()) { model in
        PhoneNumberField(model: model)
            .padding()
    }
}
