import SwiftUI

enum ViewState {
    case error(NetworkError)
    case content
    case isLoading
    
    @ViewBuilder
    func `default`<Content: View>(content: Content, action: @escaping EmptyBlock) -> some View {
        switch self {
        case .content:
            content
        case .isLoading:
            ProgressView()
        case  .error(let error):
            VStack {
                ContentUnavailableView("Error", systemImage: "wifi.exclamationmark", description: Text(error.description))
                PrimaryButton(title: "Update", action: action)
                    .padding()
            }
        }
    }
}
