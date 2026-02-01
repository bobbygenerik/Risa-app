# Project Structure - Risa IPTV Player

## Root Directory Organization

```
Risa-app/
├── lib/                      # Main Flutter application code
├── android/                  # Native Android platform code
├── linux/                    # Linux desktop platform code
├── web/                      # Web platform assets
├── roku/                     # Roku BrightScript application (separate module)
├── platforms/                # Platform-specific implementations
│   ├── android-auto/         # Native Android Auto app
│   └── companion-app/        # Flutter companion mobile app
├── shared-code/              # Shared Dart code across platforms
├── shared-resources/         # Shared assets and resources
├── assets/                   # Application assets (images, models, logs)
├── test/                     # Unit and widget tests
├── tools/                    # Development and utility scripts
├── scripts/                  # Build and deployment scripts
├── docs/                     # Documentation files
├── plans/                    # Planning and analysis documents
├── packages/                 # Local package overrides
└── [config files]            # pubspec.yaml, analysis_options.yaml, etc.
```

## Flutter Application Structure (`lib/`)

### Core Directories

#### `lib/models/`
Data models representing domain entities:
- `channel.dart` - Channel entity with URL, name, logo, EPG ID
- `program.dart` - EPG program with title, description, time range
- `category.dart` - Channel category/group
- `content.dart` - Generic content model
- `saved_playlist.dart` - Saved playlist configuration
- `download_item.dart` - Download queue item
- `profile_provider.dart` - User profile and preferences

#### `lib/services/`
Business logic and external integrations (40+ services):

**Core Services:**
- `m3u_parser_service.dart` - M3U playlist parsing
- `xtream_codes_service.dart` - Xtream API integration
- `optimized_epg_service.dart` - EPG data management
- `incremental_epg_service.dart` - Incremental EPG loading
- `local_db_service.dart` - SQLite database operations

**Playback Services:**
- `video_player` and `chewie` packages for Flutter playback
- Native ExoPlayer integration via platform channels (Android)

**Metadata Services:**
- `tmdb_service.dart` - The Movie Database API
- `omdb_service.dart` - Open Movie Database API
- `tvdb_service.dart` - TheTVDB API
- `fanart_service.dart` - FanArt.tv integration
- `thesportsdb_service.dart` - Sports metadata
- `sportradar_service.dart` - Sports data provider
- `channel_logo_service.dart` - Channel logo management
- `logo_matching_service.dart` - Logo matching with isolates
- `live_tv_artwork_service.dart` - Artwork selection logic

**AI/ML Services:**
- `whisper_transcription_service.dart` - Speech-to-text
- `whisper_speech_service.dart` - Speech recognition
- `whisper_model_service.dart` - Model management
- `whisper_platform_service.dart` - Platform-specific Whisper
- `whisper_ggml_service.dart` - GGML model support
- `integrated_transcription_service.dart` - Unified transcription
- `mlkit_translation_service.dart` - On-device translation
- `ai_model_manager.dart` - AI model lifecycle management
- `voice_search_service.dart` - Voice search integration

**Optimization Services:**
- `fast_startup_service.dart` - App startup optimization
- `prewarm_service.dart` - Screen prewarming
- `smart_cache_service.dart` - Intelligent caching
- `memory_mapped_file_service.dart` - Memory-mapped I/O
- `parallel_processing_service.dart` - Multi-threaded operations
- `provider_optimization_service.dart` - State optimization
- `smart_learning_engine.dart` - User behavior learning
- `focus_pool_service.dart` - Focus node pooling

**Background Services:**
- `background_sync_service.dart` - Data synchronization
- `background_task_manager.dart` - Task scheduling
- `timer_service.dart` - Timer management

**Storage Services:**
- `backup_service.dart` - Backup/restore functionality
- `local_backup_service.dart` - Local file backup
- `cross_playlist_mapping_service.dart` - Playlist deduplication

**Network Services:**
- `http_client_service.dart` - HTTP client with pooling
- `ssl_handler.dart` - SSL certificate handling
- `image_validation_service.dart` - Image URL validation

