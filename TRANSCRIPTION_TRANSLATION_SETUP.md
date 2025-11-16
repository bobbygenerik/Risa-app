// Transcription & Translation Setup Guide
// Complete configuration for live transcription and real-time translation

/// TRANSCRIPTION SETUP

// The app uses platform speech-to-text APIs:
// - Android: Google Speech Recognition API (free, built-in)
// - iOS: Speech Framework (free, built-in)
// - Web: Web Speech API

// Audio is captured from the video stream (not microphone)
// Path: Video Player → System Audio Path → Platform STT

// Configuration Options (in Settings Screen):
const TranscriptionConfig = {
  'enabled': false,        // Enable/disable transcription
  'language': 'en-US',     // Source language
  'displaySubtitles': true, // Show real-time subtitles
  'enableTTS': false,      // Enable text-to-speech output
  'autoExport': false,     // Auto-save transcripts
};

// Features:
// ✅ Real-time speech-to-text
// ✅ Multi-language support (platform-dependent)
// ✅ Automatic subtitle generation
// ✅ Text-to-speech output
// ✅ Transcript export (JSON/TXT)
// ✅ Cleanup old transcriptions (30 second intervals)

/// TRANSLATION SETUP

// The app uses Google ML Kit for on-device translation
// - 59 languages supported
// - Models downloaded on-demand (15-50 MB per language)
// - 100% offline after model download
// - Zero cloud API costs

// Configuration Options (in Settings Screen):
const TranslationConfig = {
  'enabled': false,           // Enable/disable translation
  'sourceLanguage': 'english', // TranslateLanguage enum
  'targetLanguage': 'spanish', // TranslateLanguage enum
  'autoTranslate': true,      // Auto-translate as text arrives
  'translateSubtitles': true, // Translate generated subtitles
};

// Supported Languages (59 total):
// Afrikaans, Albanian, Arabic, Belarusian, Bengali, Bosnian,
// Bulgarian, Catalan, Chinese Simplified, Chinese Traditional,
// Croatian, Czech, Danish, Dutch, English, Estonian, Finnish,
// French, German, Greek, Gujarati, Haitian Creole, Hebrew,
// Hindi, Hungarian, Icelandic, Indonesian, Irish, Italian,
// Japanese, Kannada, Korean, Latvian, Lithuanian, Macedonian,
// Malayalam, Marathi, Nepali, Norwegian, Odia, Persian, Polish,
// Portuguese, Punjabi, Romanian, Russian, Slovak, Slovenian,
// Spanish, Swedish, Tagalog, Tamil, Telugu, Thai, Turkish,
// Ukrainian, Urdu, Vietnamese

// Features:
// ✅ True on-device (no internet required after model download)
// ✅ 59 languages
// ✅ Auto-download language models
// ✅ Real-time text translation
// ✅ Subtitle translation
// ✅ Automatic model caching

/// INTEGRATION POINTS

// 1. Live Transcription is integrated in:
//    - Enhanced Video Player (settings overlay)
//    - Settings Screen (enable/disable, language selection)
//    - Subtitle display (on-video overlay)

// 2. Translation is integrated in:
//    - Settings Screen (source/target language selection)
//    - Live Transcription (auto-translate transcripts)
//    - Subtitle display (show translated subtitles)

// 3. Both services share:
//    - Subtitle management (storage, display, export)
//    - State management via Provider
//    - Error handling and user feedback
//    - Cleanup timers (remove old entries)

/// USAGE EXAMPLES

// In UI (Flutter):
Consumer<LiveTranscriptionService>(
  builder: (context, transcription, _) {
    return Column(
      children: [
        // Enable/disable
        SwitchListTile(
          title: const Text('Live Transcription'),
          value: transcription.isTranscribing,
          onChanged: (value) async {
            if (value) {
              await transcription.startTranscription();
            } else {
              await transcription.stopTranscription();
            }
          },
        ),
        
        // Language selection
        DropdownButton<String>(
          value: transcription.sourceLanguage,
          items: ['en-US', 'es-ES', 'fr-FR', 'de-DE']
              .map((lang) => DropdownMenuItem(
                value: lang,
                child: Text(lang),
              ))
              .toList(),
          onChanged: (lang) {
            if (lang != null) {
              transcription.setLanguage(lang);
            }
          },
        ),
        
        // Display current transcription
        if (transcription.currentText.isNotEmpty)
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              transcription.currentText,
              style: const TextStyle(color: Colors.white),
            ),
          ),
      ],
    );
  },
);

