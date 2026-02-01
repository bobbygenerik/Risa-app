# Technology Stack - Risa IPTV Player

## Programming Languages

### Primary Languages
- **Dart 3.9.2** (minimum 3.2.6) - Flutter application code
- **Kotlin** - Native Android code (MainActivity, ExoPlayer, Whisper plugin)
- **BrightScript** - Roku platform application

### Secondary Languages
- **Python 3.x** - Development tools and utilities
- **Shell Script** - Build and deployment automation
- **C++** - Linux desktop platform code

## Frameworks and SDKs

### Flutter Framework
- **Flutter SDK**: 3.35.7 (minimum 3.2.6)
- **Target Platforms**: Android, iOS, Linux, Windows, macOS, Web
- **Primary Platform**: Android (TV and Mobile)

### Android SDK
- **Target SDK**: 34 (Android 14)
- **Minimum SDK**: 21 (Android 5.0 Lollipop)
- **Build Tools**: Gradle 8.11.1 / 8.12
- **Kotlin Version**: Latest stable (configured in Gradle)

### Native Libraries
- **ExoPlayer** - Android video playback (native integration)
- **Whisper.cpp** - On-device speech recognition (native)
- **SQLite** - Database engine (via sqflite package)

## Core Dependencies

### State Management
```yaml
provider: ^6.1.5+1
```
- ChangeNotifier-based state management
- ProxyProvider for dependent state
- Consumer widgets for reactive UI

### Networking
```yaml
http: ^1.2.0
dio: ^5.7.0
```
- HTTP client with connection pooling
- Request/response interceptors
- Timeout and retry logic
- SSL certificate handling

### Media Playback
```yaml
video_player: ^2.9.2
chewie: ^1.8.5
wakelock_plus: ^1.2.8
```
- Flutter video player with platform views
- Chewie for player UI controls
- Screen wake lock during playback
- Native ExoPlayer integration (Android)

### Database and Storage
```yaml
sqflite: ^2.3.3
shared_preferences: ^2.2.2
path_provider: ^2.1.2
path: ^1.8.3
```
- SQLite for large datasets (playlists, EPG)
- SharedPreferences for settings
- File system access for backups
- Cross-platform path handling

### Image Handling
```yaml
cached_network_image: ^3.3.1
flutter_cache_manager: ^3.4.1
image: ^4.0.17
flutter_svg: ^2.0.7
```
- Network image caching with LRU eviction
- Custom cache management
- Image processing and manipulation
- SVG rendering support

### Parsing and Data
```yaml
xml: ^6.5.0
crypto: ^3.0.7
intl: ^0.20.2
```
- XMLTV EPG parsing
- Hashing and cryptographic functions
- Internationalization and date formatting

### Navigation
```yaml
go_router: ^17.0.1
```
- Declarative routing
- Deep linking support
- Shell routes for persistent navigation
- Custom page transitions

### UI Components
```yaml
animations: ^2.0.11
linked_scroll_controller: ^0.2.0
```
- Shared element transitions
- Synchronized scrolling for EPG grid
- Custom animation curves

### AI and ML
```yaml
google_mlkit_translation: ^0.13.0
google_mlkit_language_id: ^0.13.0
speech_to_text: ^7.3.0
record: ^6.1.2
```
- On-device translation (auto-downloads language packs)
- Language identification
- Speech recognition
- Audio recording for transcription
- Whisper models for offline transcription

### Permissions
```yaml
permission_handler: ^12.0.1
```
- Runtime permission requests
- Permission status checking
- Platform-specific permission handling

### File Picker
```yaml
file_picker: ^10.3.7
```
- File selection dialogs
- Multi-platform file access
- Custom file type filtering

### Localization
```yaml
flutter_localizations: sdk
intl: ^0.20.2
```
- ARB file-based translations
- Generated localization classes
- Date/time formatting per locale

## Development Dependencies

### Testing
```yaml
flutter_test: sdk
sqflite_common_ffi: ^2.3.3
```
- Widget testing framework
- Unit testing utilities
- SQLite FFI for desktop testing
- Mock and stub generation

### Code Quality
```yaml
flutter_lints: ^6.0.0
```
- Dart linting rules
- Flutter-specific lints
- Custom analysis options

### Build Tools
```yaml
flutter_launcher_icons: ^0.14.4
```
- App icon generation
- Adaptive icon support
- Multi-platform icon creation

