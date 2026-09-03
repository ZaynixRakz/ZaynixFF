import SwiftUI

struct RootView: View {
    @State private var selectedTab: AppTab = .home

    var body: some View {
        ZStack(alignment: .bottom) {
            ZTheme.background.ignoresSafeArea()

            Group {
                switch selectedTab {
                case .home: HomeView()
                case .tools: ToolsView()
                case .library: LibraryView()
                case .clean: CleanView()
                case .settings: SettingsView()
                }
            }
            .safeAreaInset(edge: .bottom) {
                BottomBar(selectedTab: $selectedTab)
            }
        }
    }
}

struct BottomBar: View {
    @Binding var selectedTab: AppTab

    var body: some View {
        HStack(spacing: 4) {
            ForEach(AppTab.allCases, id: \.self) { tab in
                Button {
                    withAnimation(.easeInOut(duration: 0.18)) {
                        selectedTab = tab
                    }
                } label: {
                    VStack(spacing: 6) {
                        Image(systemName: tab.icon)
                            .font(.system(size: 22, weight: .semibold))
                        Text(tab.rawValue)
                            .font(.system(size: 12, weight: .semibold))
                    }
                    .foregroundStyle(selectedTab == tab ? ZTheme.accent : ZTheme.secondary)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background {
                        if selectedTab == tab {
                            RoundedRectangle(cornerRadius: 22, style: .continuous)
                                .fill(Color.white.opacity(0.10))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 22, style: .continuous)
                                        .stroke(Color.white.opacity(0.13), lineWidth: 1)
                                )
                        }
                    }
                }
                .buttonStyle(.plain)
            }
        }
        .padding(8)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 36, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 36, style: .continuous)
                .stroke(ZTheme.border, lineWidth: 1)
        )
        .padding(.horizontal, 30)
        .padding(.bottom, 8)
    }
}
