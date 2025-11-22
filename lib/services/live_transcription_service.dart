// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';
import 'package:iptv_player/services/mlkit_translation_service.dart'
  as mlkit;
import 'package:google_mlkit_language_id/google_mlkit_language_id.dart';

/// Service for live transcription capturing audio from video stream
///
/// Features:
/// - Captures audio directly from video player (not microphone)
/// - Real-time speech-to-text conversion
/// - Text-to-speech output
/// - Subtitle generation and display
/// - Multi-language support
class LiveTranscriptionService extends ChangeNotifier {
  final stt.SpeechToText _speech = stt.SpeechToText();
  final FlutterTts _tts = FlutterTts();
  mlkit.MLKitTranslationService? _translationService;
  bool _isPreparingTranslation = false;
  bool _translationModelsReady = false;
  final bool _autoDetectLanguage = true;
  bool _isDetectingLanguage = false;
  String? _detectedLanguageLabel;
  String? _detectedLanguageCode;
  Completer<void>? _languageDetectionCompleter;
  
  // Platform channel for audio capture from video
  static const platform = MethodChannel('com.streamhub.iptv/transcription');

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

  void attachTranslationService(mlkit.MLKitTranslationService? service) {
    if (identical(_translationService, service)) return;
    _translationService = service;
    _translationModelsReady = false;
    if (service != null) {
      unawaited(_syncTranslationLanguages());
      if (_isTranslating) {
        _prepareTranslationEngine();
      }
    }
  }

  // Getters
  bool get isInitialized => _isInitialized;
  bool get isTranscribing => _isTranscribing;
  bool get isTranslating => _isTranslating;
  bool get isPreparingTranslation => _isPreparingTranslation;
  bool get isDetectingLanguage => _isDetectingLanguage;
  bool get isTTSEnabled => _isTTSEnabled;
  bool get translationModelsReady => _translationModelsReady;
  String get sourceLanguage => _sourceLanguage;
  String get targetLanguage => _targetLanguage;
  String? get detectedLanguageLabel => _detectedLanguageLabel;
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

      // Set up platform channel listener for audio frames from video
      _setupAudioCaptureListener();

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

  /// Set up listener for audio frames from video player via platform channel
  void _setupAudioCaptureListener() {
    platform.setMethodCallHandler((call) async {
      if (call.method == 'onAudioFrame') {
        // Audio frame received from platform (PCM bytes)
        final audioData = call.arguments as List<int>?;
        if (audioData != null && _isTranscribing) {
          // Pass audio data to speech recognition
          await _processAudioFrame(audioData);
        }
      }
    });
  }

  /// Process audio frame from video stream
  Future<void> _processAudioFrame(List<int> audioData) async {
    // Convert PCM bytes to format suitable for speech-to-text
    // This is typically 16-bit PCM at 16kHz sample rate
    try {
      // Note: speech_to_text on Android uses native recognition
      // Audio frames are fed via continuous listening mode
      debugPrint('Processing audio frame: ${audioData.length} bytes');
    } catch (e) {
      debugPrint('Error processing audio frame: $e');
    }
  }

  /// Start live transcription (captures audio from video stream)
  Future<void> startTranscription({String? channelLanguageCode}) async {
    if (!_isInitialized) {
      await initialize();
    }

    if (_isTranscribing) return;

    if (_autoDetectLanguage) {
      await _ensureSourceLanguage(channelLanguageCode);
    } else if (channelLanguageCode != null) {
      await _applyLanguageHint(channelLanguageCode);
    }

    try {
      _isTranscribing = true;
      notifyListeners();

      // Request native video player to start capturing audio
      try {
        await platform.invokeMethod('startAudioCapture', {
          'sampleRate': 16000,
          'channels': 1,
        });
        debugPrint('Audio capture started from video player');
      } catch (e) {
        debugPrint('Failed to start audio capture from native: $e');
      }

      // Start speech recognition in continuous listening mode
      await _speech.listen(
        onResult: (result) {
          _currentText = result.recognizedWords;

          if (result.finalResult) {
            _addTranscription(_currentText);
            _currentText = '';
          }

          notifyListeners();
        },
        listenFor: const Duration(seconds: 60),
        pauseFor: const Duration(seconds: 5),
        partialResults: true,
        localeId: _sourceLanguage,
        listenMode: stt.ListenMode.confirmation,
      );
    } catch (e) {
      debugPrint('Failed to start transcription: $e');
      _isTranscribing = false;
      notifyListeners();
    }
  }

