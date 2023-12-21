import SwiftUI

struct TextFieldView: View {
    @FocusState private var isFocused: Bool
    @ObservedObject var viewModel: TextFieldViewModel
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        VStack(alignment: .leading, spacing: 0) {
            titleView
            TextField("", text: $viewModel.text)
                .focused($isFocused)
                .foregroundColor(.textFieldForegroundColor)
                .font(.sfPro(size: 16))
                .onChange(of: isFocused) { _, _ in
                    viewModel.hasError = false
                }
                .placeholder(when: !isFocused) {
                    Text(viewModel.title)
                        .font(.sfPro(size: 17))
                }
        }
        .padding(.leading, 16)
        .frame(height: 52)
        .foregroundColor(.textFieldTitleColor)
        .background(viewModel.hasError ? Color.errorBackgroundColor : Color.textFieldBackgroundColor)
        .cornerRadius(12)
    }
    
    @ViewBuilder
    private var titleView: some View {
        if isFocused {
            Text(viewModel.title)
                .font(.sfPro(size: 12))
        }
    }
    
}

#Preview {
    StatefulPreviewWrapper("") { text in
        TextFieldView(viewModel: .init(title: "Имя", text: "", fieldsValidator: .init()))
            .padding(.horizontal, 16)
    }
}
