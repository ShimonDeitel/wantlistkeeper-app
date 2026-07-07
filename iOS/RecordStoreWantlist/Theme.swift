import SwiftUI

/// Record Store Wantlist unique visual theme.
enum Theme {
    static let accent = Color(red: 0.4235, green: 0.2902, blue: 0.7137)
    static let accentSecondary = Color(red: 0.8510, green: 0.7059, blue: 0.2902)
    static let background = Color(red: 0.0784, green: 0.0588, blue: 0.1176)
    static let card = Color(red: 0.1216, green: 0.0902, blue: 0.1882)
    static let textPrimary = Color(red: 0.9451, green: 0.9255, blue: 0.9804)
    static let textMuted = textPrimary.opacity(0.62)

    static let titleFont = Font.system(.title2, design: .serif).weight(.bold)
    static let headlineFont = Font.system(.headline, design: .rounded).weight(.semibold)
    static let bodyFont = Font.system(.body, design: .default)
    static let captionFont = Font.system(.caption, design: .rounded)

    static let cornerRadius: CGFloat = 16
}

struct CardBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Theme.card)
            .cornerRadius(Theme.cornerRadius)
    }
}

extension View {
    func cardStyle() -> some View { modifier(CardBackground()) }
}
