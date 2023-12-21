import SwiftUI

struct TextFieldView: View {
    
    let title: String
    @Binding var text: String
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        VStack(alignment: .leading, spacing: 0) {
            titleView
            TextField("", text: $text)
                .foregroundColor(.textFieldForegroundColor)
                .placeholder(when: text.isEmpty) {
                    Text(title)
                        .font(.sfPro(size: 17))
                }
                .font(.sfPro(size: 16))
        }
        .padding(.leading, 16)
        .frame(height: 52)
        .foregroundColor(.textFieldTitleColor)
        .background(Color.textFieldBackgroundColor)
        .cornerRadius(12)
    }
    
    @ViewBuilder
    private var titleView: some View {
        if !text.isEmpty {
            Text(title)
                .font(.sfPro(size: 12))
        }
    }
    
}

#Preview {
    StatefulPreviewWrapper("") { text in
        TextFieldView(title: "Номер телефона", text: text)
            .padding(.horizontal, 16)
    }
}
