import SwiftUI

struct LibraryView: View {
    @State private var packages = ["Zaynix Profile", "Performance Profile"]

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    Header(title: "Library")

                    SectionLabel(text: "Workspace Packages")

                    ZCard {
                        HStack {
                            IconBadge(systemName: "shippingbox.fill")
                            VStack(alignment: .leading) {
                                Text("\(packages.count) packages")
                                    .font(.system(size: 19, weight: .bold))
                                Text("Local workspace library")
                                    .foregroundStyle(ZTheme.secondary)
                            }
                            Spacer()
                            Button { packages.append("New Zaynix Package") } label: {
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 25))
                                    .foregroundStyle(.blue)
                            }
                        }
                    }

                    ForEach(packages, id: \.self) { package in
                        ZCard {
                            HStack {
                                Image(systemName: "cube.box.fill")
                                    .font(.system(size: 25))
                                    .foregroundStyle(.blue)
                                VStack(alignment: .leading, spacing: 5) {
                                    Text(package)
                                        .font(.system(size: 18, weight: .bold))
                                    Text("Protected workspace item")
                                        .font(.system(size: 14))
                                        .foregroundStyle(ZTheme.secondary)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(ZTheme.secondary)
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
