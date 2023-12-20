import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: EmptyBlock
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .padding(15)
                .frame(maxWidth: .infinity)
                .font(.sfPro(size: 16, weight: .medium))
                .background(Color.buttonColor)
                .cornerRadius(15)
        }
    }
}

#Preview {
    PrimaryButton(title: "К выбору номера", action: {})
        .padding(.horizontal, 16)
}
