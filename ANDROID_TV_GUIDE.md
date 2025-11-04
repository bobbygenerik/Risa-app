# Android TV Optimization Guide

## Overview

Stream Hub is now fully optimized for Android TV with D-pad navigation, leanback launcher support, and TV-friendly UI.

---

## ✅ Android TV Features Implemented

### 1. Leanback Launcher Support
- ✅ Android TV manifest with `android.software.leanback` requirement
- ✅ TV banner drawable for leanback launcher
- ✅ `LEANBACK_LAUNCHER` intent filter
- ✅ Landscape orientation enforced
- ✅ Touchscreen marked as non-required

### 2. D-Pad / Remote Control Navigation
- ✅ Full keyboard event handling for TV remotes
- ✅ Arrow keys for navigation (Up/Down/Left/Right)
- ✅ Select/Enter key for activation
- ✅ Back button support for navigation
- ✅ Focus management with visual indicators

### 3. Video Player (TV-Optimized)
- ✅ Full-screen video playback with Chewie
- ✅ D-pad controls (Play/Pause, Seek, Volume)
- ✅ Remote control hints overlay
- ✅ Auto-hiding controls
- ✅ Hardware acceleration support
- ✅ AI upscaling integration
- ✅ Live TV indicator
- ✅ Proper error handling

### 4. Focus Management
- ✅ `TVFocusHelper` utility class
- ✅ Animated focus borders (scales 1.05x when focused)
- ✅ Autofocus support
- ✅ TV-sized text and icons (1.5x larger)
- ✅ Grid layout optimized for TV viewing

---

## 📺 Supported Platforms

After optimization:
- ✅ **Android (Mobile/Tablet)** - Touch optimized
- ✅ **Android TV** - Remote control optimized
- ✅ **Linux Desktop** - Mouse/keyboard optimized  
- ✅ **Web** - Browser compatible

**Removed**: iOS, macOS, Windows (no longer needed)

---

## 🎮 Remote Control Mapping

### Video Player Controls

| Remote Button | Action |
|--------------|---------|
| ▶️ Select/Enter | Play/Pause |
| ⬅️ Left Arrow | Seek backward 10 seconds |
| ➡️ Right Arrow | Seek forward 10 seconds |
| ⬆️ Up Arrow | Show controls |
| ⬇️ Down Arrow | Show controls |
| 🔙 Back | Exit player |

### Navigation Controls

| Remote Button | Action |
|--------------|---------|
| ⬆️⬇️⬅️➡️ D-pad | Navigate between items |
| ▶️ Select/Enter | Activate focused item |
| 🔙 Back | Go back one screen |
| 🏠 Home | Return to launcher |

---

## 🏗️ Project Structure

### New Files Added

```
lib/
├── screens/
│   └── video_player_screen.dart     # Full-screen TV-optimized player
└── utils/
    └── tv_focus_helper.dart          # TV focus management utilities

android/app/src/main/
├── AndroidManifest.xml               # Updated with TV support
└── res/drawable/
    └── tv_banner.xml                 # TV launcher banner
```

### Modified Files

```
lib/screens/mini_player_screen.dart   # Added fullscreen launch
android/app/src/main/AndroidManifest.xml # TV features and permissions
```

---

## 🚀 Building for Android TV

### Build APK for Android TV

```bash
cd ~/iptv-player
flutter build apk --release
```

The APK will work on both:
- Regular Android devices (phones/tablets)
- Android TV devices

### Install on Android TV

#### Method 1: ADB (Recommended)

```bash
# Enable ADB debugging on Android TV (Settings → Device Preferences → About → Build 7 times)
# Enable USB debugging
# Connect via ADB

adb connect <TV_IP_ADDRESS>:5555
adb install build/app/outputs/flutter-apk/app-release.apk
```

#### Method 2: Google Play Store (Production)

1. Build App Bundle:
```bash
flutter build appbundle --release
```

2. Upload to Google Play Console
3. Enable Android TV distribution
4. Add TV screenshots (1920x1080)
5. Publish

#### Method 3: Sideload via USB

1. Build APK
2. Copy to USB drive
3. Use a file manager on Android TV
4. Install APK

---

## 🧪 Testing on Android TV Emulator

### Create Android TV AVD

```bash
# Install Android TV system image
sdkmanager "system-images;android-34;google_atv;x86_64"

# Create AVD
avdmanager create avd \
  -n "Android_TV" \
  -k "system-images;android-34;google_atv;x86_64" \
  -d "tv_1080p"

# Launch emulator
emulator -avd Android_TV
```

### Run App on TV Emulator

```bash
cd ~/iptv-player
flutter run -d emulator-5554
```

### Test with Keyboard (Emulator Controls)

- **Arrow Keys** → D-pad navigation
- **Enter** → Select button
- **Escape** → Back button
- **Space** → Play/Pause in player

---

## 🎨 TV UI Guidelines

### Text Sizing (Applied via TVFocusHelper)

| Element | Mobile | TV |
|---------|--------|-----|
| Body Text | 16px | 24px |
| Titles | 24px | 36px |
| Headlines | 32px | 48px |
| Icons | 24px | 36px |

### Spacing (Applied via TVFocusHelper)

| Element | Mobile | TV |
|---------|--------|-----|
| Padding | 16px | 24px |
| Margins | 8px | 12px |
| Grid Gaps | 16px | 24px |

### Focus Indicators