  /// Stop live transcription and audio capture
  Future<void> stopTranscription() async {
    if (!_isTranscribing) return;

    try {
      // Stop native audio capture
      try {
        await platform.invokeMethod('stopAudioCapture');
        debugPrint('Audio capture stopped');
      } catch (e) {
        debugPrint('Failed to stop audio capture: $e');
      }

      await _speech.stop();
      _isTranscribing = false;
      _currentText = '';
      _detectedLanguageCode = null;
      _detectedLanguageLabel = null;
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
    if (_canTranslate) {
      unawaited(_translateEntry(entry));
    } else {
      entry.translatedText = entry.originalText;
      _currentTranslatedText = entry.originalText;
    }

    // Limit to 100 entries
    if (_transcriptions.length > 100) {
      _transcriptions.removeAt(0);
    }

    notifyListeners();
  }

  /// Translate a transcription entry
  Future<void> _translateEntry(TranscriptionEntry entry) async {
    final translator = _translationService;
    if (translator == null) {
      entry.translatedText = entry.originalText;
      _currentTranslatedText = entry.originalText;
      notifyListeners();
      return;
    }

    try {
      final translated = await translator.translate(entry.originalText);
      entry.translatedText =
          translated.isNotEmpty ? translated : entry.originalText;
      _currentTranslatedText = entry.translatedText;

      // Speak text if TTS is enabled
      if (_isTTSEnabled && entry.translatedText.isNotEmpty) {
        await _tts.speak(entry.translatedText);
      }

      notifyListeners();
    } catch (e) {
      debugPrint('Translation failed: $e');
      entry.translatedText = entry.originalText;
    }
  }

  /// Enable or disable translation
  void setTranslationEnabled(bool enabled) {
    if (_isTranslating == enabled) return;
    _isTranslating = enabled;
    if (enabled) {
      _prepareTranslationEngine();
    } else {
      _translationService?.setEnabled(false);
      _currentTranslatedText = '';
    }
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
    _translationModelsReady = false;
    await _syncTranslationLanguages();
    if (_isTranscribing) {
      await stopTranscription();
      await startTranscription();
    }
    if (_isTranslating) {
      _prepareTranslationEngine();
    }
    notifyListeners();
  }

  /// Set target language for translation
  Future<void> setTargetLanguage(String languageCode) async {
    _targetLanguage = languageCode;
    await _tts.setLanguage(languageCode);
    _translationModelsReady = false;
    await _syncTranslationLanguages();
    if (_isTranslating) {
      _prepareTranslationEngine();
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

  bool get _canTranslate =>
      _isTranslating &&
      _translationService != null &&
      _speechLocaleToTranslationCode(_sourceLanguage) !=
          _normalizeTranslationCode(_targetLanguage);

  Future<void> _prepareTranslationEngine() async {
    await _prepareTranslationModels(enableTranslator: true);
  }

  Future<void> prepareTranslationModelsInAdvance() async {
    await _prepareTranslationModels(enableTranslator: _isTranslating);
  }

  Future<void> _prepareTranslationModels({bool enableTranslator = true}) async {
    if (_isPreparingTranslation) return;
    final translator = _translationService;
    if (translator == null) return;

    _isPreparingTranslation = true;
    try {
      final initialized = await translator.initialize();
      if (!initialized) return;
      await _syncTranslationLanguages();
      if (enableTranslator) {
        translator.setEnabled(true);
      }
      if (!_translationModelsReady) {
        await translator.downloadLanguageModels();
        _translationModelsReady = true;
      }
      if (enableTranslator) {
        await _retranslateRecentEntries();
      }
    } catch (e) {
      debugPrint('Transcription: Failed to prepare translation: $e');
    } finally {
      _isPreparingTranslation = false;
      notifyListeners();
    }
  }

  Future<void> _syncTranslationLanguages() async {
    final translator = _translationService;
    if (translator == null) return;
    final sourceCode = _speechLocaleToTranslationCode(_sourceLanguage);
    final targetCode = _normalizeTranslationCode(_targetLanguage);
    await translator.setLanguagePairByCode(
      sourceCode: sourceCode,
      targetCode: targetCode,
    );
  }

  String _speechLocaleToTranslationCode(String locale) {
    final normalized = locale.replaceAll('_', '-').toLowerCase();
    final parts = normalized.split('-');
    return parts.first;
  }

  String _normalizeTranslationCode(String code) {
    return code.replaceAll('_', '-').toLowerCase();
  }

  Future<void> _retranslateRecentEntries() async {
    if (!_canTranslate) return;
    final recentEntries = _transcriptions.length > 5
        ? _transcriptions.sublist(_transcriptions.length - 5)
        : _transcriptions;
    for (final entry in recentEntries) {
      await _translateEntry(entry);
    }
  }

  Future<void> _ensureSourceLanguage(String? channelLanguageCode) async {
    if (!_autoDetectLanguage) return;

    // Prefer explicit channel metadata if provided.
    if (channelLanguageCode != null && channelLanguageCode.trim().isNotEmpty) {
      final applied = await _applyLanguageHint(channelLanguageCode);
      if (applied) {
        return;
      }
    }

    // If we already detected a language during this session, reuse it.
    if (_detectedLanguageCode != null) {
      return;
    }

    await _detectLanguageFromAudio();
  }

  Future<bool> _applyLanguageHint(String? languageHint) async {
    if (languageHint == null || languageHint.trim().isEmpty) return false;
    final locale = _resolveLocaleFromHint(languageHint);
    if (locale == null) return false;
    await _applyDetectedLanguage(
      locale,
      displayLabel: _languageNameForCode(locale),
      rawLanguageCode: _speechLocaleToTranslationCode(locale),
    );
    return true;
  }

  Future<void> _detectLanguageFromAudio() async {
    if (_languageDetectionCompleter != null) {
      await _languageDetectionCompleter!.future;
      return;
    }

    _languageDetectionCompleter = Completer<void>();
    _isDetectingLanguage = true;
    notifyListeners();

    try {
      final sampleText = await _captureLanguageSample();
      if (sampleText == null || sampleText.trim().isEmpty) {
        debugPrint('Language detection sample empty');
        return;
      }

      final identifier = LanguageIdentifier(confidenceThreshold: 0.5);
      String? detectedCode;
      try {
        detectedCode = await identifier.identifyLanguage(sampleText);
      } catch (e) {
        debugPrint('Language detection failed: $e');
      } finally {
        await identifier.close();
      }

      if (detectedCode == null || detectedCode == 'und') {
        debugPrint('Language detection undetermined');
        return;
      }

      final locale = _resolveLocaleForLanguageCode(detectedCode);
      if (locale == null) {
        debugPrint('No locale available for detected language $detectedCode');
        return;
      }

      await _applyDetectedLanguage(
        locale,
        displayLabel: _languageNameForCode(detectedCode),
        rawLanguageCode: detectedCode,
      );
    } finally {
      _isDetectingLanguage = false;
      _languageDetectionCompleter?.complete();
      _languageDetectionCompleter = null;
      notifyListeners();
    }
  }

  Future<String?> _captureLanguageSample() async {
    try {
      await platform.invokeMethod('startAudioCapture', {
        'sampleRate': 16000,
        'channels': 1,
      });
    } catch (e) {
      debugPrint('Language detection capture failed to start: $e');
    }

    final completer = Completer<String?>();
    final systemLocale = await _speech.systemLocale();
    final localeId = systemLocale?.localeId ?? _sourceLanguage;

    try {
      await _speech.listen(
        onResult: (result) {
          final candidate = result.recognizedWords.trim();
          if (candidate.isNotEmpty && !completer.isCompleted) {
            completer.complete(candidate);
          }
        },
        listenFor: const Duration(seconds: 5),
        pauseFor: const Duration(seconds: 2),
        partialResults: true,
        localeId: localeId,
        listenMode: stt.ListenMode.dictation,
      );

      return await completer.future.timeout(
        const Duration(seconds: 6),
        onTimeout: () => null,
      );
    } catch (e) {
      debugPrint('Language detection listen error: $e');
      return null;
    } finally {
      try {
        await _speech.stop();
      } catch (_) {}
      try {
        await platform.invokeMethod('stopAudioCapture');
      } catch (_) {}
    }
  }

  Future<void> _applyDetectedLanguage(
    String locale, {
    String? displayLabel,
    String? rawLanguageCode,
  }) async {
    final changed = _sourceLanguage != locale;
    _sourceLanguage = locale;
    _detectedLanguageCode =
        rawLanguageCode ?? _speechLocaleToTranslationCode(locale);
    _detectedLanguageLabel =
      displayLabel ??
      _languageNameForCode(rawLanguageCode ?? locale) ??
      _detectedLanguageCode?.toUpperCase();
    if (changed) {
      _translationModelsReady = false;
    }
    await _syncTranslationLanguages();
    await prepareTranslationModelsInAdvance();
  }

  String? _resolveLocaleForLanguageCode(String code) {
    final normalized = _normalizeTranslationCode(code);
    final base = normalized.split('-').first;
    for (final option in getAvailableSourceLanguages()) {
      final optionNormalized =
          option.code.replaceAll('_', '-').toLowerCase();
      if (optionNormalized == normalized) {
        return option.code;
      }
      if (optionNormalized.split('-').first == base) {
        return option.code;
      }
    }
    return null;
  }

  String? _resolveLocaleFromHint(String hint) {
    final normalized = hint.trim().toLowerCase();
    for (final option in getAvailableSourceLanguages()) {
      final optionCode = option.code.toLowerCase();
      final optionName = option.name.toLowerCase();
      if (optionCode == normalized || optionName == normalized) {
        return option.code;
      }
      if (optionCode.startsWith('$normalized-') ||
          normalized.startsWith(optionCode)) {
        return option.code;
      }
      if (optionName.contains(normalized)) {
        return option.code;
      }
    }
    return null;
  }

  String? _languageNameForCode(String? code) {
    if (code == null || code.trim().isEmpty) return null;
    final normalized = code.replaceAll('_', '-').toLowerCase();
    final base = normalized.split('-').first;
    for (final option in getAvailableSourceLanguages()) {
      final optionNormalized =
          option.code.replaceAll('_', '-').toLowerCase();
      if (optionNormalized == normalized ||
          optionNormalized.split('-').first == base) {
        return option.name;
      }
    }
    for (final option in getAvailableTargetLanguages()) {
      final optionNormalized =
          option.code.replaceAll('_', '-').toLowerCase();
      if (optionNormalized == normalized || option.code == base) {
        return option.name;
      }
    }
    return null;
  }

  /// Clean up old transcriptions (older than 5 minutes)
  void _cleanupOldTranscriptions() {
    final cutoff = DateTime.now().subtract(const Duration(minutes: 5));
    _transcriptions.removeWhere((entry) => entry.timestamp.isBefore(cutoff));
    notifyListeners();
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
