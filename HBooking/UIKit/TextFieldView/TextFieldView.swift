import SwiftUI

struct TextFieldView: View {
    @ObservedObject var viewModel: TextFieldViewModel
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        BaseTextField(
            text: $viewModel.text,
            isDataValid: $viewModel.isDataValid,
            title: viewModel.title
        ) { _ in
            viewModel.isDataValid = true
        }
    }
    
}

#Preview {
    StatefulPreviewWrapper("") { text in
        TextFieldView(viewModel: .init(title: "Имя", text: "", fieldsValidator: .init()) { _ in })
            .padding(.horizontal, 16)
    }
}