**Utility Services:**
- `service_validator.dart` - Service health checks
- `native_capabilities_service.dart` - Platform capability detection

#### `lib/providers/`
State management using Flutter Provider pattern:
- `channel_provider.dart` - Channel list and selection state
- `optimized_channel_provider.dart` - Performance-optimized channel state
- `settings_provider.dart` - App settings and preferences
- `playlist_loader.dart` - Playlist loading logic
- `playlist_isolate.dart` - Isolate-based playlist processing

#### `lib/screens/`
Full-screen UI components (25+ screens):

**Main Screens:**
- `live_tv_screen.dart` - Primary live TV interface
- `live_tv_screen_minimal.dart` - Minimal TV interface
- `epg_screen.dart` - Electronic Program Guide
- `epg_screen_compact.dart` - Compact EPG view
- `search_screen.dart` - Search interface
- `favorites_screen.dart` - Favorites management
- `settings_screen.dart` - Settings interface
- `downloads_screen.dart` - Downloads management

**Video Playback:**
- `enhanced_video_player_screen.dart` - Enhanced player
- `video_player_router.dart` - Player routing logic
- `multi_view_screen.dart.disabled` - Multi-view (disabled)

**Management Screens:**
- `playlist_editor_screen.dart` - Playlist editing
- `playlist_manager_screen.dart` - Playlist management
- `playlist_management_screen.dart` - Playlist operations
- `recordings_screen.dart` - Recordings (placeholder)

**EPG Management:**
- `epg_manager_screen.dart` - EPG configuration
- `epg_diagnostic_screen.dart` - EPG troubleshooting
- `epg_mapping_screen.dart` - Channel-EPG mapping

**AI/Model Screens:**
- `ai_models_screen.dart` - AI model management
- `whisper_models_screen.dart` - Whisper model downloads
- `translation_models_screen.dart` - Translation models

**Utility Screens:**
- `ssl_settings_screen.dart` - SSL configuration
- `debug_screen.dart` - Debug information
- `exit_screen.dart` - Exit confirmation
- `category_screen.dart` - Category browsing

#### `lib/widgets/`
Reusable UI components (40+ widgets):

**Brand Components:**
- `brand_button.dart` - Styled buttons
- `brand_card.dart` - Styled cards
- `brand_badge.dart` - Status badges
- `brand_switch.dart` - Toggle switches
- `brand_text_field.dart` - Input fields
- `brand_fallback_background.dart` - Fallback backgrounds

**TV-Specific Widgets:**
- `tv_focusable.dart` - Focus management wrapper
- `tv_friendly_text_field.dart` - Remote-friendly input
- `focusable_card.dart` - Focusable card component

**Layout Widgets:**
- `main_shell.dart` - Main app shell with navigation
- `sidebar_navigation.dart` - Side navigation bar
- `settings_layout.dart` - Settings screen layout
- `settings_tile_widgets.dart` - Settings tiles

**Content Widgets:**
- `horizontal_channel_row.dart` - Horizontal channel list
- `optimized_channel_list.dart` - Performance-optimized list
- `channel_logo_widget.dart` - Channel logo display
- `program_artwork_widget.dart` - Program artwork
- `hero_panel.dart` - Hero content panel
- `hero_info_box.dart` - Hero information box

**Media Widgets:**
- `chewie_player_widget.dart` - Chewie player wrapper
- `live_subtitle_overlay.dart` - Live subtitle display
- `voice_search_button.dart` - Voice search trigger

**EPG Widgets:**
- `epg_widgets.dart` - EPG-related components
- `epg_mapping_dialogs.dart` - EPG mapping dialogs

**Utility Widgets:**
- `cached_image.dart` - Cached network image
- `optimized_image.dart` - Optimized image loading
- `shimmer.dart` - Shimmer loading effect
- `skeleton_loader.dart` - Skeleton loading state
- `startup_progress_widget.dart` - Startup progress
- `search_popup.dart` - Search popup dialog
- `channel_selection_dialog.dart` - Channel picker
- `legal_disclaimer_dialog.dart` - Legal disclaimer
- `app_dialog.dart` - Generic dialog
- `go_to_settings_button.dart` - Settings navigation
- `whisper_model_manager.dart` - Whisper model UI
- `safe_pop_scope.dart` - Safe back navigation
- `compat_pop_scope.dart` - Compatibility wrapper
- `content_focus_provider.dart` - Focus state provider

