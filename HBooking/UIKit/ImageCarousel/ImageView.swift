import SwiftUI
import Kingfisher

struct ImageView: View {
    @State private var isFailed = false
    let url: URL
    
    var body: some View {
        if isFailed {
            ZStack {
                Color.secondaryBackgroundColor
                Image(systemName: "photo.fill")
                    .font(.system(size: 50, weight: .medium))
            }
        } else {
            KFImage(url)
                .resizable()
                .placeholder { _ in
                    ProgressView()
                }
                .onFailure { _ in
                    isFailed = true
                }
        }
    }
}

#Preview {
    ImageView(url: HotelModel.example.imageURLs.first!)
}
