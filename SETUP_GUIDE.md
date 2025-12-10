# IPTV Player Setup Guide

This guide covers the final 5% setup needed for external service integrations.

## 🔧 Required API Keys & OAuth Setup

### 1. Cloud Sync (Removed)

Drive-based cloud sync has been removed from this project. Use the local export/import backup workflow in `Settings > Account` to move data between devices.

If you need cloud sync in a fork, implement a provider-agnostic solution (S3, WebDAV, or custom API) and handle credentials securely.

### 2. Real-Debrid Integration (Optional - for premium links)

**What it does:** Provides unrestricted download links from premium hosters

**Setup:**
1. Users create account at [real-debrid.com](https://real-debrid.com)
2. Users get API key from [real-debrid.com/apitoken](https://real-debrid.com/apitoken)
3. Users enter API key in app settings
4. No developer setup required - users provide their own keys

**Cost:** FREE API, users pay for Real-Debrid subscription (~$4/month)

### 3. OpenSubtitles (Already Configured)

**What it does:** Automatic subtitle downloading

**Status:** ✅ Already configured with free API key
- Uses community API key included in app
- Users can optionally create accounts for higher limits
- No developer setup required

**Cost:** FREE

### 4. TMDB Integration (Optional - for movie metadata)

**What it does:** Enhanced movie/series information and posters

**Setup:**
1. Create account at [themoviedb.org](https://www.themoviedb.org)
2. Get API key from [Settings > API](https://www.themoviedb.org/settings/api)
3. Update `lib/config/oauth_config.dart`:
   ```dart
   static const String tmdbApiKey = 'your-tmdb-api-key';
   ```

**Cost:** FREE (up to 40 requests/10 seconds)

## 🤖 AI Models Setup

### Whisper Speech Recognition

**Status:** ✅ Fully implemented
- Auto-downloads from Hugging Face on first use
- 40MB one-time download
- Works 100% offline after download
- No setup required


**Status:** ⚠️ Needs model files
- UI complete, model loading implemented
- Requires TensorFlow Lite model files
- Models available from TensorFlow Hub
- Place models in `assets/models/` directory

**Setup:**
1. Download ESRGAN model from [TensorFlow Hub](https://tfhub.dev/captain-pool/lite-model/esrgan-tf2/1/default/1?lite-format=tflite)
2. Save as `assets/models/esrgan_x2.tflite`
3. Rebuild app

## 📱 Platform-Specific Notes

### Android
- All services supported
- Cloud sync: removed (use local export/import backups)
- Hardware acceleration for AI

### iOS  
- All services supported
- Cloud sync: removed (use local export/import backups)
- Hardware acceleration for AI

### Web
 - Limited service support
 - No provider-specific cloud sync
- OpenSubtitles and Real-Debrid work

- ### Desktop (Linux/Windows/macOS)
- Limited service support
- No provider-specific cloud sync
- OpenSubtitles and Real-Debrid work

## 🚀 Quick Start (Minimal Setup)

For basic functionality, no external setup is required:

1. ✅ Playlist loading (M3U/Xtream) - Works out of box
2. ✅ EPG support - Works out of box  
3. ✅ Video playback - Works out of box
4. ✅ Favorites & settings - Works out of box
5. ✅ OpenSubtitles - Works out of box
6. ✅ Whisper transcription - Auto-downloads on first use

**Optional enhancements require API keys above.**

## 🔒 Security Notes

- Never commit real API keys to version control
- Use environment variables in production
- OAuth tokens are stored securely by platform
- All AI processing happens on-device (private)

## 📞 Support

If you need help with setup:
1. Check the in-app Help & About section
2. Verify API keys are correctly formatted
3. Ensure internet connection for initial downloads
4. Check platform compatibility above

**The app is 95% functional without any external setup. API keys only enable optional cloud and premium features.**