**Live TV Widgets (`lib/widgets/live_tv/`):**
Specialized widgets for live TV interface

#### `lib/utils/`
Helper functions and utilities (30+ utilities):

**Theme and Styling:**
- `app_theme.dart` - Application theme definition
- `app_colors.dart` - Color palette
- `app_typography.dart` - Typography system
- `app_spacing.dart` - Spacing constants
- `app_icons.dart` - Icon definitions

**Performance Utilities:**
- `performance_monitor.dart` - Performance tracking
- `startup_probe.dart` - Startup timing
- `memory_manager.dart` - Memory management
- `debouncer.dart` - Debouncing utility
- `throttled_notifier.dart` - Throttled notifications

**Image Utilities:**
- `image_url_helper.dart` - URL manipulation
- `image_failure_cache.dart` - Failed image tracking
- `image_load_probe.dart` - Image load diagnostics
- `logo_image_cache.dart` - Logo caching

**EPG Utilities:**
- `epg_matching_utils.dart` - EPG matching logic
- `program_classifier.dart` - Program classification
- `sports_classifier.dart` - Sports content detection

**Network Utilities:**
- `network_error_logger.dart` - Network error tracking
- `circuit_breaker.dart` - Circuit breaker pattern

**Logging Utilities:**
- `crash_logger.dart` - Crash reporting
- `file_logger.dart` - File-based logging
- `debug_helper.dart` - Debug utilities

**UI Utilities:**
- `tv_focus_helper.dart` - TV focus management
- `snackbar_helper.dart` - Snackbar display
- `snackbar_utils.dart` - Snackbar utilities
- `no_text_selection_controls.dart` - Disable text selection

**Data Utilities:**
- `hash_utils.dart` - Hashing functions
- `provider_normalizer.dart` - Provider name normalization
- `artwork_diagnostics.dart` - Artwork debugging

#### `lib/config/`
Configuration files for external services:
- `tmdb_config.dart` - TMDB API configuration
- `omdb_config.dart` - OMDB API configuration
- `tvdb_config.dart` - TVDB API configuration
- `fanart_config.dart` - FanArt.tv configuration
- `thesportsdb_config.dart` - TheSportsDB configuration
- `sportradar_config.dart` - SportRadar configuration
- `oauth_config.dart` - OAuth configuration

#### `lib/state/`
State management classes:
- `epg_screen_state.dart` - EPG screen state

#### `lib/l10n/`
Localization and internationalization:
- `gen/` - Generated localization files
- `app_en.arb` - English translations

#### `lib/controllers/`
Controller classes (currently empty, reserved for future use)

## Native Android Code (`android/`)

### `android/app/src/main/kotlin/`

**Main Application:**
- `com/risa/app/MainActivity.kt` - Main activity entry point
- `com/risa/app/AutoMediaService.kt` - Android Auto media service

**ExoPlayer Integration:**
- `com/iptvplayer/iptv_player/ExoPlayerView.kt` - Native ExoPlayer view

**Whisper Plugin:**
- `com/risa/iptv/WhisperPlugin.kt` - Native Whisper integration

### Android Configuration:
- `build.gradle` / `build.gradle.kts` - Gradle build scripts
- `proguard-rules.pro` - ProGuard configuration
- `AndroidManifest.xml` - App manifest (in `src/main/`)

## Roku Application (`roku/`)

Separate BrightScript application for Roku platform:
- `source/` - BrightScript source files (parsers, services)
- `components/` - SceneGraph components (screens, tasks)
- `images/` - Roku-specific images and icons
- `manifest` - Roku manifest file
- `channel.xml` - Channel configuration

## Shared Code (`shared-code/`)

