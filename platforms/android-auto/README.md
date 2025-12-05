# AutoApp Android Auto

Native Kotlin Android Auto application.

## Overview

This is the native Android Auto app that runs on your vehicle's display. It provides a driver-safe interface optimized for in-car use.

## Structure

```
android-auto/
├── app/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/autoapp/auto/
│   │   │   │   ├── MainActivity.kt
│   │   │   │   ├── AutoService.kt        # Android Auto service
│   │   │   │   └── [other classes]
│   │   │   ├── res/                       # Resources
│   │   │   └── AndroidManifest.xml
│   │   └── test/
│   └── build.gradle.kts
├── build.gradle.kts
└── settings.gradle.kts
```

## Building

```bash
# Build debug APK
./gradlew assembleDebug

# Build release APK  
./gradlew assembleRelease

# Install on connected device
./gradlew installDebug
```

## Testing with Desktop Head Unit (DHU)

```bash
# Forward ADB port
adb forward tcp:5277 tcp:5277

# Run DHU
desktop-head-unit
```

## Android Auto Requirements

This app implements:
- `MediaBrowserService` for media apps
- Or `MessagingService` for messaging apps
- Or `NavigationService` for navigation apps

See [Android Auto documentation](https://developer.android.com/training/cars) for details.

## Integration with Companion App

Reads settings from:
- SharedPreferences
- Content provider (shared with companion app)
- Cloud backend API

## Development

Coming soon - Android Auto implementation to be added.

For now, this is a placeholder structure. See [../docs/DEVELOPMENT.md](../docs/DEVELOPMENT.md) for integration plans.