- **Border**: 3px white border when focused
- **Scale**: 1.05x zoom animation (200ms)
- **Color**: Customizable per component

---

## 📝 Using TVFocusHelper

### Example: Focusable Button

```dart
import 'package:iptv_player/utils/tv_focus_helper.dart';

TVFocusHelper.buildFocusableItem(
  child: MyButton(),
  onPressed: () {
    // Handle press
  },
  autofocus: true,
  focusColor: Colors.blue,
)
```

### Example: TV-Optimized Grid

```dart
TVFocusHelper.buildFocusableGrid(
  itemCount: items.length,
  crossAxisCount: 4,  // 4 columns for TV
  itemBuilder: (context, index) {
    return MyGridItem(items[index]);
  },
)
```

### Example: TV Button

```dart
TVFocusHelper.buildTVButton(
  label: 'Play Now',
  icon: Icons.play_arrow,
  onPressed: () {
    // Launch video
  },
  autofocus: true,
)
```

---

## 🎬 Video Player Features

### Supported Features

✅ **Hardware Acceleration**
- VideoPlayerOptions with hardware decoding
- Optimized for TV chipsets

✅ **AI Upscaling Integration**
- Real-time upscaling when enabled
- Status indicator on screen
- Quality preset display

✅ **Live TV Support**
- Looping for continuous streams
- LIVE badge indicator
- No seek controls for live content

✅ **Custom Controls**
- TV remote friendly
- Large, easy-to-see buttons
- Auto-hide after 3 seconds
- Show on any key press

✅ **Error Handling**
- Clear error messages
- Retry option
- Graceful fallback

### Example: Launch Video Player

```dart
import 'package:iptv_player/screens/video_player_screen.dart';

Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => VideoPlayerScreen(
      videoUrl: 'https://example.com/stream.m3u8',
      title: 'Channel Name',
      subtitle: 'Program Title',
      isLive: true,
    ),
  ),
);
```

---

## 🐛 Troubleshooting

### Issue: App not showing in TV launcher

**Solution**: 
- Check `AndroidManifest.xml` has `LEANBACK_LAUNCHER` intent filter
- Ensure `android.software.leanback` is set to `required="true"`
- Add TV banner drawable

### Issue: D-pad not working

**Solution**:
- Wrap widget in `KeyboardListener`
- Set `autofocus: true`
- Implement `onKeyEvent` handler
- Check for `LogicalKeyboardKey` values

### Issue: Focus not visible

**Solution**:
- Use `Focus` widget with `Builder`
- Check `Focus.of(context).hasFocus`
- Add visual indicators (border, scale, color)

### Issue: Video player not working

**Solution**:
```bash
# Check permissions in AndroidManifest.xml
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.WAKE_LOCK"/>

# Ensure hardware acceleration enabled
android:hardwareAccelerated="true"
```

### Issue: Text too small on TV

**Solution**:
```dart
// Use TVFocusHelper for auto-sizing
final size = context.tvTextSize(16); // Converts to 24px for TV
```

---

## 📊 Performance Optimization

### Video Streaming

- **Use HLS (m3u8)**: Best for TV streaming
- **Enable caching**: Reduce buffering
- **Hardware decode**: Offload to GPU
- **AI upscaling**: Optional, check GPU availability

### UI Rendering

- **Limit animations**: Keep frame rate stable
- **Lazy loading**: Load content on demand
- **Image caching**: Use `cached_network_image`
- **Dispose properly**: Clean up controllers

---

## 🔐 Permissions

### Required

```xml
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.WAKE_LOCK"/>
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
```

### Optional

```xml
<uses-permission android:name="android.permission.RECORD_AUDIO"/>  <!-- For voice search -->
```

### Features

```xml
<uses-feature android:name="android.hardware.touchscreen" android:required="false"/>
<uses-feature android:name="android.software.leanback" android:required="true"/>
<uses-feature android:name="android.hardware.microphone" android:required="false"/>
```

---

## 📈 Testing Checklist

### Pre-Release Testing

- [ ] Test on Android TV emulator
- [ ] Test on physical Android TV device
- [ ] Verify D-pad navigation works on all screens
- [ ] Test video playback with various streams
- [ ] Check focus indicators are visible
- [ ] Verify back button navigation
- [ ] Test with TV remote (not keyboard)
- [ ] Check TV banner appears in launcher
- [ ] Verify landscape orientation enforced
- [ ] Test AI upscaling on/off
- [ ] Check error handling for failed streams
- [ ] Verify app works without touchscreen

### Performance Testing

- [ ] Video plays smoothly at 1080p
- [ ] No frame drops during navigation
- [ ] Controls respond instantly to remote
- [ ] Memory usage stays reasonable
- [ ] No audio/video sync issues

---

## 🎉 Android TV Ready!

Your IPTV player is now fully optimized for Android TV with:

✅ Complete D-pad navigation
✅ TV-friendly UI scaling
✅ Full-screen video player
✅ Hardware acceleration
✅ AI upscaling support
✅ Remote control support
✅ Leanback launcher integration

**Next Step**: Build and test on Android TV!

```bash
flutter build apk --release
adb install build/app/outputs/flutter-apk/app-release.apk
```

---

**Status**: Android TV optimization complete! 📺
**Platforms**: Android (Mobile + TV), Linux, Web
**Video Player**: Fully integrated with TV controls
**Focus Management**: Complete with TVFocusHelper

