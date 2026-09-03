import SwiftUI

struct ToolsView: View {
    @State private var selected: GameTarget?

    private let targets = [
        GameTarget(name: "Free Fire", packageID: "com.dts.freefireth", edition: "Standard edition"),
        GameTarget(name: "Free Fire MAX", packageID: "com.dts.freefiremax", edition: "MAX edition")
    ]

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 18) {
                    Header(title: "Tools")

                    SectionLabel(text: selected == nil ? "Select Target" : "Active Profile")

                    Text("Choose a supported game profile for the workspace.")
                        .font(.system(size: 16))
                        .foregroundStyle(ZTheme.secondary)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    ForEach(targets) { target in
                        Button {
                            selected = target
                        } label: {
                            ZCard {
                                HStack(spacing: 18) {
                                    IconBadge(systemName: "gamecontroller.fill")

                                    VStack(alignment: .leading, spacing: 5) {
                                        Text(target.name)
                                            .font(.system(size: 20, weight: .bold))
                                        Text(target.packageID)
                                            .font(.system(size: 14, design: .monospaced))
                                            .foregroundStyle(ZTheme.secondary)
                                        Text(selected?.id == target.id ? "TARGET ACTIVE" : "SELECT TARGET")
                                            .font(.system(size: 13, weight: .bold))
                                            .foregroundStyle(.blue)
                                    }

                                    Spacer()
                                    Image(systemName: selected?.id == target.id ? "checkmark.circle.fill" : "chevron.right")
                                        .foregroundStyle(selected?.id == target.id ? ZTheme.success : ZTheme.secondary)
                                }
                            }
                        }
                        .buttonStyle(.plain)
                    }

                    if let selected {
                        ZCard {
                            VStack(alignment: .leading, spacing: 14) {
                                Text("Profile details")
                                    .font(.system(size: 19, weight: .bold))
                                DetailRow(label: "Game edition", value: selected.edition, icon: "gamecontroller.fill")
                                DetailRow(label: "Target", value: selected.name, icon: "number")
                                DetailRow(label: "Workspace", value: "Ready", icon: "checkmark.seal.fill")
                            }
                        }
                    }
                }
                .padding(.horizontal, 34)
                .padding(.top, 18)
                .padding(.bottom, 30)
            }
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}
