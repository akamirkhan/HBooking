import SwiftUI
import Combine

final class TextFieldViewModel: ObservableObject {
    @Published var hasError = false
    @Published var text: String
    
    private var cancellable: AnyCancellable?
    let title: String
    let fieldsValidator: PassthroughSubject<Void, Never>
    
    init(title: String, text: String, fieldsValidator: PassthroughSubject<Void, Never>) {
        self.text = text
        self.title = title
        self.fieldsValidator = fieldsValidator
        
        cancellable = fieldsValidator.sink { [unowned self] _ in
            hasError = text.isEmpty
        }
    }
}
