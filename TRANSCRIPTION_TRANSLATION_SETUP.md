// Transcription & Translation Setup Guide
// Complete configuration for live transcription and real-time translation

/// TRANSCRIPTION SETUP

// The app uses on-device Whisper TFLite models for speech-to-text:
// - Android: Audio playback capture (MediaProjection + AudioRecord) streams PCM into Dart
// - WhisperTranscriptionService converts PCM to mel spectrogram + decodes tokens
// - Translation + TTS remain 100% on-device after initial downloads

// Audio path: Video Player → Android playback capture → EventChannel stream → WhisperTranscriptionService

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
Consumer<WhisperTranscriptionService>(
  builder: (context, transcription, _) {
    return Column(
      children: [
        SwitchListTile(
          title: const Text('Whisper Live Captions'),
          subtitle: Text(
            transcription.isWhisperLoaded
                ? 'Runs 100% on-device once the Whisper model is downloaded.'
                : 'Download a Whisper model in AI Settings to enable captions.',
          ),
          value: transcription.isTranscribing,
          onChanged: transcription.isWhisperLoaded
              ? (value) async {
                  if (value) {
                    await transcription.startTranscription();
                  } else {
                    await transcription.stopTranscription();
                  }
                }
              : null,
        ),
        SwitchListTile(
          title: const Text('Translate captions'),
          value: transcription.isTranslating,
          onChanged: (value) async {
            transcription.setTranslationEnabled(value);
            if (value) {
              await transcription.downloadTranslationModels();
            }
          },
        ),
        
        // Source language (spoken audio)
        DropdownButton<TranslateLanguage>(
          value: transcription.sourceLanguage,
          items: TranslateLanguage.values
              .map((lang) => DropdownMenuItem(
                    value: lang,
                    child: Text(lang.name),
                  ))
              .toList(),
          onChanged: (lang) async {
            if (lang != null) {
              await transcription.setSourceLanguage(lang);
            }
          },
        ),
        
        // Target language (translated captions)
        DropdownButton<TranslateLanguage>(
          value: transcription.targetLanguage,
          items: TranslateLanguage.values
              .map((lang) => DropdownMenuItem(
                    value: lang,
                    child: Text(lang.name),
                  ))
              .toList(),
          onChanged: (lang) async {
            if (lang != null) {
              await transcription.setTargetLanguage(lang);
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
              transcription.isTranslating
                  ? transcription.currentTranslatedText
                  : transcription.currentText,
              style: const TextStyle(color: Colors.white),
            ),
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
// - Device below Android 10 cannot grant playback capture
// - Audio capture (MediaProjection) permission denied
// - Whisper model missing or failed to load

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
