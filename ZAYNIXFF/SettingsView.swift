import SwiftUI

struct SettingsView: View {
    private let license = LicenseInfo()

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    Header(title: "Settings")

                    SectionLabel(text: "Device & Access")

                    ZCard {
                        HStack(spacing: 18) {
                            RoundedRectangle(cornerRadius: 18)
                                .fill(LinearGradient(colors: [.blue, .cyan], startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(width: 82, height: 82)
                                .overlay {
                                    Image(systemName: "bolt.shield.fill")
                                        .font(.system(size: 35))
                                        .foregroundStyle(.white)
                                }

                            VStack(alignment: .leading, spacing: 6) {
                                Text("ZAYNIX FF")
                                    .font(.system(size: 25, weight: .bold))
                                Text("Private device workspace")
                                    .foregroundStyle(ZTheme.secondary)
                            }
                        }
                    }

                    ZCard {
                        VStack(spacing: 0) {
                            DetailRow(label: "Product", value: "ZAYNIX FF", icon: "checkmark.shield.fill")
                            Divider().opacity(0.15)
                            DetailRow(label: "Version", value: "1.0.0 (1)", icon: "info.circle.fill")
                        }
                    }

                    SectionLabel(text: "License")

                    ZCard {
                        VStack(spacing: 0) {
                            DetailRow(label: "Status", value: license.status, icon: "checkmark.seal.fill", valueColor: ZTheme.success)
                            Divider().opacity(0.15)
                            DetailRow(label: "Expiry", value: license.expiry, icon: "calendar")
                            Divider().opacity(0.15)
                            DetailRow(label: "Distributor", value: license.distributor, icon: "person.2.fill")
                            Divider().opacity(0.15)
                            DetailRow(label: "Installation ID", value: license.installationID, icon: "key.fill")
                        }
                    }

                    SectionLabel(text: "This Device")

                    ZCard {
                        VStack(spacing: 0) {
                            DetailRow(label: "Device model", value: "iPhone", icon: "iphone")
                            Divider().opacity(0.15)
                            DetailRow(label: "Operating system", value: "iOS", icon: "cpu")
                            Divider().opacity(0.15)
                            DetailRow(label: "Local workspace", value: "Ready", icon: "internaldrive.fill")
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
