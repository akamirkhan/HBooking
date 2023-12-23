import SwiftUI
import Combine

final class TextFieldViewModel: ObservableObject {
    @Published var isDataValid = true
    @Published var text: String
    
    var cancellables: Set<AnyCancellable> = []
    let title: String
    let fieldsValidator: PassthroughSubject<Void, Never>
    
    init(
        title: String,
        text: String,
        fieldsValidator: PassthroughSubject<Void, Never>,
        updateText: @escaping (String) -> Void
    ) {
        self.text = text
        self.title = title
        self.fieldsValidator = fieldsValidator
        
        self.fieldsValidator.sink { [unowned self] _ in
            isDataValid = self.text.isNotEmpty
        }
        .store(in: &cancellables)
        
        $text
            .dropFirst()
            .receive(on: DispatchQueue.main)
            .sink { updatedText in
                updateText(updatedText)
            }
            .store(in: &cancellables)
    }

}
