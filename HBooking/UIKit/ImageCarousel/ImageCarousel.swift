import SwiftUI

struct ImageCarousel: View {
    @State private var position: Int?
    let imageURLs: [URL]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            GeometryReader { geometry in
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 0) {
                        ForEach(imageURLs.indices, id: \.self) { index in
                            ImageView(url: imageURLs[index])
                                .frame(width: geometry.size.width)
                                .id(index)
                        }
                    }
                    .scrollTargetLayout()
                }
                .scrollTargetBehavior(.paging)
                .scrollPosition(id: $position)
                .onAppear {
                    position = 0
                }
            }
            .frame(height: 257)
            .cornerRadius(15)
            
            pageIndicatorView
                .padding(.bottom, 8)
        }
    }
    
    private var pageIndicatorView: some View {
        HStack(spacing: 4) {
            ForEach(imageURLs.indices, id: \.self) { index in
                Circle()
                    .fill(position == index ? Color.black : Color.gray)
                    .frame(width: 7, height: 7)
            }
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(.white)
        .cornerRadius(5)
    }
}

#Preview {
    ImageCarousel(imageURLs: HotelModel.example.imageURLs)
        .padding()
}
