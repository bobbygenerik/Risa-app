# Performance Fix Summary - NVIDIA Shield UI Slowness & Playback Failures

## Issues Addressed

1. **Severe UI slowness and frame jank** (218 frames skipped, 1801ms Davey)
2. **Stream playback failures** with "channel-error" from VLC plugin
3. **Database lock storms** (locked for 10+ seconds)
4. **Image decode churn** causing memory pressure

## Changes Made

### 1. Comprehensive Instrumentation (CRITICAL for diagnosis)

Added detailed logging at every step of the playback flow to identify where failures occur:

#### A. Channel Tap Flow (`live_tv_screen.dart`)
```dart
Future<void> _openChannelPlayer(Channel channel) async {
  // Logs:
  // - Channel name, ID, stream URL
  // - Navigation start/end
  // - Any errors with stack traces
  // - System logs visible in logcat with tag "RisaTap"
}
```

#### B. Video Player Initialization (`enhanced_video_player_screen.dart`)
```dart
Future<void> _initializePlayer() async {
  // Logs:
  // - URL validation
  // - Initialization start/complete/error
  // - System logs with tag "RisaPlayer"
}
```

#### C. VLC Widget Creation (`vlc_player_widget.dart`)
```dart
void _initializeController() {
  // Logs:
  // - VLC controller creation
  // - Hardware acceleration settings
  // - Any creation errors
  // - System logs with tag "RisaVLC"
}
```

#### D. VLC Controller Constructor (`universal_player_controller.dart`)
```dart
VlcUniversalPlayerController(...) {
  // Logs:
  // - URL, autoPlay, isLive, hwAcc settings
  // - Listener attachment success/failure
  // - System logs with tag "RisaVLC"
}
```

### 2. How to Use the Instrumentation

**To diagnose playback failures:**

1. Connect Shield via ADB:
   ```bash
   adb connect <shield-ip>:5555
   ```

2. Clear logcat and start monitoring:
   ```bash
   adb logcat -c
   adb logcat | grep -E "RisaTap|RisaPlayer|RisaVLC|flutter"
   ```

3. Tap a channel in the app

4. Look for the flow:
   ```
   RisaTap: === CHANNEL TAP START ===
   RisaTap: Channel: <name> (ID: <id>)
   RisaTap: Stream URL: <url>
   RisaTap: Navigating to player screen...
   RisaPlayer: === VIDEO PLAYER INIT START ===
   RisaPlayer: Video Player: Initializing with URL: <url>
   RisaVLC: === VLC WIDGET INIT START ===
   RisaVLC: VLC INIT: <url> hw=true
   RisaVLC: === VLC CONTROLLER CONSTRUCTOR ===
   RisaVLC: VLC listener attached successfully
   RisaVLC: === VLC WIDGET INIT COMPLETE ===
   RisaPlayer: === VIDEO PLAYER INIT COMPLETE ===
   ```

5. If flow stops at any point, that's where the issue is

### 3. Existing Performance Optimizations (Already in place)

#### Database Contention Fixes
- `busy_timeout` set to 20 seconds
- `beginBulkWrite()`/`endBulkWrite()` guards prevent read/write conflicts
- WAL mode enabled for concurrent access

#### Memory Management
- Aggressive cache clearing before player launch
- Image cache limits tuned for Shield (15 images, 2MB max)
- Artwork fetching suspended during playback

#### Image Decode Backoff
- `ImageFailureCache` prevents repeated decode attempts
- Aggressive mode on low-memory devices (Shield)

## Expected Behavior After Fix

### Normal Flow (Success)
```
=== CHANNEL TAP START ===
Channel: BBC News (ID: bbc.news)
Stream URL: http://example.com/stream.m3u8
Navigating to player screen...
=== VIDEO PLAYER INIT START ===
=== VLC WIDGET INIT START ===
=== VLC CONTROLLER CONSTRUCTOR ===
VLC listener attached successfully
=== VLC WIDGET INIT COMPLETE ===
=== VIDEO PLAYER INIT COMPLETE ===
[Video plays]
=== CHANNEL TAP END (returned from player) ===
```

### Failure Scenarios

#### Scenario 1: Tap doesn't reach player
```
=== CHANNEL TAP START ===
[No further logs]
```
**Diagnosis**: Navigation blocked, check GoRouter configuration

#### Scenario 2: Player init fails
```
=== CHANNEL TAP START ===
Navigating to player screen...
=== VIDEO PLAYER INIT START ===
=== VIDEO PLAYER INIT FAILED: Empty URL ===
```
**Diagnosis**: Channel object has no URL

#### Scenario 3: VLC controller creation fails
```
=== VLC WIDGET INIT START ===
=== VLC CONTROLLER CREATE ERROR ===
Error: PlatformException(channel-error, Unable to establish connection...)
```
**Diagnosis**: VLC plugin not registered or method channel issue

#### Scenario 4: VLC listener attachment fails
```
=== VLC CONTROLLER CONSTRUCTOR ===
=== VLC LISTENER ATTACH ERROR ===
```
**Diagnosis**: VLC controller in invalid state

## Next Steps

1. **Deploy the instrumented build** to Shield
2. **Capture logcat** during channel tap
3. **Identify where flow stops** using the logs above
4. **Apply targeted fix** based on failure point

## Additional Recommendations

### If VLC Plugin Channel Error Persists

Check `MainActivity.kt` for duplicate plugin registration:
- Ensure `GeneratedPluginRegistrant.registerWith()` is NOT called
- FlutterActivity auto-registers plugins

### If DB Lock Storms Continue

Monitor EPG service bulk writes:
```bash
adb logcat | grep "database has been locked"
```

If locks occur during EPG parsing, increase `busy_timeout` or add delays between batch inserts.

### If Frame Jank Persists

Profile with Flutter DevTools:
```bash
flutter run --profile
# Open DevTools, check Timeline for main thread work
```

Look for:
- Synchronous DB queries on main thread
- Heavy image decoding
- Excessive widget rebuilds

## Testing Checklist

- [ ] Logcat shows "=== CHANNEL TAP START ===" when tapping channel
- [ ] Logcat shows "=== VLC CONTROLLER CONSTRUCTOR ===" 
- [ ] Logcat shows "VLC listener attached successfully"
- [ ] Video starts playing within 3 seconds
- [ ] No "database has been locked" warnings during playback
- [ ] No "Skipped frames" warnings during navigation
- [ ] App remains responsive after returning from player

## Files Modified

1. `lib/screens/live_tv_screen.dart` - Channel tap instrumentation
2. `lib/screens/enhanced_video_player_screen.dart` - Player init instrumentation
3. `lib/widgets/vlc_player_widget.dart` - VLC widget instrumentation
4. `lib/controllers/universal_player_controller.dart` - VLC controller instrumentation

All changes are **additive** (logging only) and safe for production.
