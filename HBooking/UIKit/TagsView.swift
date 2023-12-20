import SwiftUI

struct TagsView: View {
    let tags: [String]
    
    var body: some View {
        FlowLayout(spacing: 8) {
            ForEach(tags, id: \.self) { tag in
                Text(tag)
                    .font(.sfPro(size: 16, weight: .medium))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .foregroundColor(Color.subtitleColor)
                    .background(Color.optionsBackgroundColor)
                    .cornerRadius(5)
            }
        }
    }
}

#Preview {
    TagsView(tags: HotelModel.example.peculiarities)
}
