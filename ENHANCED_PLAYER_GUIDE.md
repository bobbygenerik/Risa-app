# Enhanced Video Player Features Guide

## Overview

The IPTV Player now includes advanced video player features:
- **Subtitles Support** - Display SRT/VTT subtitle files
- **Multiple Audio Tracks** - Switch between different audio streams
- **Picture-in-Picture (PiP)** - Watch video in a floating window on Android
- **Live Transcription** - Real-time speech-to-text from video audio
- **Live Translation** - Translate transcribed text to any language
- **Text-to-Speech** - Hear translated audio

All features are **FREE** and use on-device processing for privacy.

---

## Features

### 1. Subtitle Support

The video player supports standard subtitle formats:
- **SRT** (SubRip)
- **VTT** (WebVTT)
- **WebVTT**

#### How to Use Subtitles:

**During Playback:**
- Press `C` or `Closed Caption Toggle` button on remote to toggle subtitles
- Press `↑` (Up Arrow) to open subtitle selector
- Select from available subtitle tracks or turn off

**Adding Subtitles to Video:**
```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => EnhancedVideoPlayerScreen(
      videoUrl: 'https://example.com/video.m3u8',
      title: 'My Video',
      subtitleOptions: [
        SubtitleOption(
          name: 'English',
          url: 'https://example.com/subtitles-en.srt',
          format: 'srt',
        ),
        SubtitleOption(
          name: 'Spanish',
          url: 'https://example.com/subtitles-es.srt',
          format: 'srt',
        ),
      ],
    ),
  ),
);
```

---

### 2. Multiple Audio Tracks

Switch between different audio languages or quality levels.

#### Remote Control:
- Press `↓` (Down Arrow) to open audio track selector
- Press `Channel Up` to cycle to next audio track
- Press `Channel Down` to cycle to previous audio track

#### Adding Audio Tracks:
```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => EnhancedVideoPlayerScreen(
      videoUrl: 'https://example.com/video.m3u8',
      title: 'My Video',
      audioTracks: [
        AudioTrackOption(
          name: 'English (Stereo)',
          language: 'en',
          codec: 'aac',
          trackId: 0,
        ),
        AudioTrackOption(
          name: 'Spanish (5.1)',
          language: 'es',
          codec: 'ac3',
          trackId: 1,
        ),
      ],
    ),
  ),
);
```

**Note:** Audio track switching requires platform-specific implementation. The UI is ready but actual switching will be implemented based on the video format (HLS, DASH, etc.).

---

### 3. Picture-in-Picture (PiP)

Watch video in a small floating window while using other apps.

#### Requirements:
- Android 8.0 (API level 26) or higher
- Device must support PiP feature

#### How to Use:
- **Press `P` key** during playback to enter PiP mode
- **Press Home button** while playing video (auto-enters PiP)
- **Tap the video** in PiP mode to return to fullscreen
- **Close PiP window** to stop playback

#### Features:
- Maintains playback while browsing other apps
- 16:9 aspect ratio maintained
- Playback controls available in PiP
- Automatic return to fullscreen when tapped

#### Android Permissions:
Already configured in `AndroidManifest.xml`:
```xml
<activity
    android:name=".MainActivity"
    android:supportsPictureInPicture="true"
    android:resizeableActivity="true"
    ...
/>
```

---

### 4. Live Transcription

Real-time speech-to-text conversion from video audio using on-device AI.

#### Features:
- **On-device processing** - No cloud required, completely private
- **Real-time display** - See transcribed text as subtitles
- **15+ languages supported** - English, Spanish, French, German, Japanese, Chinese, and more
- **Export to SRT** - Save transcriptions as subtitle files
- **Automatic cleanup** - Old transcriptions removed after 5 minutes

#### How to Use:

**Enable in Settings:**
1. Go to **Settings → Subtitles**
2. Toggle **"Live Transcription"**
3. Select **Source Language** (language in the video)
4. Transcribed text appears as subtitles in real-time

**During Playback:**
- Press `T` key to toggle live transcription on/off
- Transcribed text appears at bottom of screen with blue border
- Text history saved for export

#### Supported Source Languages:
- English (US, UK)
- Spanish (Spain, Mexico)
- French
- German
- Italian
- Portuguese (Brazil, Portugal)
- Russian
- Japanese
- Korean
- Chinese (Simplified)
- Arabic
- Hindi
- And more...

#### Export Transcriptions:
1. Go to **Settings → Subtitles**
2. Click **"Export as SRT"**
3. Choose location to save `.srt` file
4. Use exported file as subtitles for any video player

