import SwiftUI

struct TextFieldView: View {
    
    let title: String
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title)
                .font(.sfPro(size: 12))
                .foregroundColor(.textFieldTitleColor)
            
            TextField("", text: $text)
                .font(.sfPro(size: 16))
                .foregroundColor(.textFieldForegroundColor)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Color.textFieldBackgroundColor)
        .cornerRadius(12)
    }
}

#Preview {
    StatefulPreviewWrapper("+7 (999) 999-99-32") { text in
        TextFieldView(title: "номер телефона", text: text)
            .padding(.horizontal, 16)
    }
}
