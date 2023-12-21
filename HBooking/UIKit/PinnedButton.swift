import SwiftUI

struct PinnedButton: View {
    
    let title: String
    let action: EmptyBlock
    
    var body: some View {
        VStack {
            Divider()
            PrimaryButton(title: title, action: action)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
        }
        .background(Color.white)
    }
}

#Preview {
    PinnedButton(title: "К выбору номера", action: {})
}