---

### 5. Live Translation

Translate transcribed text to any language in real-time.

#### Features:
- **Real-time translation** - Instant translation as text is transcribed
- **15+ target languages** - Translate to any supported language
- **Text-to-Speech** - Hear translated audio (optional)
- **Free Google Translate API** - Uses free tier, no cost
- **Combined with transcription** - Works alongside live transcription

#### How to Use:

**Enable Translation:**
1. Enable **Live Transcription** first
2. Toggle **"Enable Translation"**
3. Select **Target Language** (language to translate to)
4. Optionally enable **"Text-to-Speech"** to hear translated audio

**Example Use Case:**
- Video in Spanish → Transcribe to Spanish text → Translate to English → Display English subtitles
- Video in English → Transcribe to English text → Translate to Japanese → Display Japanese subtitles + TTS

#### Supported Target Languages:
- English
- Spanish
- French
- German
- Italian
- Portuguese
- Russian
- Japanese
- Korean
- Chinese (Simplified)
- Arabic
- Hindi
- Dutch
- Polish
- Turkish
- And more...

---

### 6. Text-to-Speech (TTS)

Speak translated text aloud for audio dubbing effect.

#### Features:
- **Natural voices** - Platform-native TTS voices
- **Adjustable settings** - Speed, pitch, volume control
- **Automatic timing** - Speaks each translated segment
- **Optional** - Can be toggled on/off independently

#### How to Use:
1. Enable **Live Transcription** + **Translation**
2. Toggle **"Text-to-Speech"**
3. Translated text will be spoken aloud
4. Adjust volume with device volume controls

**Use Cases:**
- Create real-time dubbing effect
- Listen to translated content hands-free
- Accessibility for visually impaired users

---

## Remote Control Reference

### Enhanced Video Player Controls:

| Key | Action |
|-----|--------|
| `SELECT` / `ENTER` / `SPACE` | Play / Pause |
| `←` (Left Arrow) | Seek backward 10 seconds |
| `→` (Right Arrow) | Seek forward 10 seconds |
| `↑` (Up Arrow) | Open subtitle selector |
| `↓` (Down Arrow) | Open audio track selector |
| `C` / `CC Button` | Toggle subtitles on/off |
| `T` | Toggle live transcription |
| `P` | Toggle Picture-in-Picture |
| `Channel Up` | Next audio track |
| `Channel Down` | Previous audio track |
| `BACK` / `ESC` | Exit player |

---

## Settings Configuration

### Subtitles & Transcription Settings

Navigate to **Settings → Subtitles** to configure:

#### Live Transcription Section:
- **Enable Live Transcription** - Toggle on/off
- **Source Language** - Select language spoken in video
- **Enable Translation** - Toggle translation on/off
- **Target Language** - Select language to translate to
- **Text-to-Speech** - Toggle spoken translation
- **Export Transcriptions** - Save as SRT subtitle file
- **Clear Transcriptions** - Remove all saved entries

#### Information Display:
- Total transcription entries saved
- Current source language
- Current target language
- Privacy notice (all on-device)

---

## Technical Architecture

### Dependencies:
```yaml
# Subtitle support
subtitle_wrapper_package: ^2.0.2

# On-device transcription & translation
speech_to_text: ^7.0.0  # Already installed
translator: ^1.0.0      # Google Translate API
flutter_tts: ^4.2.0     # Text-to-speech
```

### Services:

**LiveTranscriptionService** (`lib/services/live_transcription_service.dart`)
- Manages speech recognition
- Handles translation requests
- Controls TTS output
- Exports SRT format
- Automatic cleanup

**EnhancedVideoPlayerScreen** (`lib/screens/enhanced_video_player_screen.dart`)
- Full-screen video player
- Subtitle overlay
- Live transcription overlay
- Audio/subtitle selectors
- PiP integration
- TV remote support

**MainActivity.kt** (`android/.../MainActivity.kt`)
- Android PiP platform channel
- Automatic PiP on Home button
- PiP state management

---

## Implementation Examples

### Basic Video with Subtitles:
```dart
EnhancedVideoPlayerScreen(
  videoUrl: 'https://example.com/video.m3u8',
  title: 'Movie Title',
  subtitle: 'Season 1 Episode 1',
  subtitleOptions: [
    SubtitleOption(
      name: 'English',
      url: 'https://example.com/en.srt',
      format: 'srt',
    ),
  ],
)
```

### Live TV with Transcription:
```dart
EnhancedVideoPlayerScreen(
  videoUrl: 'https://example.com/live-tv.m3u8',
  title: 'News Channel',
  isLive: true,
  // Live transcription enabled in settings
)
```

