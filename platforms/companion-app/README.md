# AutoApp Flutter Companion

The companion phone app for AutoApp Android Auto application.

## Purpose

This Flutter app provides:
- Full settings and configuration interface
- Content browsing and management
- Account management
- Preferences that sync to the Android Auto app

## Getting Started

From this directory:

```bash
# Install dependencies
flutter pub get

# Run on device/emulator
flutter run

# Run tests
flutter test

# Build release
flutter build apk --release
```

## Architecture

```
lib/
├── main.dart           # Entry point
├── models/             # Data models
├── screens/            # UI screens
├── widgets/            # Reusable widgets
├── services/           # Business logic, sync services
├── providers/          # State management
└── utils/              # Utilities and helpers
```

## Features

- Settings management
- Content library
- Sync with Android Auto app
- Account authentication
- Preferences

## Integration with Android Auto

Settings are synced via:
- SharedPreferences (local)
- Cloud backend (for multi-device)

The Android Auto app reads these settings when connected.

## Development

See [../docs/CONTRIBUTING.md](../docs/CONTRIBUTING.md) for development guidelines.
