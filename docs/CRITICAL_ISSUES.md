# Critical Issues Found - Feb 3, 2026

## 1. NO ARTWORK IN CARDS ❌
**Symptoms**: Cards show fallback backgrounds instead of program artwork
**Root Cause**: 
- Images rejected as `reject_not_landscape` (portrait images)
- Images rejected as `reject_channel_logo_hint` (channel logos instead of program art)
- EPG provides low-res images that get skipped by quality filter
- TMDB timeouts: `TimeoutException after 0:00:05.000000`

**Fix Needed**:
- Increase TMDB timeout from 5s to 10s
- Relax landscape-only filter for EPG images
- Accept EPG images even if low-res when no better option exists
- Better fallback chain: TMDB → EPG → Channel Logo → Fallback

**Files to Fix**:
- `lib/services/live_tv_artwork_service.dart` - Image rejection logic
- `lib/services/tmdb_service.dart` - Timeout configuration

---

### 3. Playlist re-parsing every time (EPG Loading Speed)
- **Status:** 🟢 RESOLVED
- **Symptoms:** Going back to Live TV (cold start) triggered full playlist download/parse (7134 channels).
- **Root Cause:** 
  1. `PlaylistLoader` was never actually writing the parsed playlist to the fallback file cache on disk.
  2. The database deferred insert might fail or get interrupted if the app is killed early.
  3. The cache expiry logic in `channel_provider.dart` artificially rejected the file cache if it was older than 6 hours, forcing a UI-blocking network load instead of a background sync.
- **Fix:** 
  1. Updated `_loadPlaylistFromUrlImpl` to properly write the `loadingTarget` array to disk as a JSON file.
  2. Updated the cache parser in `autoLoadPlaylist` to seamlessly read JSON.
  3. Removed the hard 6-hour limit on the fallback cache. The app now loads stale caches instantly and runs `_backgroundSync()` for freshness.ady loaded in memory

**Files to Fix**:
- `lib/providers/channel_provider.dart` - Cache logic around line 2247

---

## 3. EXIT SCREEN ON PLAYER BACK ❌
**Symptoms**: Pressing back in player shows exit confirmation instead of returning to Live TV
**Root Cause**: Need to check player screen's PopScope/WillPopScope handling

**Fix Needed**:
- Player back button should return to Live TV, not trigger exit
- Only show exit dialog on Live TV screen back press

**Files to Check**:
- `lib/screens/enhanced_video_player_screen.dart` - Back button handling
- `lib/widgets/safe_pop_scope.dart` - Pop scope wrapper

---

## 4. PLAYER JANK ❌
**Symptoms**: Massive frame drops during playback
```
JANK: frame total=1264ms build=99ms raster=1165ms vsync=37ms
JANK: frame total=121ms build=92ms raster=29ms vsync=12ms
```

**Root Cause**:
- Heavy UI rebuilds during playback
- Image loading/decoding on main thread
- Too many widgets rebuilding

**Fix Needed**:
- Reduce widget rebuilds in player screen
- Use `const` constructors where possible
- Defer non-critical UI updates
- Profile and optimize render tree

**Files to Fix**:
- `lib/screens/enhanced_video_player_screen.dart` - Reduce rebuilds

---

## 5. IMAGE DECODE ERRORS ❌
**Symptoms**: 
```
FlutterJNI: android.graphics.ImageDecoder$DecodeException: Failed to create image decoder
```

**Root Cause**: Corrupt or invalid image URLs causing decode failures

**Fix Needed**:
- Validate image URLs before attempting to load
- Catch decode errors gracefully
- Use error builders in CachedNetworkImage
- Skip bad images and try next source

**Files to Fix**:
- `lib/widgets/cached_image.dart` - Error handling
- `lib/services/live_tv_artwork_service.dart` - URL validation

---

## 6. DATABASE READ-ONLY ERRORS ❌
**Symptoms**:
```
ChannelProvider: DB category batch failed: Unsupported operation: read-only
ChannelProvider: Detected read-only DB, attempting recovery
```

**Root Cause**: Database file permissions or concurrent access issues

**Fix Needed**:
- Check database file permissions
- Ensure proper transaction handling
- Fix concurrent write attempts
- Better error recovery

**Files to Fix**:
- `lib/services/local_db_service.dart` - Database initialization
- `lib/providers/channel_provider.dart` - DB write operations

---

## Priority Order:
1. **Playlist re-parsing** (most annoying, happens every navigation)
2. **Exit screen on player back** (breaks UX flow)
3. **No artwork** (visual quality issue)
4. **Player jank** (performance issue)
5. **Image decode errors** (causes crashes)
6. **Database errors** (causes data loss)
