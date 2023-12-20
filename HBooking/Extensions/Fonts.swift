import SwiftUI

extension Font {
    static func sfPro(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        Font.system(size: size, weight: weight)
    }
    
    static var hTitle: Font {
        self.sfPro(size: 22, weight: .medium)
    }
}
