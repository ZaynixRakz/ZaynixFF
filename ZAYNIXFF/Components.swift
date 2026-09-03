import SwiftUI

struct Header: View {
    let title: String

    var body: some View {
        VStack(spacing: 18) {
            Text(title)
                .font(.system(size: 30, weight: .bold))
                .frame(maxWidth: .infinity)
                .padding(.top, 10)

            Rectangle()
                .fill(ZTheme.border)
                .frame(height: 1)
        }
    }
}

struct DetailRow: View {
    let label: String
    let value: String
    let icon: String
    var valueColor: Color = .white

    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.blue)
                .frame(width: 34)

            VStack(alignment: .leading, spacing: 5) {
                Text(label)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(ZTheme.secondary)
                Text(value)
                    .font(.system(size: 17, weight: .medium))
                    .foregroundStyle(valueColor)
                    .textSelection(.enabled)
            }

            Spacer(minLength: 0)
        }
        .padding(.vertical, 14)
    }
}
