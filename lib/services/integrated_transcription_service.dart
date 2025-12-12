// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:google_mlkit_language_id/google_mlkit_language_id.dart';
import 'package:record/record.dart';

/// Integrated On-Device Transcription and Translation Service
///
/// Combines:
/// - Speech-to-text (platform APIs for now, can be replaced with TFLite)
/// - On-device translation (ML Kit - truly offline)
/// - Text-to-speech
///
/// All translation happens on-device after initial model download.
class IntegratedTranscriptionService extends ChangeNotifier {
  // Speech recognition
  final stt.SpeechToText _speech = stt.SpeechToText();
  final AudioRecorder _recorder = AudioRecorder();

  // Translation (ON-DEVICE)
  OnDeviceTranslator? _translator;
  final OnDeviceTranslatorModelManager _modelManager =
      OnDeviceTranslatorModelManager();

  // Text-to-speech - REMOVED (not used)

  // State
  bool _isInitialized = false;
  bool _isTranscribing = false;
  bool _isTranslating = false;
  bool _isTTSEnabled = false;
  bool _isDownloadingModels = false;
  double _downloadProgress = 0.0;

  // Languages
  TranslateLanguage _sourceLanguage = TranslateLanguage.english; // Auto-detected
  TranslateLanguage _targetLanguage = TranslateLanguage.english; // Always English

  // Data
  final List<SubtitleEntry> _subtitles = [];
  String _currentText = '';
  String _currentTranslatedText = '';

  Timer? _cleanupTimer;

  // Getters
  bool get isInitialized => _isInitialized;
  bool get isTranscribing => _isTranscribing;
  bool get isTranslating => _isTranslating;
  bool get isTTSEnabled => _isTTSEnabled;
  bool get isDownloadingModels => _isDownloadingModels;
  double get downloadProgress => _downloadProgress;
  TranslateLanguage get sourceLanguage => _sourceLanguage;
  TranslateLanguage get targetLanguage => _targetLanguage;
  String get currentText => _currentText;
  String get currentTranslatedText => _currentTranslatedText;
  List<SubtitleEntry> get subtitles => List.unmodifiable(_subtitles);

  /// Get latest subtitles for display
  String get latestSubtitles {
    if (_subtitles.isEmpty) return '';

    final recent = _subtitles.length > 3
        ? _subtitles.sublist(_subtitles.length - 3)
        : _subtitles;

    return recent
        .map((e) => _isTranslating ? e.translatedText : e.originalText)
        .join('\n');
  }

  /// Initialize the service
  Future<bool> initialize() async {
    if (_isInitialized) return true;

    try {
      // Initialize speech recognition
      final speechInitialized = await _speech.initialize(
        onError: (error) {
          debugPrint('Speech recognition error: $error');
          notifyListeners();
        },
        onStatus: (status) {
          debugPrint('Speech status: $status');
          if (status == 'done' || status == 'notListening') {
            _isTranscribing = false;
            notifyListeners();
          }
        },
      );

      if (!speechInitialized) {
        debugPrint('Failed to initialize speech recognition');
        return false;
      }

      // Initialize translator
      _translator = OnDeviceTranslator(
        sourceLanguage: _sourceLanguage,
        targetLanguage: _targetLanguage,
      );

      // Start cleanup timer
      _cleanupTimer = Timer.periodic(const Duration(seconds: 30), (_) {
        _cleanupOldSubtitles();
      });

      _isInitialized = true;
      notifyListeners();
      debugPrint('✅ Integrated transcription service initialized');
      return true;
    } catch (e) {
      debugPrint('Initialization error: $e');
      _isInitialized = false;
      notifyListeners();
      return false;
    }
  }

  /// Extract audio from video stream and transcribe
  Future<void> transcribeVideoStream(String videoUrl) async {
    try {
      debugPrint('Starting audio extraction from: $videoUrl');
      
      // For now, use direct audio stream transcription
      // Media Kit can be used for more complex audio processing if needed
      await startTranscription();
      
    } catch (e) {
      debugPrint('Video stream transcription error: $e');
    }
  }

  /// Start live transcription from audio stream
  Future<void> startTranscription({String? audioFilePath}) async {
    if (!_isInitialized) {
      await initialize();
    }

    if (_isTranscribing) return;

    try {
      _isTranscribing = true;
      notifyListeners();

      if (audioFilePath != null) {
        // Use Whisper for audio file transcription
        await _transcribeWithWhisper(audioFilePath);
      } else {
        // Fallback to speech recognition for live audio
        await _speech.listen(
          onResult: (result) async {
            _currentText = result.recognizedWords;

            if (result.finalResult && _currentText.isNotEmpty) {
              await _addSubtitle(_currentText);
              _currentText = '';
            }

            notifyListeners();
          },
          listenFor: const Duration(seconds: 30),
          pauseFor: const Duration(seconds: 3),
          partialResults: true,
          listenMode: stt.ListenMode.dictation,
        );
      }

      debugPrint('✅ Transcription started');
    } catch (e) {
      debugPrint('Failed to start transcription: $e');
      _isTranscribing = false;
      notifyListeners();
    }
  }

