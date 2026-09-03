import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 22) {
                    Header(title: "Zaynix FF")

                    ZCard {
                        HStack(spacing: 18) {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(
                                    LinearGradient(
                                        colors: [.blue, .cyan],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                .frame(width: 86, height: 86)
                                .overlay {
                                    Image(systemName: "bolt.shield.fill")
                                        .font(.system(size: 38))
                                        .foregroundStyle(.white)
                                }

                            VStack(alignment: .leading, spacing: 7) {
                                Text("FREE FIRE TOOLKIT")
                                    .font(.system(size: 14, weight: .bold))
                                    .foregroundStyle(.blue)

                                Text("ZAYNIX FF")
                                    .font(.system(size: 31, weight: .bold))

                                Text("A focused workspace for your game profiles, packages, and tools.")
                                    .font(.system(size: 15))
                                    .foregroundStyle(ZTheme.secondary)
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                        }
                    }

                    ZCard {
                        HStack(spacing: 12) {
                            Circle().fill(ZTheme.success).frame(width: 12, height: 12)
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Workspace ready")
                                    .font(.system(size: 20, weight: .bold))
                                Text("Zaynix environment is ready")
                                    .foregroundStyle(ZTheme.secondary)
                            }
                        }
                    }

                    SectionLabel(text: "Quick Launch")

                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 14) {
                        QuickCard(icon: "target", title: "Targets", subtitle: "Choose a game profile")
                        QuickCard(icon: "shippingbox.fill", title: "Library", subtitle: "Manage packages")
                        QuickCard(icon: "sparkles", title: "Cleaner", subtitle: "Review workspace")
                        QuickCard(icon: "gearshape.fill", title: "Settings", subtitle: "Device & access")
                    }

                    Text("ZAYNIX FF  ·  SECURE WORKSPACE")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(ZTheme.secondary)
                        .padding(.vertical, 20)
                }
                .padding(.horizontal, 34)
                .padding(.top, 18)
                .padding(.bottom, 30)
            }
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

struct QuickCard: View {
    let icon: String
    let title: String
    let subtitle: String

    var body: some View {
        ZCard {
            VStack(alignment: .leading, spacing: 13) {
                Image(systemName: icon)
                    .font(.system(size: 25, weight: .semibold))
                    .foregroundStyle(.blue)

                Spacer(minLength: 8)

                Text(title)
                    .font(.system(size: 18, weight: .bold))

                Text(subtitle)
                    .font(.system(size: 14))
                    .foregroundStyle(ZTheme.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .frame(minHeight: 145, alignment: .topLeading)
        }
    }
}
