import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';

/// Service for live transcription using platform speech recognition
///
/// Note: This uses platform APIs (Google/Apple) and requires internet.
/// For true on-device transcription, see on_device_transcription_service.dart
///
/// Features:
/// - Real-time speech-to-text from video audio
/// - Text-to-speech output
/// - Subtitle generation and display
class LiveTranscriptionService extends ChangeNotifier {
  final stt.SpeechToText _speech = stt.SpeechToText();
  final FlutterTts _tts = FlutterTts();

  bool _isInitialized = false;
  bool _isTranscribing = false;
  bool _isTranslating = false;
  bool _isTTSEnabled = false;

  String _sourceLanguage = 'en-US';
  String _targetLanguage = 'en';

  final List<TranscriptionEntry> _transcriptions = [];
  String _currentText = '';
  String _currentTranslatedText = '';

  Timer? _cleanupTimer;

  // Getters
  bool get isInitialized => _isInitialized;
  bool get isTranscribing => _isTranscribing;
  bool get isTranslating => _isTranslating;
  bool get isTTSEnabled => _isTTSEnabled;
  String get sourceLanguage => _sourceLanguage;
  String get targetLanguage => _targetLanguage;
  String get currentText => _currentText;
  String get currentTranslatedText => _currentTranslatedText;
  List<TranscriptionEntry> get transcriptions =>
      List.unmodifiable(_transcriptions);

  // Get the latest subtitle text (last 3 entries)
  String get latestSubtitles {
    if (_transcriptions.isEmpty) return '';

    final recent = _transcriptions.length > 3
        ? _transcriptions.sublist(_transcriptions.length - 3)
        : _transcriptions;

    return recent
        .map((e) => _isTranslating ? e.translatedText : e.originalText)
        .join('\n');
  }

  /// Initialize the transcription service
  Future<bool> initialize() async {
    if (_isInitialized) return true;

    try {
      // Initialize speech recognition
      _isInitialized = await _speech.initialize(
        onError: (error) {
          debugPrint('Speech recognition error: $error');
          notifyListeners();
        },
        onStatus: (status) {
          debugPrint('Speech recognition status: $status');
          if (status == 'done' || status == 'notListening') {
            _isTranscribing = false;
            notifyListeners();
          }
        },
      );

      // Initialize TTS
      if (_isInitialized) {
        await _tts.setLanguage(_targetLanguage);
        await _tts.setSpeechRate(0.9);
        await _tts.setVolume(0.8);
        await _tts.setPitch(1.0);
      }

      // Start cleanup timer (remove old transcriptions every 30 seconds)
      _cleanupTimer = Timer.periodic(const Duration(seconds: 30), (_) {
        _cleanupOldTranscriptions();
      });

      debugPrint('Transcription service initialized: $_isInitialized');
      notifyListeners();
      return _isInitialized;
    } catch (e) {
      debugPrint('Failed to initialize transcription service: $e');
      _isInitialized = false;
      notifyListeners();
      return false;
    }
  }

  /// Start live transcription
  Future<void> startTranscription() async {
    if (!_isInitialized) {
      await initialize();
    }

    if (_isTranscribing) return;

    try {
      _isTranscribing = true;
      notifyListeners();

      await _speech.listen(
        onResult: (result) {
          _currentText = result.recognizedWords;

          if (result.finalResult) {
            _addTranscription(_currentText);
            _currentText = '';
          }

          notifyListeners();
        },
        listenFor: const Duration(seconds: 30),
        pauseFor: const Duration(seconds: 3),
        partialResults: true,
        localeId: _sourceLanguage,
        listenMode: stt.ListenMode.dictation,
      );
    } catch (e) {
      debugPrint('Failed to start transcription: $e');
      _isTranscribing = false;
      notifyListeners();
    }
  }

  /// Stop live transcription
  Future<void> stopTranscription() async {
    if (!_isTranscribing) return;

    try {
      await _speech.stop();
      _isTranscribing = false;
      _currentText = '';
      notifyListeners();
    } catch (e) {
      debugPrint('Failed to stop transcription: $e');
    }
  }

  /// Add a new transcription entry and translate if needed
  void _addTranscription(String text) {
    if (text.trim().isEmpty) return;

    final entry = TranscriptionEntry(
      originalText: text,
      timestamp: DateTime.now(),
      sourceLanguage: _sourceLanguage,
      targetLanguage: _targetLanguage,
    );

    _transcriptions.add(entry);

    // Translate if translation is enabled
    if (_isTranslating && _sourceLanguage != _targetLanguage) {
      _translateEntry(entry);
    }

    // Limit to 100 entries
    if (_transcriptions.length > 100) {
      _transcriptions.removeAt(0);
    }

    notifyListeners();
  }

  /// Translate a transcription entry
  Future<void> _translateEntry(TranscriptionEntry entry) async {
    try {
      // Translation removed - use MLKitTranslationService instead
      // This is just a placeholder for now
      entry.translatedText = entry.originalText;
      _currentTranslatedText = entry.originalText;

      // Speak text if TTS is enabled
      if (_isTTSEnabled && entry.originalText.isNotEmpty) {
        await _tts.speak(entry.originalText);
      }

      notifyListeners();
    } catch (e) {
      debugPrint('Translation failed: $e');
      entry.translatedText = entry.originalText;
    }
  }

  /// Enable or disable translation
  void setTranslationEnabled(bool enabled) {
    _isTranslating = enabled;
    notifyListeners();
  }

  /// Enable or disable text-to-speech
  void setTTSEnabled(bool enabled) {
    _isTTSEnabled = enabled;
    if (!enabled) {
      _tts.stop();
    }
    notifyListeners();
  }