  /// Transcribe audio file using Whisper
  Future<void> _transcribeWithWhisper(String audioFilePath) async {
    try {
      // This would integrate with your Whisper implementation
      // For now, using placeholder - you'd need to implement actual Whisper integration
      debugPrint('Transcribing with Whisper: $audioFilePath');
      
      // Placeholder - replace with actual Whisper transcription
      await Future.delayed(const Duration(seconds: 2));
      await _addSubtitle('Whisper transcription result would go here');
      
    } catch (e) {
      debugPrint('Whisper transcription error: $e');
    }
  }

  /// Stop transcription
  Future<void> stopTranscription() async {
    if (!_isTranscribing) return;

    try {
      await _speech.stop();
      _isTranscribing = false;
      _currentText = '';
      notifyListeners();
      debugPrint('✅ Transcription stopped');
    } catch (e) {
      debugPrint('Failed to stop transcription: $e');
    }
  }

  /// Add subtitle and translate if enabled
  Future<void> _addSubtitle(String text) async {
    if (text.trim().isEmpty) return;

    final entry = SubtitleEntry(
      originalText: text,
      timestamp: DateTime.now(),
      sourceLanguage: _sourceLanguage,
      targetLanguage: _targetLanguage,
    );

    _subtitles.add(entry);

    // Translate if enabled and languages differ
    if (_isTranslating && _sourceLanguage != _targetLanguage) {
      await _translateEntry(entry);
    } else {
      entry.translatedText = text;
    }

    // Limit to 100 entries
    if (_subtitles.length > 100) {
      _subtitles.removeAt(0);
    }

    notifyListeners();
  }

  /// Translate a subtitle entry (ON-DEVICE)
  Future<void> _translateEntry(SubtitleEntry entry) async {
    try {
      // Detect source language
      final languageId = LanguageIdentifier(confidenceThreshold: 0.5);
      final detectedLanguage = await languageId.identifyLanguage(entry.originalText);
      
      // If already English or detection failed, no translation needed
      if (detectedLanguage == 'en' || detectedLanguage == 'und') {
        entry.translatedText = entry.originalText;
        _currentTranslatedText = entry.originalText;
        notifyListeners();
        return;
      }
      
      // Create translator for detected language -> English
      final sourceLanguage = _getTranslateLanguage(detectedLanguage);
      if (sourceLanguage == null) {
        entry.translatedText = entry.originalText;
        return;
      }
      
      final translator = OnDeviceTranslator(
        sourceLanguage: sourceLanguage,
        targetLanguage: TranslateLanguage.english,
      );

      // Translate to English
      final translation = await translator.translateText(entry.originalText);
      entry.translatedText = translation;
      _currentTranslatedText = translation;
      
      await translator.close();

      // TTS speak functionality removed (not used)

      notifyListeners();
    } catch (e) {
      debugPrint('Translation error: $e');
      entry.translatedText = entry.originalText;
    }
  }
  
  TranslateLanguage? _getTranslateLanguage(String languageCode) {
    final languageMap = {
      'es': TranslateLanguage.spanish,
      'fr': TranslateLanguage.french,
      'de': TranslateLanguage.german,
      'it': TranslateLanguage.italian,
      'pt': TranslateLanguage.portuguese,
      'ru': TranslateLanguage.russian,
      'ja': TranslateLanguage.japanese,
      'ko': TranslateLanguage.korean,
      'zh': TranslateLanguage.chinese,
      'ar': TranslateLanguage.arabic,
      'hi': TranslateLanguage.hindi,
      'nl': TranslateLanguage.dutch,
      'pl': TranslateLanguage.polish,
      'tr': TranslateLanguage.turkish,
    };
    return languageMap[languageCode];
  }


  /// Download translation models
  Future<bool> downloadTranslationModels() async {
    if (_isDownloadingModels) return false;

    _isDownloadingModels = true;
    _downloadProgress = 0.0;
    notifyListeners();

    try {
      debugPrint('Downloading translation models...');

      // Download source language
      final sourceDownloaded = await _modelManager.isModelDownloaded(
        _sourceLanguage.bcpCode,
      );
      if (!sourceDownloaded) {
        debugPrint('Downloading ${_sourceLanguage.bcpCode}...');
        await _modelManager.downloadModel(_sourceLanguage.bcpCode);
        _downloadProgress = 0.5;
        notifyListeners();
      }

      // Download target language
      final targetDownloaded = await _modelManager.isModelDownloaded(
        _targetLanguage.bcpCode,
      );
      if (!targetDownloaded) {
        debugPrint('Downloading ${_targetLanguage.bcpCode}...');
        await _modelManager.downloadModel(_targetLanguage.bcpCode);
        _downloadProgress = 1.0;
        notifyListeners();
      }

      _isDownloadingModels = false;
      _downloadProgress = 1.0;
      notifyListeners();
      debugPrint('✅ Translation models downloaded');
      return true;
    } catch (e) {
      debugPrint('Model download error: $e');
      _isDownloadingModels = false;
      _downloadProgress = 0.0;
      notifyListeners();
      return false;
    }
  }