Shared Dart code for reuse across platforms:
- `lib/models/` - Shared data models
- `lib/services/` - Shared service interfaces
- `lib/utils/` - Shared utilities
- `risa_shared.dart` - Main export file

## Tools and Scripts

### `tools/`
Python utilities for development:
- `m3u_epg_fuzzy_matcher.py` - EPG matching tool
- `xtream_playlist_epg_matcher.py` - Xtream EPG matcher
- `xtream_probe.py` - Xtream API probe
- `epg_inspect.py` - EPG inspection tool
- `match_playlist_epg.py` - Playlist-EPG matching
- `download_whisper_models.py` - Whisper model downloader
- `export_whisper_to_onnx.py` - Whisper ONNX export
- `convert_onnx_to_tflite.py` - ONNX to TFLite conversion
- `generate_app_icon.py` - App icon generation

### `scripts/`
Shell scripts for build and deployment:
- `build_whisper_android.sh` - Build Whisper for Android
- `download_whisper_libs.sh` - Download Whisper libraries
- `run_all_tests.sh` - Run test suite
- `attach_device.sh` / `run_device.sh` - Device management

## Test Structure (`test/`)

- `services/` - Service unit tests
- `widgets/` - Widget tests
- Root-level test files for providers and utilities
- Benchmark tests for performance validation

## Assets (`assets/`)

- `images/` - App images and logos
- `models/` - AI model files (Whisper models)
- `logs/` - Application log files
- `previews/` - UI mockups and previews

## Documentation (`docs/`)

- `CONTRIBUTING.md` - Contribution guidelines
- `DEVELOPMENT.md` - Development notes
- Various analysis and planning documents
- EPG matching reports and diagnostics

## Architectural Patterns

### State Management
- **Provider Pattern**: Primary state management using `provider` package
- **ChangeNotifier**: For reactive state updates
- **ProxyProvider**: For dependent providers (e.g., ChannelProvider depends on EpgService)

### Service Layer
- **Service Classes**: Business logic separated from UI
- **Singleton Services**: Shared instances for app-wide services
- **Isolate Services**: CPU-intensive operations in separate isolates

### Data Layer
- **SQLite Database**: Large datasets (playlists, EPG)
- **SharedPreferences**: User settings and preferences
- **Memory-Mapped Files**: High-performance file access

### UI Architecture
- **Screen Components**: Full-screen views in `screens/`
- **Widget Components**: Reusable UI pieces in `widgets/`
- **Shell Pattern**: MainShell wraps main navigation routes
- **Router Pattern**: GoRouter for declarative navigation

### Platform Integration
- **Method Channels**: Flutter-to-native communication
- **Platform Views**: Native views embedded in Flutter
- **Platform-Specific Code**: Conditional imports for platform features

## Key Dependencies

### Core Flutter
- `flutter` and `flutter_localizations` (SDK)
- `provider` (state management)
- `go_router` (navigation)

### Networking
- `http` and `dio` (HTTP clients)
- `cached_network_image` (image caching)
- `flutter_cache_manager` (cache management)

### Media Playback
- `video_player` (Flutter video)
- `chewie` (video player UI)
- `wakelock_plus` (screen wake lock)

### Storage
- `sqflite` (SQLite database)
- `shared_preferences` (key-value storage)
- `path_provider` (file paths)

### Parsing
- `xml` (XML parsing for EPG)
- `crypto` (hashing)

### UI/UX
- `animations` (Flutter animations)
- `flutter_svg` (SVG support)
- `image` (image processing)
- `linked_scroll_controller` (synchronized scrolling)

### AI/ML
- `google_mlkit_translation` (on-device translation)
- `google_mlkit_language_id` (language detection)
- `speech_to_text` (speech recognition)
- `record` (audio recording)

### Permissions
- `permission_handler` (runtime permissions)

### Development
- `flutter_test` (testing)
- `flutter_lints` (linting)
- `flutter_launcher_icons` (icon generation)

## Build Outputs

- `build/app/outputs/flutter-apk/` - Android APK files
- `.dart_tool/` - Dart tooling cache
- `android/.gradle/` - Gradle build cache
