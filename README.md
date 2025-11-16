# IPTV Player

A modern IPTV streaming player application built with Flutter/Dart.

## ⚠️ LEGAL DISCLAIMER & TERMS OF USE

**IMPORTANT - READ CAREFULLY BEFORE USING THIS SOFTWARE**

This IPTV player application is provided as a media player tool for **LEGAL CONTENT ONLY**. By using this software, you agree to the following terms:

### Prohibited Uses
- ❌ **DO NOT** use this app to access pirated, copyrighted, or illegally distributed content
- ❌ **DO NOT** use this app to stream content without proper authorization or licensing
- ❌ **DO NOT** use this app to circumvent geo-restrictions or DRM protections
- ❌ **DO NOT** use this app for any purpose that violates local, state, national, or international laws

### Intended Use
- ✅ Personal IPTV services you have legally subscribed to
- ✅ Content you own or have legal rights to access
- ✅ Public domain or creative commons content
- ✅ Your own self-hosted media streams
- ✅ Legal IPTV provider services with proper licensing

### User Responsibility
**YOU are solely responsible for:**
- Ensuring you have legal rights to access any content through this app
- Complying with all applicable laws and regulations in your jurisdiction
- Any consequences arising from illegal use of this software
- Verifying the legitimacy of your IPTV service provider

### Developer Liability
The developers and contributors of this project:
- Do NOT provide, host, or distribute any content
- Do NOT endorse or support piracy or copyright infringement
- Are NOT responsible for how users choose to use this software
- Assume NO liability for illegal use of this application
- Will cooperate with law enforcement regarding illegal activities

**By using this application, you acknowledge that you have read, understood, and agree to comply with all applicable laws and regulations. The developers reserve the right to refuse service or support to anyone using this software for illegal purposes.**

If you do not agree with these terms, do not use this software.

---

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
