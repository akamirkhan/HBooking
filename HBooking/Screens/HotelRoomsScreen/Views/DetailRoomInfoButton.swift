import SwiftUI

struct DetailRoomInfoButton: View {
    
    var body: some View {
        Button(action: {}) {
            HStack(spacing: 12) {
                Text("Подробнее о номере")
                    .font(.sfPro(size: 16, weight: .medium))
                
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 6, height: 12)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .foregroundColor(.buttonColor)
            .background(Color.detailButtonColor)
            .cornerRadius(5)
        }
    }
}

#Preview {
    DetailRoomInfoButton()
}
