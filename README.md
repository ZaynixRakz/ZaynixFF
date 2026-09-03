# ZaynixFF — GitHub iOS Build

This repository contains a SwiftUI UI prototype for iOS 16+.

## Build from GitHub Actions

1. Upload the repository contents to GitHub.
2. Open **Actions**.
3. Select **iOS Build**.
4. Choose **Run workflow**.
5. After the run succeeds, download the artifact **ZaynixFF-iOS-build**.

The workflow performs an unsigned device build. An unsigned `.app` is a build artifact, not an installable signed IPA.

## Project identity

- App name: ZAYNIX FF
- Bundle ID: `com.zaynix.ff`
- Deployment target: iOS 16.0+

Do not replace the Bundle ID with another app's identifier.
