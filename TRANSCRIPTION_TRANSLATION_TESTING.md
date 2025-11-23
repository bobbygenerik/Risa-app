# 🧪 Transcription & Translation Testing Guide

## Quick Start

### Prerequisites
- Android device or emulator (API 21+)
- Latest APK: `/root/iptv-player/build/app/outputs/flutter-apk/app-debug.apk`
- WiFi connection (for translation model download)

---

## 📋 Test Scenarios

### Test 1: Basic Transcription Setup

**Steps:**
1. Launch app
2. Go to Settings → Cloud & AI tab
3. Find "Live Transcription" section
4. Toggle "Enable Live Transcription" to ON
5. Select source language (default: Device language)

**Expected Results:**
- ✅ Toggle works smoothly
- ✅ Language selector shows available languages
- ✅ Selection persists after app restart
- ✅ No crashes or errors

**Pass/Fail:** ___________

---

### Test 2: Video Stream Transcription

**Steps:**
1. Enable Live Transcription in Settings
2. Play any video stream (IPTV, YouTube, etc.) that includes spoken dialogue
3. Approve the Android "Start capturing audio" permission prompt if it appears
4. Check for transcription text at bottom of screen

**Expected Results:**
- ✅ Subtitle box appears at bottom of video
- ✅ Text appears 1-2 seconds after speaking
- ✅ Text is reasonably accurate
- ✅ No audio playback interruption
- ✅ Text accumulates and clears automatically (30 sec)

**Pass/Fail:** ___________

**Notes:**
```
- Quality depends on stream audio clarity
- Accent/dialect in the broadcast affects accuracy
- Background noise inside the source video may reduce accuracy
```

---

### Test 3: Translation Model Download

**Steps:**
1. Enable Live Transcription
2. Enable Translation toggle
3. Select a target language (e.g., Spanish)
4. Observe model download progress

**Expected Results:**
- ✅ Download progress appears
- ✅ Takes ~30-60 seconds on WiFi
- ✅ Shows percentage completed
- ✅ Completes without errors
- ✅ Translation becomes available immediately after

**Pass/Fail:** ___________

**Notes:**
```
- First download takes longer (model cached)
- Requires WiFi (model is ~15-50 MB)
- Subsequent translations are fast (<1 sec)
```

---

### Test 4: Real-Time Translation

**Steps:**
1. Enable Live Transcription + Translation
2. Select language pair (e.g., English → Spanish)
3. Play video and speak
4. Observe translated subtitle

**Expected Results:**
- ✅ Original text shown in one color
- ✅ Translated text shown in another color
- ✅ Translation appears 1-2 seconds after original
- ✅ Both work simultaneously without lag

**Pass/Fail:** ___________

**Example:**
```
Original (English):  "Hello, how are you?"
Translated (Spanish): "Hola, ¿cómo estás?"
```

---

### Test 5: Text-to-Speech (TTS)

**Steps:**
1. Enable Live Transcription + Translation + TTS
2. Play video and speak
3. Listen for audio output

**Expected Results:**
- ✅ Transcribed text is spoken aloud
- ✅ Translated text is spoken (if translation enabled)
- ✅ Voice is clear and understandable
- ✅ Speed and pitch are adjustable in Settings

**Pass/Fail:** ___________

---

### Test 6: Export Transcriptions

**Steps:**
1. Enable Live Transcription
2. Play video for 30+ seconds, speak multiple times
3. Go back to Settings
4. Click "Export Transcriptions" button
5. Review exported data

**Expected Results:**
- ✅ Export dialog appears
- ✅ Shows number of entries
- ✅ Format is SRT (SubRip Text)
- ✅ Can be used in video players
- ✅ Timestamps are accurate

**Pass/Fail:** ___________

**Expected SRT Format:**
```
1
00:00:05,000 --> 00:00:07,000
Hello, how are you?

2
00:00:08,000 --> 00:00:10,000
I'm doing well, thanks!
```

---

### Test 7: Settings Persistence

**Steps:**
1. Enable Live Transcription + Translation
2. Select specific languages
3. Close app completely
4. Reopen app
5. Go to Settings

**Expected Results:**
- ✅ Settings are remembered
- ✅ Same toggles are still enabled
- ✅ Same language selections are active
- ✅ Models remain downloaded

**Pass/Fail:** ___________

---

### Test 8: Performance Impact

**Steps:**
1. Play video without Transcription
2. Note general performance (smoothness, battery usage)
3. Enable Transcription + Translation
4. Play same video
5. Compare performance

**Expected Results:**
- ✅ Minimal FPS drop (<5%)
- ✅ No stuttering or freezing
- ✅ Audio/video stays in sync
- ✅ Reasonable battery drain increase
- ✅ Device doesn't overheat

**Pass/Fail:** ___________

---

### Test 9: Error Recovery

**Steps:**
1. Enable Live Transcription
2. Interrupt translation download (toggle off/on quickly)
3. Try to enable again
4. Observe error handling

**Expected Results:**
- ✅ No crashes
- ✅ Clear error message shown
- ✅ Can retry without restarting app
- ✅ Auto-retry on network reconnection

**Pass/Fail:** ___________

---

### Test 10: Language Support

**Test at least 5 languages:**

| Language | Source | Target | Status |
|----------|--------|--------|--------|
| English  | ✓      | ✓      | _____ |
| Spanish  | ✓      | ✓      | _____ |
| French   | ✓      | ✓      | _____ |
| German   | ✓      | ✓      | _____ |
| Chinese  | ✗      | ✓      | _____ |

**Expected Results:**
- ✅ Source language: Platform STT supports it
- ✅ Target language: Translation model available
- ✅ Both download without errors
- ✅ Accuracy acceptable for each language

---

## 🔍 Deep Dive Testing

