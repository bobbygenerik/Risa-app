# Product Overview - Risa IPTV Player

## Project Purpose
Risa IPTV Player is a premium, multi-platform IPTV streaming player built with Flutter and native Android modules. It provides a polished, TV-first experience that rivals major streaming apps in UX, speed, and reliability. The application is designed as a **media player tool for legal content only**, with Android as the primary platform.

## Core Value Proposition
A fast, beautiful IPTV player that supports legal playlists (M3U/Xtream), EPG, search, favorites, playback enhancements, and optional on-device AI features — without running a content business or requiring expensive backend infrastructure.

## Key Features

### Playlist Management
- M3U/M3U8 playlist parsing and loading
- Xtream Codes API integration with credentials management
- Multiple playlist support with merging capabilities
- Playlist editor and manager UI
- Auto-refresh schedules for playlist updates
- Cross-playlist mapping service for channel deduplication

### Live TV Streaming
- Hardware-accelerated video playback using ExoPlayer (Android) and video_player/chewie (Flutter)
- Quick channel switching with minimal buffering
- Adaptive bitrate support when available from streams
- Picture-in-picture mode (platform permitting)
- Multi-view capability for simultaneous streams
- TV remote-friendly playback controls

### EPG (Electronic Program Guide)
- XMLTV data parsing and display
- Time-based EPG grid layout with current/upcoming programs
- Incremental EPG loading and caching for performance
- Channel-to-EPG mapping tools and diagnostics
- EPG manager screen for troubleshooting
- Automatic EPG refresh and background sync

### Search and Discovery
- Text-based search across channels and programs
- Category browsing and filtering
- Voice search integration (Android devices with speech recognition)
- Search suggestions and history
- Fuzzy matching for EPG channel mapping

### Favorites and History
- Channel favorites management
- Watch history tracking with resume capability
- Per-channel watch count statistics
- Continue watching from last position

### Subtitles and Audio
- Embedded subtitle track selection
- Multiple audio track support
- Live subtitle overlay widget
- On-device transcription using Whisper models (optional)
- Real-time translation using Google MLKit (optional, offline-capable)

### Artwork and Metadata
- TMDB (The Movie Database) integration for program artwork
- OMDB (Open Movie Database) support
- TVDB (TheTVDB) integration
- FanArt.tv service for additional artwork
- TheSportsDB for sports content metadata
- SportRadar integration (optional)
- Intelligent artwork selection with fallback strategies
- Logo matching service for channel branding

### AI Features (Optional, On-Device)
- Whisper speech recognition for voice search and transcription
- Google MLKit translation (auto-downloads language packs, true offline)
- AI model manager for downloading and managing models
- Integrated transcription service for live captions
- No cloud dependencies - all processing happens locally

### Storage and Backup
- SQLite database for large playlists and EPG data
- Local backup/restore for settings and playlists
- Shared preferences for user settings
- Memory-mapped file service for performance
- Smart cache service with circuit breaker pattern

### Platform Support
- **Primary**: Android TV, Fire TV (10-foot UI), Android Mobile/Tablet (touch UI)
- **Secondary**: Desktop (Linux/Windows/macOS via Flutter), Web (Flutter web)
- **Separate Module**: Roku (BrightScript under `roku/` directory)
- **Planned**: Android Auto, Companion App

## Target Users

### Home IPTV Viewer
Users who want a fast, TV-remote-friendly live TV experience with EPG, favorites, and reliable playback.

### Cord-cutter Power User
Advanced users with multiple playlists or providers who expect advanced playback, search, categories, and quick channel switching.

### Family Household
Families needing parental controls, profiles, and safe content browsing.

### Mobile Companion User
Users who want to manage playlists and settings from their phone while watching on TV.

## Legal Compliance

### Strict Legal-First Approach
- **First-launch legal disclaimer** requiring explicit acceptance
- Clear language stating the app is for **legal content only**
- No default playlists or content sources shipped with the app
- No instructions facilitating piracy or copyright infringement
- Disclaimer acceptance stored locally

### Prohibited Uses
- Accessing pirated, copyrighted, or illegally distributed content
- Streaming content without proper authorization or licensing
- Circumventing geo-restrictions or DRM protections
- Any use violating local, state, national, or international laws

### Intended Use
- Personal IPTV services with legal subscriptions
- Content owned or legally accessible by the user
- Public domain or Creative Commons content
- Self-hosted media streams
- Legal IPTV provider services with proper licensing

## Technical Highlights

### Performance Optimizations
- Fast startup service with deferred initialization
- Incremental EPG loading to avoid blocking UI
- Optimized channel provider with efficient state management
- Image cache management with memory limits
- Background task manager for sync operations
- Parallel processing service for heavy operations
- Provider optimization service for state efficiency

### Architecture Patterns
- Provider pattern for state management (Flutter Provider package)
- Service layer for business logic separation
- Repository pattern for data access
- Isolate-based processing for CPU-intensive tasks
- Circuit breaker pattern for network resilience
- Smart learning engine for user behavior adaptation

### Network and Security
- Custom SSL handler for IPTV providers with certificate issues
- HTTP client service with connection pooling
- Network error logging and diagnostics
- Dio and HTTP packages for robust networking
- SSL settings screen for certificate management

### UI/UX Design
- Material Design 3 with custom dark theme
- TV-first 10-foot UI with large touch targets
- Focus management system for remote control navigation
- Skeleton loaders for perceived performance
- Shimmer effects during loading states
- Hero animations for smooth transitions
- Brand components (buttons, cards, badges, switches)

## Non-Goals (Explicit Boundaries)
- Hosting, distributing, or linking to pirated content
- DRM circumvention or geo-restriction bypassing
- Cloud DVR/nDVR or paid storage-backed recording
- Mandatory user accounts or login requirements
- Subscription business or ad network integration
- Backend storing user viewing data by default
- Framework rewrites or major architectural changes

## Version Information
- **Current Version**: 1.9.6+1
- **Flutter SDK**: 3.35.7 (minimum 3.2.6)
- **Dart SDK**: 3.9.2 (minimum 3.2.6)
- **Target Android SDK**: 34
- **Minimum Android SDK**: 21
- **Minimum iOS**: 12.0

## Project Status
The application is in active development with a focus on stability, performance, and legal compliance. The codebase is mature with comprehensive features for IPTV playback, EPG management, and user customization.
