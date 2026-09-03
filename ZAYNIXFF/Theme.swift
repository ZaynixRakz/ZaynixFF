import SwiftUI

enum ZTheme {
    static let background = Color(red: 0.015, green: 0.02, blue: 0.027)
    static let card = Color(red: 0.055, green: 0.065, blue: 0.082)
    static let elevated = Color(red: 0.095, green: 0.105, blue: 0.12)
    static let border = Color(red: 0.10, green: 0.15, blue: 0.21)
    static let accent = Color.blue
    static let secondary = Color(red: 0.42, green: 0.51, blue: 0.64)
    static let success = Color.mint
}

struct SectionLabel: View {
    let text: String

    var body: some View {
        Text(text.uppercased())
            .font(.system(size: 15, weight: .bold))
            .tracking(0.6)
            .foregroundStyle(ZTheme.secondary)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ZCard<Content: View>: View {
    @ViewBuilder let content: Content

    var body: some View {
        content
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(ZTheme.card)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .stroke(ZTheme.border, lineWidth: 1)
                    )
            )
    }
}

struct IconBadge: View {
    let systemName: String

    var body: some View {
        Image(systemName: systemName)
            .font(.system(size: 23, weight: .semibold))
            .foregroundStyle(ZTheme.accent)
            .frame(width: 48, height: 48)
    }
}
