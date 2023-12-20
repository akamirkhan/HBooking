import SwiftUI

struct PriceView: View {
    let model: PriceViewModel
    
    var body: some View {
        contentView
    }
    
    private var contentView: some View {
        HStack(alignment: .bottom, spacing: 8) {
            Text(model.price)
                .font(.sfPro(size: 30, weight: .semibold))
            Text(model.description)
                .font(.sfPro(size: 16))
                .foregroundColor(.subtitleColor)
                .padding(.bottom, 3)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    PriceView(model: .example)
        .padding()
}
