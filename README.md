# IPTV Player

A modern IPTV streaming player application built with Flutter/Dart.

## Features

- 📺 Live TV streaming with M3U playlist support
- 📖 EPG (Electronic Program Guide) integration
- 🎬 Advanced video player with controls (Chewie)
- 📱 Cross-platform support (Android, iOS, Web, Desktop)
- 💾 Channel favorites and history
- 🔍 Search and filter channels
- 🎨 Modern Material Design UI

## Tech Stack

- **Flutter 3.35.7** / **Dart 3.9.2**
- **video_player** & **chewie** - Video playback
- **provider** - State management
- **dio** & **http** - Network requests
- **shared_preferences** - Local storage
- **xml** - EPG parsing

## Project Structure

```
lib/
├── models/          # Data models (Channel, Playlist, EPG, etc.)
├── services/        # Business logic (M3U parser, EPG service, etc.)
├── providers/       # State management providers
├── screens/         # UI screens
├── widgets/         # Reusable widgets
├── utils/           # Helper functions
└── main.dart        # App entry point
```

## Getting Started

### Prerequisites

- Flutter SDK 3.35.7 or higher
- Dart 3.9.2 or higher

### Installation

1. Clone the repository:
```bash
cd ~/iptv-player
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

### Platform-Specific Setup

#### Android
- Minimum SDK: 21
- Target SDK: 34

#### iOS
- Minimum iOS version: 12.0

#### Web
```bash
flutter run -d chrome
```

#### Desktop (Linux/Windows/MacOS)
```bash
flutter run -d linux    # or windows, macos
```

## Development

### Run in debug mode
```bash
flutter run
```

### Build for production
```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release

# Web
flutter build web --release

# Linux
flutter build linux --release
```

### Code generation (if needed)
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Configuration

Add your M3U playlist URL in the app settings or directly in the code.

Example M3U format:
```
#EXTM3U
#EXTINF:-1 tvg-id="channel1" tvg-name="Channel 1" tvg-logo="logo.png" group-title="News",Channel 1
http://example.com/stream1.m3u8
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License.

## Acknowledgments

- Flutter team for the amazing framework
- Open source community for the packages used in this project
