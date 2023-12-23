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
            viewModel.isDataValid = false
        }
    }
    
}

#Preview {
    StatefulPreviewWrapper("") { text in
        TextFieldView(viewModel: .init(title: "Имя", text: "", fieldsValidator: .init()))
            .padding(.horizontal, 16)
    }
}

struct TextFieldFormat {
    
    static func format(_ mask: TextFieldMask, text: String) -> String {
        let numbers = text.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
        var result = text.count == 1 ? "+7" : ""
        var index = numbers.startIndex

        for character in mask.rawValue where index < numbers.endIndex {
            if character == "X" {
                result.append(numbers[index])
                index = numbers.index(after: index)
            } else {
                result.append(character)
            }
        }
        
        return result
    }
}

enum TextFieldMask: String {
    case phone = "+X (XXX) XXX-XX-XX"
    
    var symbols: Int {
        self.rawValue.count
    }
}
