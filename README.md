# ZaynixFF

SwiftUI iOS UI prototype.

- iOS 16+
- SwiftUI
- Bundle ID: com.zaynix.ff
- Build workflow: GitHub Actions / macOS

## Build

GitHub Actions runs the workflow in `.github/workflows/ios-build.yml`.

The workflow creates an unsigned `.app` artifact. Apple signing is required for normal iOS installation/distribution.