## Build System

### Flutter Build
```bash
# Development build
flutter run

# Debug APK
flutter build apk --debug

# Profile APK (for performance testing)
flutter build apk --profile

# Release APK
flutter build apk --release

# App Bundle (for Play Store)
flutter build appbundle --release

# Linux desktop
flutter build linux --release

# Web
flutter build web --release
```

### Gradle (Android)
- **Build Script**: Kotlin DSL (`build.gradle.kts`)
- **Gradle Wrapper**: 8.11.1 / 8.12
- **ProGuard**: Enabled for release builds
- **Multidex**: Enabled for API < 21 compatibility

### Icon Generation
```bash
flutter pub run flutter_launcher_icons
```

## Development Commands

### Package Management
```bash
# Install dependencies
flutter pub get

# Update dependencies
flutter pub upgrade

# Outdated packages
flutter pub outdated

# Clean build artifacts
flutter clean
```

### Code Generation
```bash
# Generate localization files
flutter gen-l10n

# Build runner (if needed)
flutter pub run build_runner build --delete-conflicting-outputs
```

### Testing
```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/services/integrated_transcription_service_test.dart

# Run with coverage
flutter test --coverage

# Run custom test script
./scripts/run_all_tests.sh
```

### Analysis
```bash
# Analyze code
flutter analyze

# Format code
dart format lib/ test/

# Fix common issues
dart fix --apply
```

### Device Management
```bash
# List devices
flutter devices

# Run on specific device
flutter run -d <device-id>

# Install APK via ADB
adb install -r build/app/outputs/flutter-apk/app-release.apk

# Attach to device (custom script)
./scripts/attach_device.sh
```

### Debugging
```bash
# Run with verbose logging
flutter run -v

# Enable DevTools
flutter pub global activate devtools
flutter pub global run devtools

# View logs
flutter logs

# ADB logcat (Android)
adb logcat | grep flutter
```

## Platform-Specific Tools

### Android
```bash
# Gradle tasks
cd android && ./gradlew tasks

# Clean Gradle cache
cd android && ./gradlew clean

# Build APK directly
cd android && ./gradlew assembleRelease
```

### Whisper Model Management
```bash
# Download Whisper models
python3 tools/download_whisper_models.py

# Build Whisper for Android
./scripts/build_whisper_android.sh

# Download prebuilt Whisper libraries
./scripts/download_whisper_libs.sh
```

### EPG and Playlist Tools
```bash
# Match M3U playlist with EPG
python3 tools/m3u_epg_fuzzy_matcher.py <playlist_url> <epg_url>

# Xtream EPG matcher
python3 tools/xtream_playlist_epg_matcher.py <server> <username> <password>

# Probe Xtream API
python3 tools/xtream_probe.py <server> <username> <password>

# Inspect EPG file
python3 tools/epg_inspect.py <epg_file_or_url>
```

### Icon Generation
```bash
# Generate app icons
python3 tools/generate_app_icon.py

# Generate complete icon set
python3 tools/generate_complete_icons.py
```

### Roku Development
```bash
# Build Roku package
cd roku && ./build.sh

# Deploy to Roku device
cd roku && ./deploy.sh
```

## Configuration Files

### Flutter Configuration
- **pubspec.yaml** - Package dependencies and assets
- **analysis_options.yaml** - Linting and analysis rules
- **l10n.yaml** - Localization configuration
- **devtools_options.yaml** - DevTools settings

### Android Configuration
- **android/build.gradle.kts** - Project-level Gradle config
- **android/app/build.gradle.kts** - App-level Gradle config
- **android/gradle.properties** - Gradle properties
- **android/local.properties** - Local SDK paths
- **android/app/proguard-rules.pro** - ProGuard rules

### Git Configuration
- **.gitignore** - Ignored files and directories
- **.gitmodules** - Git submodules (if any)

### Firebase (Optional)
- **firebase.json** - Firebase hosting configuration
- **.firebaserc** - Firebase project configuration

## Environment Setup

### Required Tools
1. **Flutter SDK** 3.35.7+
2. **Dart SDK** 3.9.2+ (bundled with Flutter)
3. **Android Studio** or **VS Code** with Flutter extension
4. **Android SDK** with API 34
5. **Java JDK** 17+ (for Gradle)
6. **Python 3.x** (for tools)
7. **Git** (version control)