  /// Set source language for transcription
  Future<void> setSourceLanguage(String languageCode) async {
    _sourceLanguage = languageCode;
    if (_isTranscribing) {
      await stopTranscription();
      await startTranscription();
    }
    notifyListeners();
  }

  /// Set target language for translation
  Future<void> setTargetLanguage(String languageCode) async {
    _targetLanguage = languageCode;
    await _tts.setLanguage(languageCode);

    // Re-translate recent entries
    if (_isTranslating) {
      final recentEntries = _transcriptions.length > 5
          ? _transcriptions.sublist(_transcriptions.length - 5)
          : _transcriptions;

      for (final entry in recentEntries) {
        await _translateEntry(entry);
      }
    }

    notifyListeners();
  }

  /// Clear all transcriptions
  void clearTranscriptions() {
    _transcriptions.clear();
    _currentText = '';
    _currentTranslatedText = '';
    notifyListeners();
  }

  /// Clean up old transcriptions (older than 5 minutes)
  void _cleanupOldTranscriptions() {
    final cutoff = DateTime.now().subtract(const Duration(minutes: 5));
    _transcriptions.removeWhere((entry) => entry.timestamp.isBefore(cutoff));
    notifyListeners();
  }

  /// Convert speech_to_text locale format to translator language code
  String _getLanguageCode(String locale) {
    // Extract language code from locale (e.g., 'en-US' -> 'en')
    return locale.split('-').first.split('_').first;
  }

  /// Export transcriptions as SRT subtitle file
  String exportAsSRT() {
    final buffer = StringBuffer();

    for (int i = 0; i < _transcriptions.length; i++) {
      final entry = _transcriptions[i];
      final text = _isTranslating ? entry.translatedText : entry.originalText;

      if (text.isEmpty) continue;

      // SRT format: sequence number, timestamp, text, blank line
      buffer.writeln(i + 1);

      // Format timestamp (HH:MM:SS,mmm --> HH:MM:SS,mmm)
      final start = _formatSRTTimestamp(entry.timestamp);
      final end = _formatSRTTimestamp(
        entry.timestamp.add(const Duration(seconds: 3)),
      );
      buffer.writeln('$start --> $end');

      buffer.writeln(text);
      buffer.writeln();
    }

    return buffer.toString();
  }

  /// Format timestamp for SRT subtitle format
  String _formatSRTTimestamp(DateTime time) {
    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padLeft(2, '0');
    final seconds = time.second.toString().padLeft(2, '0');
    final milliseconds = time.millisecond.toString().padLeft(3, '0');
    return '$hours:$minutes:$seconds,$milliseconds';
  }

  /// Get available source languages
  List<LanguageOption> getAvailableSourceLanguages() {
    return [
      LanguageOption(code: 'en-US', name: 'English (US)'),
      LanguageOption(code: 'en-GB', name: 'English (UK)'),
      LanguageOption(code: 'es-ES', name: 'Spanish (Spain)'),
      LanguageOption(code: 'es-MX', name: 'Spanish (Mexico)'),
      LanguageOption(code: 'fr-FR', name: 'French'),
      LanguageOption(code: 'de-DE', name: 'German'),
      LanguageOption(code: 'it-IT', name: 'Italian'),
      LanguageOption(code: 'pt-BR', name: 'Portuguese (Brazil)'),
      LanguageOption(code: 'pt-PT', name: 'Portuguese (Portugal)'),
      LanguageOption(code: 'ru-RU', name: 'Russian'),
      LanguageOption(code: 'ja-JP', name: 'Japanese'),
      LanguageOption(code: 'ko-KR', name: 'Korean'),
      LanguageOption(code: 'zh-CN', name: 'Chinese (Simplified)'),
      LanguageOption(code: 'ar-SA', name: 'Arabic'),
      LanguageOption(code: 'hi-IN', name: 'Hindi'),
    ];
  }

  /// Get available target languages for translation
  List<LanguageOption> getAvailableTargetLanguages() {
    return [
      LanguageOption(code: 'en', name: 'English'),
      LanguageOption(code: 'es', name: 'Spanish'),
      LanguageOption(code: 'fr', name: 'French'),
      LanguageOption(code: 'de', name: 'German'),
      LanguageOption(code: 'it', name: 'Italian'),
      LanguageOption(code: 'pt', name: 'Portuguese'),
      LanguageOption(code: 'ru', name: 'Russian'),
      LanguageOption(code: 'ja', name: 'Japanese'),
      LanguageOption(code: 'ko', name: 'Korean'),
      LanguageOption(code: 'zh-cn', name: 'Chinese (Simplified)'),
      LanguageOption(code: 'ar', name: 'Arabic'),
      LanguageOption(code: 'hi', name: 'Hindi'),
      LanguageOption(code: 'nl', name: 'Dutch'),
      LanguageOption(code: 'pl', name: 'Polish'),
      LanguageOption(code: 'tr', name: 'Turkish'),
    ];
  }

  @override
  void dispose() {
    _cleanupTimer?.cancel();
    _speech.cancel();
    _tts.stop();
    super.dispose();
  }
}

/// Transcription entry with original and translated text
class TranscriptionEntry {
  final String originalText;
  String translatedText;
  final DateTime timestamp;
  final String sourceLanguage;
  final String targetLanguage;

  TranscriptionEntry({
    required this.originalText,
    this.translatedText = '',
    required this.timestamp,
    required this.sourceLanguage,
    required this.targetLanguage,
  });
}

/// Language option for dropdowns
class LanguageOption {
  final String code;
  final String name;

  LanguageOption({required this.code, required this.name});
}