### Test 11: Audio Quality vs Accuracy

**Steps:**
1. Enable Live Transcription
2. Play video and speak at different volumes
3. Vary background noise levels
4. Test with different accents

**Measure:**
- Accuracy at normal volume: _____%
- Accuracy at low volume: _____%
- Accuracy at high volume: _____%
- Accuracy with background noise: _____%
- Accuracy with accent: _____%

**Notes:**
```
Quality depends on:
- Audio quality of the stream (bitrate, compression)
- Mixing/background noise within the source content
- Accent/dialect present in the broadcast
- Speech rate of the speaker(s)
```

---

### Test 12: Language Pair Combinations

**Test matrix (at least 9 combinations):**

| Source → Target | Accuracy | Speed | Issues |
|-----------------|----------|-------|--------|
| EN → ES         | ___%     | __s   | _____ |
| EN → FR         | ___%     | __s   | _____ |
| EN → DE         | ___%     | __s   | _____ |
| ES → EN         | ___%     | __s   | _____ |
| ES → FR         | ___%     | __s   | _____ |
| FR → EN         | ___%     | __s   | _____ |
| DE → EN         | ___%     | __s   | _____ |
| ZH → EN         | ___%     | __s   | _____ |
| JA → EN         | ___%     | __s   | _____ |

---

### Test 13: Model Caching

**Steps:**
1. Download Spanish language model
2. Note download time: _____ seconds
3. Close app
4. Reopen and enable Spanish translation again
5. Note load time: _____ seconds

**Expected Results:**
- ✅ First download: 30-60 seconds
- ✅ Model cached on disk
- ✅ Subsequent loads: <1 second
- ✅ No re-download needed

---

### Test 14: Real Stream Testing

**Test with real IPTV streams:**

| Stream Type | Codec | Resolution | Transcription | Translation | Issues |
|-------------|-------|-------------|---------------|-------------|--------|
| Live TV     | H.264 | 1080p       | ✓/✗           | ✓/✗         | _____ |
| Live TV     | H.265 | 1080p       | ✓/✗           | ✓/✗         | _____ |
| VOD         | H.264 | 720p        | ✓/✗           | ✓/✗         | _____ |
| VOD         | H.265 | 720p        | ✓/✗           | ✓/✗         | _____ |
| YouTube     | VP9   | 1080p       | ✓/✗           | ✓/✗         | _____ |

---

## 📊 Performance Metrics

**Baseline (no Transcription/Translation):**
- CPU Usage: _____%
- Memory: ______ MB
- Battery/Hour: ____% drain
- FPS: _____ (smooth/acceptable)

**With Transcription:**
- CPU Usage: _____%
- Memory: ______ MB
- Battery/Hour: ____% drain
- FPS: _____ (smooth/acceptable)

**With Transcription + Translation:**
- CPU Usage: _____%
- Memory: ______ MB
- Battery/Hour: ____% drain
- FPS: _____ (smooth/acceptable)

**Analysis:**
```
CPU increase acceptable if <20%
Memory increase acceptable if <200 MB
Battery drain acceptable if <15% more per hour
FPS stable if no drops below 24 FPS
```

---

## 🐛 Issue Reporting Template

**If you find an issue, document it here:**

### Issue #1
**Title:** _________________________________

**Severity:** [ ] Critical [ ] High [ ] Medium [ ] Low

**Steps to Reproduce:**
1. ___________________________________
2. ___________________________________
3. ___________________________________

**Expected Behavior:**
_________________________________

**Actual Behavior:**
_________________________________

**System Info:**
- Device: _____________________________
- Android Version: _____________________
- App Version: __________________________
- Languages: __________________________

**Logs/Error Messages:**
```
[Paste any error logs here]
```

**Workaround (if any):**
_________________________________

---

## ✅ Completion Checklist

- [ ] Test 1: Basic Setup (PASS/FAIL: ____)
- [ ] Test 2: Video Transcription (PASS/FAIL: ____)
- [ ] Test 3: Model Download (PASS/FAIL: ____)
- [ ] Test 4: Real-Time Translation (PASS/FAIL: ____)
- [ ] Test 5: Text-to-Speech (PASS/FAIL: ____)
- [ ] Test 6: Export Transcriptions (PASS/FAIL: ____)
- [ ] Test 7: Settings Persistence (PASS/FAIL: ____)
- [ ] Test 8: Performance (PASS/FAIL: ____)
- [ ] Test 9: Error Recovery (PASS/FAIL: ____)
- [ ] Test 10: Language Support (PASS/FAIL: ____)

**Overall Result:** [ ] PASS [ ] FAIL

**Comments:**
```
_________________________________________________
_________________________________________________
_________________________________________________
```

---

## 📞 Support

**Issues with Transcription?**
- Check the Android "capture audio" (MediaProjection) permission in Settings → Apps → IPTV Player → Display over other apps / Capture audio
- Ensure WiFi for model download
- Check device has sufficient storage (>500 MB free)
- See `WhisperTranscriptionService` logs

**Issues with Translation?**
- Ensure WiFi during first model download
- Check device storage (models are 15-50 MB each)
- See `MLKitTranslationService` logs
- Verify language pair is supported

**Performance Issues?**
- Try "Balanced" quality preset instead of "Quality"
- Limit number of downloaded language models
- Reduce subtitle update frequency
- Use 4G/WiFi instead of 3G

---

## 🚀 Sign-Off

**Tested By:** ________________________  
**Date:** ________________________  
**Overall Status:** ☐ READY ☐ ISSUES FOUND ☐ NEEDS REWORK

**Recommendation:**
```
[ ] Ready for production
[ ] Ready with known issues (document above)
[ ] Needs fixes before deployment
[ ] Needs full re-test after changes
```

**Sign-Off:**
_________________________________
