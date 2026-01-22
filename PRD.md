# Risa IPTV Player - Product Requirements Document

**Last updated:** January 22, 2026

This PRD exists to keep all agents aligned with the product goal and prevent scope drift. It reflects the current codebase and documented intent in this repository.

---

## 1) Product Summary

**Risa IPTV Player** is a premium, multi-platform IPTV player built with Flutter and native platform modules where needed. It is a **media player tool for legal content only**, focused on a polished, TV-first experience that rivals major streaming apps in UX, speed, and reliability. **Android is the primary platform.**

**Key value:** A fast, beautiful IPTV player that supports legal playlists (M3U/Xtream), EPG, search, favorites, playback enhancements, and optional on-device AI features — without running a content business or requiring expensive backend infrastructure.

---

## 2) Vision and Goals

### Vision
Deliver an industry-leading IPTV viewing experience on TV and mobile that feels as smooth and premium as Netflix/Disney+ while remaining lightweight and privacy-respecting.

### Primary Goals
- **Premium UX**: TV-first, 10-foot UI, responsive, and visually polished.
- **Fast and reliable playback**: Quick load times, smooth channel switching, stable streams.
- **Legal-first**: Clear disclaimer, no piracy enablement, no content hosting.
- **Offline-friendly options**: Local-only storage for preferences and backups.
- **Low-cost operations**: Avoid mandatory cloud services and paid APIs.

### Secondary Goals
- **Multi-platform**: Android TV/Fire TV first, with mobile and desktop support via Flutter; Roku in a separate module.
- **Advanced capabilities**: Voice search, subtitles, hardware acceleration, multi-view.
- **Optional AI features**: On-device speech recognition and translation (no cloud required).

---

## 3) Non-Goals (Hard Boundaries)

These items are **explicitly out of scope** unless the owner approves a strategic pivot:
- Hosting, distributing, or linking to pirated or unauthorized content.
- DRM circumvention or geo-restriction bypassing.
- Cloud DVR / nDVR or any paid storage-backed recording service.
- Mandatory user accounts or login to use the app.
- A subscription business or ad network integration.
- A backend that stores user viewing data by default.
- Rewriting the app in a different framework.

---

## 4) Target Users & Personas

1. **Home IPTV Viewer**
   - Wants a fast, TV-remote-friendly live TV experience.
   - Needs EPG, favorites, and reliable playback.

2. **Cord-cutter Power User**
   - Uses multiple playlists or providers.
   - Expects advanced playback, search, categories, and quick switching.

3. **Family Household**
   - Needs parental controls, profiles, and safe browsing.

4. **Mobile Companion User**
   - Wants to manage playlists/settings from a phone.

---

## 5) Platforms and Scope

### In Scope (Primary)
- **Android TV / Fire TV** (10-foot UI)
- **Android Mobile / Tablet** (touch UI)
- **Desktop (Linux/Windows/macOS) via Flutter** (secondary)
- **Web (Flutter web) where feasible** (secondary)

### In Scope (Secondary)
- **Roku** (BrightScript module under `roku/`, maintained separately)

### Out of Scope
- iOS/TvOS production parity until validated for performance and distribution.
- Android Auto and companion app unless explicitly prioritized.

---

## 6) Legal & Compliance Requirements

- Show a **first-launch legal disclaimer** that requires explicit acceptance.
- Provide **clear language** that the app is for legal content only.
- Do not ship any default playlists or content sources.
- Provide no instructions that facilitate piracy or copyright infringement.
- Store acceptance state locally.

---

## 7) Core User Journeys

1. **First Launch**
   - Legal disclaimer appears.
   - User accepts to proceed.
   - Prompt to add playlist source (M3U or Xtream).

2. **Add Playlist**
   - Settings > Playlist Sources.
   - Input M3U URL or Xtream credentials.
   - Validate and load channels.

3. **Browse Live TV**
   - Live TV screen with channel list and preview.
   - EPG grid accessible with program details.

4. **Play a Channel**
   - Playback starts quickly.
   - Basic controls (play/pause, seek if supported).
   - Subtitles and audio track selection (if available).

5. **Search and Discover**
   - Search by channel, program, or category.
   - Voice search (on supported devices).

6. **Favorites and History**
   - Add/remove favorites.
   - Resume watching from history.

7. **Settings and Enhancements**
   - Playback settings (hardware acceleration, buffer size).
   - Subtitles (OpenSubtitles integration).
   - Optional AI model management.

---

## 8) Functional Requirements

### 8.1 Playlist and Source Management
**MUST**
- Support M3U/M3U8 playlist parsing.
- Support Xtream Codes credentials entry and loading.
- Validate sources and handle errors gracefully.
- Allow users to remove or refresh playlists.