  /// Enable/disable translation
  void setTranslationEnabled(bool enabled) {
    _isTranslating = enabled;
    notifyListeners();
  }

  /// Enable/disable TTS - REMOVED (not used)
  void setTTSEnabled(bool enabled) {
    _isTTSEnabled = enabled;
    // TTS functionality removed
    notifyListeners();
  }

  /// Set source language
  Future<void> setSourceLanguage(TranslateLanguage language) async {
    if (_sourceLanguage == language) return;

    _sourceLanguage = language;
    await _updateTranslator();
    notifyListeners();
  }

  /// Set target language
  Future<void> setTargetLanguage(TranslateLanguage language) async {
    if (_targetLanguage == language) return;

    _targetLanguage = language;
    // TTS language setting removed (not used)
    await _updateTranslator();
    notifyListeners();
  }

  /// Update translator with new languages
  Future<void> _updateTranslator() async {
    try {
      await _translator?.close();
      _translator = OnDeviceTranslator(
        sourceLanguage: _sourceLanguage,
        targetLanguage: _targetLanguage,
      );
    } catch (e) {
      debugPrint('Error updating translator: $e');
    }
  }

  /// Clear all subtitles
  void clearSubtitles() {
    _subtitles.clear();
    _currentText = '';
    _currentTranslatedText = '';
    notifyListeners();
  }

  /// Clean up old subtitles
  void _cleanupOldSubtitles() {
    final cutoff = DateTime.now().subtract(const Duration(minutes: 5));
    _subtitles.removeWhere((entry) => entry.timestamp.isBefore(cutoff));
    notifyListeners();
  }

  /// Export as SRT subtitle file
  String exportAsSRT() {
    final buffer = StringBuffer();

    for (int i = 0; i < _subtitles.length; i++) {
      final entry = _subtitles[i];
      final text = _isTranslating ? entry.translatedText : entry.originalText;

      if (text.isEmpty) continue;

      buffer.writeln(i + 1);

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

  /// Format timestamp for SRT
  String _formatSRTTimestamp(DateTime time) {
    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padLeft(2, '0');
    final seconds = time.second.toString().padLeft(2, '0');
    final milliseconds = time.millisecond.toString().padLeft(3, '0');
    return '$hours:$minutes:$seconds,$milliseconds';
  }

  /// Get available languages
  List<LanguageOption> getAvailableLanguages() {
    return TranslateLanguage.values.map((lang) {
      return LanguageOption(
        code: lang.bcpCode,
        name: _getLanguageName(lang),
        language: lang,
      );
    }).toList()..sort((a, b) => a.name.compareTo(b.name));
  }

  /// Get language name
  String _getLanguageName(TranslateLanguage lang) {
    final names = {
      TranslateLanguage.english: 'English',
      TranslateLanguage.spanish: 'Spanish',
      TranslateLanguage.french: 'French',
      TranslateLanguage.german: 'German',
      TranslateLanguage.italian: 'Italian',
      TranslateLanguage.portuguese: 'Portuguese',
      TranslateLanguage.russian: 'Russian',
      TranslateLanguage.japanese: 'Japanese',
      TranslateLanguage.korean: 'Korean',
      TranslateLanguage.chinese: 'Chinese',
      TranslateLanguage.arabic: 'Arabic',
      TranslateLanguage.hindi: 'Hindi',
      TranslateLanguage.dutch: 'Dutch',
      TranslateLanguage.polish: 'Polish',
      TranslateLanguage.turkish: 'Turkish',
    };

    return names[lang] ?? lang.bcpCode;
  }

  @override
  void dispose() {
    _cleanupTimer?.cancel();
    _speech.cancel();
    _translator?.close();
    // TTS stop removed (not used)
    _recorder.dispose();
    super.dispose();
  }
}

/// Subtitle entry with translation
class SubtitleEntry {
  final String originalText;
  String translatedText;
  final DateTime timestamp;
  final TranslateLanguage sourceLanguage;
  final TranslateLanguage targetLanguage;

  SubtitleEntry({
    required this.originalText,
    this.translatedText = '',
    required this.timestamp,
    required this.sourceLanguage,
    required this.targetLanguage,
  });
}

/// Language option for UI
class LanguageOption {
  final String code;
  final String name;
  final TranslateLanguage language;

  LanguageOption({
    required this.code,
    required this.name,
    required this.language,
  });
}