### Optional Tools
1. **ADB** (Android Debug Bridge)
2. **Firebase CLI** (for web deployment)
3. **Docker** (for model conversion)
4. **Roku Developer Tools** (for Roku development)

### IDE Setup

#### VS Code Extensions
- Flutter
- Dart
- Kotlin
- Python
- BrightScript Language (for Roku)

#### Android Studio Plugins
- Flutter
- Dart
- Kotlin

## Performance Optimization

### Build Optimizations
- **ProGuard/R8**: Code shrinking and obfuscation
- **Split APKs**: Per-ABI APKs for smaller downloads
- **Deferred Components**: Lazy loading of features
- **Tree Shaking**: Unused code elimination

### Runtime Optimizations
- **Image Cache Limits**: Conservative memory usage
- **Isolate Processing**: CPU-intensive tasks off main thread
- **Lazy Loading**: Deferred initialization of services
- **Connection Pooling**: Reuse HTTP connections
- **Circuit Breaker**: Prevent cascading failures

### Memory Management
- **Low Memory Mode**: Detected for Shield/older devices
- **Aggressive GC**: Force garbage collection on startup
- **Image Cache Clearing**: Clear cache on memory pressure
- **Focus Node Pooling**: Reuse focus nodes

## Deployment

### Android APK Server
```bash
# Serve APK for download
python3 apk_server.py

# Alternative server
python3 flutter_apk_server.py

# Served on port 7575
# Download URL: http://<host>:7575/app-profile.apk
```

### Firebase Hosting (Web)
```bash
# Deploy to Firebase
firebase deploy

# Deploy script
./firebase-deploy.sh
```

### Build Scripts
```bash
# Debug build
./build_debug.sh

# Optimized build
./build_optimized.sh

# General deploy script
./deploy.sh
```

## Version Management

### Versioning Scheme
- **Format**: `MAJOR.MINOR.PATCH+BUILD_NUMBER`
- **Current**: `1.9.6+1`
- **Location**: `pubspec.yaml` version field

### Version Checking
```dart
// In code
const currentVersion = '2.0.2';
final prefs = await SharedPreferences.getInstance();
final lastVersion = prefs.getString('app_version');
```

## Logging and Debugging

### Debug Logging
```dart
import 'package:iptv_player/utils/debug_helper.dart';

debugLog('Message');
logToSystem('Message', name: 'RisaFlutter');
```

### Crash Logging
```dart
import 'package:iptv_player/utils/crash_logger.dart';

await CrashLogger.instance.init();
await CrashLogger.instance.logError(error, stack, source: 'flutter');
```

### File Logging
```dart
import 'package:iptv_player/utils/file_logger.dart';

// Logs written to assets/logs/
```

### Performance Monitoring
```dart
import 'package:iptv_player/utils/performance_monitor.dart';
import 'package:iptv_player/utils/startup_probe.dart';

StartupProbe.mark('Checkpoint name');
```

## Security

### SSL Handling
- Custom SSL handler for IPTV providers
- Certificate validation bypass (configurable)
- SSL settings screen for user control

### Data Security
- Local-only storage by default
- No cloud sync (removed)
- Encrypted SharedPreferences (platform-dependent)
- No hardcoded credentials

### Permissions
- Microphone (voice search, optional)
- Storage (backups, optional)
- Internet (required for streaming)
- Wake lock (during playback)

## Continuous Integration

### Analysis
```bash
# Full analysis
flutter analyze > analyze-full.txt

# JSON output
flutter analyze --format=json > analyze-full.json

# Verbose output
flutter analyze --verbose > analyze-full-verbose.txt
```

### Test Results
```bash
# Run tests and save results
flutter test > test_results.txt
```

## Documentation Generation

### Code Documentation
```bash
# Generate dartdoc
dart doc .

# Output in doc/api/
```

### README and Guides
- **README.md** - Main project documentation
- **PRD.md** - Product requirements
- **GETTING_STARTED.md** - Quick start guide
- **SETUP_GUIDE.md** - Detailed setup
- **ANDROID_TV_GUIDE.md** - Android TV specifics
- **AI_MODEL_SETUP_GUIDE.md** - AI feature setup
- **OAUTH_SETUP_GUIDE.md** - OAuth configuration
- **docs/CONTRIBUTING.md** - Contribution guidelines
- **docs/DEVELOPMENT.md** - Development notes