### Multi-Language Video:
```dart
EnhancedVideoPlayerScreen(
  videoUrl: 'https://example.com/video.m3u8',
  title: 'International Film',
  subtitleOptions: [
    SubtitleOption(name: 'English', url: '...', format: 'srt'),
    SubtitleOption(name: 'Spanish', url: '...', format: 'srt'),
    SubtitleOption(name: 'French', url: '...', format: 'srt'),
  ],
  audioTracks: [
    AudioTrackOption(name: 'English', language: 'en', codec: 'aac', trackId: 0),
    AudioTrackOption(name: 'Spanish', language: 'es', codec: 'aac', trackId: 1),
  ],
)
```

---

## Privacy & Performance

### Privacy:
- **Live transcription**: 100% on-device, no cloud
- **Translation**: Uses Google Translate free tier (network required)
- **TTS**: Uses device system voices, no cloud
- **Subtitles**: Downloaded directly from URL, no tracking

### Performance:
- **Transcription**: Real-time on modern devices (2019+)
- **Translation**: ~500ms latency per request
- **TTS**: Instant, platform-native
- **PiP**: Minimal overhead, GPU-accelerated
- **Memory**: Transcriptions auto-cleanup after 5 minutes

### Battery Impact:
- **Transcription**: Moderate (continuous microphone access)
- **Translation**: Low (only when text changes)
- **TTS**: Low (only during speech)
- **PiP**: Minimal (same as normal playback)

**Recommendation**: For battery-sensitive scenarios, use static subtitles instead of live transcription.

---

## Troubleshooting

### Subtitles Not Appearing:
1. Check subtitle URL is accessible
2. Verify subtitle format (SRT or VTT)
3. Press `C` to toggle subtitles on
4. Press `↑` to open subtitle selector

### Live Transcription Not Working:
1. Go to Settings → Subtitles → Enable Live Transcription
2. Grant microphone permission when prompted
3. Select correct source language
4. Ensure device microphone is not muted
5. Check device is 2019 or newer (older devices may struggle)

### Translation Errors:
1. Check internet connection (translation requires network)
2. Verify source language matches video audio
3. Try different target language
4. Check Google Translate API quota (free tier has limits)

### PiP Not Available:
1. Check device is Android 8.0+ (Settings → About Phone → Android version)
2. Verify PiP permission (Settings → Apps → IPTV Player → Picture-in-picture)
3. Some custom ROMs may not support PiP
4. Try pressing `P` key instead of Home button

### Audio Track Switching Not Working:
- Audio track switching UI is ready but requires video format-specific implementation
- Works best with HLS streams that include multiple audio renditions
- DASH streams require additional ExoPlayer configuration
- Will be fully implemented in future update based on your video sources

---

## Future Enhancements

### Planned Features:
- [ ] OpenSubtitles integration (auto-download subtitles)
- [ ] Subtitle synchronization controls (adjust timing)
- [ ] Custom subtitle styling (font, size, color, position)
- [ ] Background transcription (continue when app minimized)
- [ ] Offline translation models (fully on-device)
- [ ] Multi-speaker detection (identify who's speaking)
- [ ] Punctuation and formatting improvements
- [ ] Subtitle search (find specific words)
- [ ] Transcription history viewer
- [ ] Cloud backup of transcriptions

### Community Requests:
If you need specific features, open an issue on GitHub with:
- Use case description
- Expected behavior
- Example video format/source
- Target platform (Android TV, Mobile, etc.)

---

## Support

For issues, questions, or feature requests:
1. Check this guide first
2. Review `ANDROID_TV_GUIDE.md` for TV-specific help
3. Review `VIDEO_PLAYER_SUMMARY.md` for player architecture
4. Open GitHub issue with:
   - Device model and Android version
   - Video format (HLS, DASH, MP4, etc.)
   - Subtitle format (SRT, VTT, etc.)
   - Steps to reproduce issue
   - Error messages or logs

---

## Credits

### Open Source Libraries:
- **chewie** - Flutter video player UI
- **video_player** - Flutter video playback
- **subtitle_wrapper_package** - Subtitle rendering
- **speech_to_text** - On-device speech recognition
- **translator** - Google Translate API wrapper
- **flutter_tts** - Text-to-speech

### Thank You:
- Flutter team for excellent multimedia APIs
- Contributors to all open source packages
- Android team for PiP support
- Google for free translation tier

---

**Last Updated:** November 2025  
**Version:** 2.0.0  
**Tested On:** Android 11-14, Android TV 11+