**SHOULD**
- Support multiple playlists and merging.
- Playlist editor/manager UI.
- Auto-refresh schedules.

**COULD**
- Source prioritization and conflict resolution.

### 8.2 EPG (Electronic Program Guide)
**MUST**
- Parse XMLTV data when provided.
- Show EPG grid with time-based layout.
- Display current and upcoming programs per channel.

**SHOULD**
- EPG caching and incremental refresh.
- Channel-to-EPG mapping tools.

### 8.3 Live TV Playback
**MUST**
- Stable playback with hardware acceleration options.
- Quick channel switching.
- Playback controls suitable for TV remote.

**SHOULD**
- Adaptive bitrate support when stream provides it.
- Picture-in-picture (platform permitting).

**COULD**
- Multi-view (simultaneous streams).

### 8.4 Search and Discovery
**MUST**
- Text search across channels and programs.
- Category browsing.

**SHOULD**
- Voice search where supported.
- Search suggestions and history.

### 8.5 Favorites and History
**MUST**
- Favorite channels and content.
- Watch history and continue watching.

**SHOULD**
- Per-profile favorites (if profiles are added).

### 8.6 Subtitles and Audio
**MUST**
- Allow selecting embedded subtitles/audio tracks when available.

**SHOULD**
- OpenSubtitles integration for automatic subtitle downloads.

### 8.7 Parental Controls
**SHOULD**
- PIN-protected content access.
- Rating-based restrictions.

### 8.8 Backups and Local Data
**MUST**
- Local export/import backup for settings and playlists.

**SHOULD**
- Avoid cloud sync by default (cloud sync is currently removed).

### 8.9 Optional AI Features
**COULD**
- On-device speech recognition (Whisper models) for search or captions.
- On-device translation (MLKit or local models).

### 8.10 Integrations (Optional)
**COULD**
- Real-Debrid integration for stream resolution.
- Metadata services (TMDB/OMDB/TVDB) for artwork and info.
- Sports metadata providers (when configured by user).

---

## 9) Non-Functional Requirements

- **Performance**: Fast startup, smooth scrolling, quick channel changes.
- **Stability**: No crashes during long viewing sessions.
- **Resource efficiency**: Optimized memory usage, responsive on mid-range TV hardware.
- **Privacy**: Local-first data storage, no silent telemetry by default.
- **Accessibility**: Large touch targets, readable typography, remote-friendly focus.
- **Offline resilience**: App should run without internet except for content streams.

---

## 10) UX and Design Principles

- Premium streaming-app feel; no "basic" UI.
- Strong focus on 10-foot TV UX: large text, clear focus states, simple navigation.
- Consistent dark theme with tasteful accent color.
- Motion should feel purposeful, not flashy.
- Navigation must be possible with remote-only input.

---

## 11) Data and Storage

**Local-only by default:**
- User playlists, settings, favorites, and history stored locally.
- Backups export to local file system for manual transfer.
- Cloud sync is removed and must not be reintroduced without approval.

---

## 12) Security and Safety

- No embedded credentials or hard-coded playlist sources.
- Clear user consent for microphone access (voice search).
- Safe handling of external URLs with validation and error handling.

---

## 13) Success Metrics (Targets)

- High perceived quality and responsiveness.
- Low playback error rate.
- Rapid time-to-first-frame after channel selection.
- Positive usability feedback from TV users.

---

## 14) Roadmap (Directional)

### Now (Maintain and Stabilize)
- Ensure playlist management, EPG, and playback remain stable.
- Keep UI polished and performance optimized.
- Maintain legal disclaimer and compliance language.

### Next (Near-Term Enhancements)
- Multi-playlist management and refresh scheduler.
- EPG mapping and diagnostics improvements.
- Subtitles quality and selection improvements.
- Multi-view polishing and playback optimizations.

### Later (Optional)
- Profiles and personalization.
- Smarter recommendations (local-only, no backend).
- Deeper AI-assisted features if on-device only.

---

## 15) Agent Guardrails (Do/Do Not)

**DO**
- Improve UX polish, performance, and reliability.
- Keep features legal-first and content-agnostic.
- Prefer local-only data and offline-friendly workflows.
- Maintain Flutter architecture and existing app structure.

**DO NOT**
- Add any piracy-enabling features or default content sources.
- Introduce paid cloud services or mandatory backend dependencies.
- Remove or weaken the legal disclaimer.
- Re-implement cloud sync without explicit approval.

---

## 16) Open Questions (Owner Decisions Needed)

- Should Roku remain a parity target or be maintained separately?
- Should multi-profile support be prioritized?
- Are any paid integrations acceptable in the future?

---

End of PRD.
