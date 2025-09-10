Groundwater Conservation & Management - Flutter Prototype
--------------------------------------------------------

This repository contains a minimal Flutter app skeleton with these screens:
- Splash Screen
- Login Page (Firebase Auth hooks included but not configured)
- Game Dashboard
- Progress Tracking
- User Profile

How to build APK (locally):
1. Install Flutter SDK: https://flutter.dev/docs/get-started/install
2. From this project root, run:
   flutter pub get
   flutter build apk --release

Firebase:
- The project includes firebase_core and firebase_auth in pubspec.yaml.
- Configure your Android & iOS Firebase apps and add the google-services files before using Firebase features.

Notes:
- This ZIP does NOT include a compiled APK because building requires the Flutter toolchain and Android SDK.
- If you want, I can provide GitHub Actions / Codemagic CI YAML to auto-build an APK when you push this repo.

