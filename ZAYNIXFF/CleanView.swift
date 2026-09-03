import SwiftUI

struct CleanView: View {
    @State private var showMessage = false

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    Header(title: "Clean")

                    SectionLabel(text: "Workspace Review")

                    ZCard {
                        VStack(alignment: .leading, spacing: 15) {
                            HStack {
                                IconBadge(systemName: "sparkles")
                                Text("Workspace status")
                                    .font(.system(size: 20, weight: .bold))
                            }

                            DetailRow(label: "Temporary items", value: "12 items", icon: "doc.fill")
                            DetailRow(label: "Cache review", value: "Ready", icon: "arrow.triangle.2.circlepath")
                            DetailRow(label: "Backups", value: "Protected", icon: "lock.fill")
                        }
                    }

                    Button {
                        showMessage = true
                    } label: {
                        Text("Review Workspace")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 18)
                            .background(
                                LinearGradient(colors: [.blue, .cyan],
                                               startPoint: .leading,
                                               endPoint: .trailing),
                                in: RoundedRectangle(cornerRadius: 22, style: .continuous)
                            )
                    }
                    .buttonStyle(.plain)
                }
                .padding(.horizontal, 34)
                .padding(.top, 18)
                .padding(.bottom, 30)
            }
            .toolbar(.hidden, for: .navigationBar)
            .alert("Workspace Review", isPresented: $showMessage) {
                Button("OK", role: .cancel) {}
            } message: {
                Text("UI prototype: no files are modified.")
            }
        }
    }
}