// Translation setup:
Consumer<MLKitTranslationService>(
  builder: (context, translation, _) {
    return Column(
      children: [
        SwitchListTile(
          title: const Text('Translation'),
          value: translation.isEnabled,
          onChanged: (value) {
            translation.setEnabled(value);
          },
        ),
        
        // Source language
        DropdownButton<TranslateLanguage>(
          value: translation.sourceLanguage,
          items: [
            TranslateLanguage.english,
            TranslateLanguage.spanish,
            TranslateLanguage.french,
            TranslateLanguage.german,
          ]
              .map((lang) => DropdownMenuItem(
                value: lang,
                child: Text(lang.name),
              ))
              .toList(),
          onChanged: (lang) async {
            if (lang != null) {
              await translation.setSourceLanguage(lang);
            }
          },
        ),
        
        // Target language
        DropdownButton<TranslateLanguage>(
          value: translation.targetLanguage,
          items: [
            TranslateLanguage.english,
            TranslateLanguage.spanish,
            TranslateLanguage.french,
            TranslateLanguage.german,
          ]
              .map((lang) => DropdownMenuItem(
                value: lang,
                child: Text(lang.name),
              ))
              .toList(),
          onChanged: (lang) async {
            if (lang != null) {
              await translation.setTargetLanguage(lang);
            }
          },
        ),
        
        // Show download progress
        if (translation.isDownloading)
          Column(
            children: [
              const Text('Downloading language models...'),
              LinearProgressIndicator(
                value: translation.downloadProgress,
              ),
              Text('${(translation.downloadProgress * 100).toStringAsFixed(0)}%'),
            ],
          ),
      ],
    );
  },
);

/// SETTINGS SCREEN INTEGRATION

// The Settings Screen has sections for:

// 1. Live Transcription Settings:
//    - Enable/disable toggle
//    - Source language selector
//    - Text-to-speech enable/disable
//    - TTS voice selection
//    - TTS speed slider
//    - Export transcript button

// 2. Translation Settings:
//    - Enable/disable toggle
//    - Source language selector
//    - Target language selector
//    - Download progress indicator
//    - Model cache size display
//    - Clear cache button

// Location: Settings Screen → Cloud & AI Tab

/// KEYBOARD SHORTCUTS (Enhanced Video Player)

// T: Toggle transcription on/off
// L: Change transcription language
// S: Toggle subtitle display
// Ctrl+S: Export transcript to file
// Shift+T: Toggle translation on/off

/// ERROR HANDLING

// Transcription errors:
// - Device doesn't support speech recognition
// - Microphone permission denied
// - No internet (for cloud-based STT fallback)

// Translation errors:
// - Language model not available
// - Model download failed (retry with backoff)
// - Insufficient device storage
// - Text is empty or invalid

// All errors are caught and user is notified in UI
// Automatic retry for network failures

/// DATA PERSISTENCE

// Saved to SharedPreferences:
// - transcriptionEnabled: bool
// - transcriptionLanguage: String
// - translationEnabled: bool
// - sourceLanguage: String
// - targetLanguage: String
// - ttsEnabled: bool
// - ttsPitch, speed, volume: double

// Persistence flow:
// 1. User changes setting in UI
// 2. Provider updates state
// 3. Settings page listens and saves to SharedPreferences
// 4. On app restart, settings are loaded from preferences

/// PERFORMANCE NOTES

// Transcription:
// - Real-time processing (minimal latency)
// - Platform APIs handle heavy lifting
// - UI updates debounced to prevent jank

// Translation:
// - First-time model download: 30-60 seconds
// - Subsequent translations: <1 second per sentence
// - Runs on background isolate (doesn't block UI)

/// TESTING CHECKLIST

// Before deployment:
// - [ ] Transcription works with video stream audio
// - [ ] Transcription detects silence properly
// - [ ] Subtitle display shows correctly over video
// - [ ] Translation downloads models successfully
// - [ ] Translation accuracy acceptable for use cases
// - [ ] TTS voices work and can be selected
// - [ ] Settings persist across app restarts
// - [ ] Cleanup removes old transcriptions
// - [ ] Export saves transcripts to file
// - [ ] Both work together (transcribe + translate)

/// DEPLOYMENT CHECKLIST

// Permissions needed (AndroidManifest.xml):
// - INTERNET (for translation model download)
// - MODIFY_AUDIO_SETTINGS (TTS)
// - RECORD_AUDIO (platform STT)

// iOS Info.plist:
// - NSMicrophoneUsageDescription
// - NSSpeechRecognitionUsageDescription

/// FUTURE ENHANCEMENTS

// - [ ] Custom speech models (higher accuracy)
// - [ ] Offline Whisper integration (more accurate)
// - [ ] Multi-speaker identification
// - [ ] Punctuation correction
// - [ ] Translation quality selection
// - [ ] Context-aware translation
// - [ ] User dictionary for custom terms
// - [ ] Export to SRT/VTT subtitle files
// - [ ] Automatic language detection
// - [ ] Batch processing for VOD content
