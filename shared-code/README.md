# Shared Code

This directory contains code shared across all Risa IPTV platforms (Android TV, Android Auto, Companion App).

## Structure

```
shared-code/
├── models/              # Data models
│   ├── channel.dart
│   ├── content.dart
│   ├── program.dart
│   ├── category.dart
│   ├── profile_provider.dart
│   └── saved_playlist.dart
├── services/            # Business logic & API services
│   ├── epg_service.dart
│   ├── m3u_parser_service.dart
│   ├── xtream_codes_service.dart
│   ├── tmdb_service.dart
│   ├── ssl_handler.dart
│   └── service_validator.dart
└── utils/               # Utilities
    ├── app_theme.dart
    └── snackbar_helper.dart
```

## Usage

### In Main App (Android TV)
The main app in `lib/` imports from here as needed.

### In Companion App
```dart
// In platforms/companion-app/pubspec.yaml, add:
dependencies:
  risa_shared:
    path: ../../shared-code

// Then import:
import 'package:risa_shared/models/channel.dart';
import 'package:risa_shared/services/epg_service.dart';
```

### In Android Auto
Reference these Dart models for data synchronization between the companion app and Android Auto's native code.

## What's Shared

### Models
- **Channel**: IPTV channel data model
- **Content**: VOD content (movies/series)
- **Program**: EPG program information
- **Category**: Content categorization
- **Profile**: User profiles
- **SavedPlaylist**: Playlist configuration

### Services
- **EPGService**: Electronic Program Guide data
- **M3UParser**: M3U playlist parsing
- **XtreamCodesService**: Xtream Codes API
- **TMDBService**: TMDB metadata enrichment
- **SSLHandler**: SSL certificate handling
- **ServiceValidator**: Service availability checking

### Utils
- **AppTheme**: Consistent theming across platforms
- **SnackbarHelper**: Unified notification system

## Guidelines

1. **Keep it platform-agnostic**: No platform-specific UI code here
2. **Pure business logic**: Data models, API clients, utilities only
3. **Well-documented**: Add comments for cross-platform usage
4. **Tested**: Add tests for shared code in `shared-code/test/`
5. **Versioned together**: All platforms use the same version

## Adding New Shared Code

1. Place in appropriate directory (`models/`, `services/`, or `utils/`)
2. Ensure no platform-specific dependencies (Flutter widgets, Android APIs, etc.)
3. Update this README
4. Test in at least 2 platforms before committing
