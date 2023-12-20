import SwiftUI

struct AddTouristButton: View {
    let action: EmptyBlock
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text("Добавить туриста")
                    .font(.hTitle)
                
                Spacer()
                plusView
            }
            .padding(.vertical, 13)
            .padding(.horizontal, 16)
            .background(Color.white)
            .cornerRadius(12)
        }
        .foregroundColor(.black)
    }
    
    private var plusView: some View {
        Image(systemName: "plus")
            .font(.system(size: 16, weight: .bold))
            .foregroundColor(.white)
            .frame(width: 32, height: 32)
            .background(Color.buttonColor)
            .cornerRadius(6)
    }

}

#Preview {
    ZStack {
        Color.secondaryBackgroundColor
        AddTouristButton {}
    }
}
