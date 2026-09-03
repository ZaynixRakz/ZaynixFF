import Foundation

enum AppTab: String, CaseIterable {
    case home = "Home"
    case tools = "Tools"
    case library = "Library"
    case clean = "Clean"
    case settings = "Settings"

    var icon: String {
        switch self {
        case .home: return "house.fill"
        case .tools: return "slider.horizontal.3"
        case .library: return "shippingbox.fill"
        case .clean: return "trash.fill"
        case .settings: return "gearshape.fill"
        }
    }
}

struct GameTarget: Identifiable {
    let id = UUID()
    let name: String
    let packageID: String
    let edition: String
}

struct LicenseInfo {
    let status = "Activated"
    let expiry = "30 Sep 2026"
    let distributor = "ZAYNIX"
    let installationID = "ZYNX-7F2A-91C4-6B80"
}
