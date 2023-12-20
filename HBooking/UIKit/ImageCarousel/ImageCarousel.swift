import SwiftUI

struct ImageCarousel: View {
    let imageURLs: [URL]
    
    var body: some View {
        VStack {
            TabView {
                ForEach(imageURLs, id: \.self) { url in
                    ImageView(url: url)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        .frame(height: 257)
        .cornerRadius(15)
        .onAppear {
            UIPageControl.appearance().currentPageIndicatorTintColor = .black
            UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
        }
    }
}

#Preview {
    ImageCarousel(imageURLs: HotelModel.example.imageURLs)
        .padding()
}
