import 'dart:async';
import 'package:flutter/foundation.dart';
// Use a local adapter so the project can compile without the optional
// `vosk_flutter` plugin. If you add `vosk_flutter` back to pubspec.yaml,
// replace this import with the package import.
import 'vosk_adapter.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

/// TRUE On-Device Transcription and Translation Service
///
/// 100% offline after model download:
/// - Speech-to-text: Vosk (truly on-device, no external APIs)
/// - Translation: ML Kit (on-device after model download)
/// - Text-to-speech: Platform TTS
///
/// NO SERVER COSTS, NO INTERNET REQUIRED (after initial setup)
class TrueOnDeviceTranscriptionService extends ChangeNotifier {
  // Vosk speech recognition (TRUE on-device)
  VoskFlutterPlugin? _vosk;
  Model? _model;
  Recognizer? _recognizer;

  // Audio recording
  final AudioRecorder _recorder = AudioRecorder();

  // Translation (ON-DEVICE)
  OnDeviceTranslator? _translator;
  final OnDeviceTranslatorModelManager _modelManager =
      OnDeviceTranslatorModelManager();

  // Text-to-speech
  final FlutterTts _tts = FlutterTts();

  // State
  bool _isInitialized = false;
  bool _isTranscribing = false;
  bool _isTranslating = false;
  bool _isTTSEnabled = false;
  bool _isDownloadingModels = false;
  double _downloadProgress = 0.0;

  // Languages
  TranslateLanguage _sourceLanguage = TranslateLanguage.english;
  TranslateLanguage _targetLanguage = TranslateLanguage.spanish;

  // Data
  final List<SubtitleEntry> _subtitles = [];
  String _currentText = '';
  String _currentTranslatedText = '';

  Timer? _cleanupTimer;
  StreamSubscription? _audioStreamSubscription;

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

  /// Get latest subtitles for display (last 3 entries)
  String get latestSubtitles {
    if (_subtitles.isEmpty) return '';

    final recent = _subtitles.length > 3
        ? _subtitles.sublist(_subtitles.length - 3)
        : _subtitles;

    return recent
        .map((e) => _isTranslating ? e.translatedText : e.originalText)
        .join('\n');
  }

  /// Initialize Vosk and other services
  Future<bool> initialize() async {
    if (_isInitialized) return true;

    try {
      // Initialize Vosk
      _vosk = VoskFlutterPlugin.instance();

      // Initialize TTS
      await _tts.setLanguage('en-US');
      await _tts.setSpeechRate(0.5);
      await _tts.setVolume(1.0);

      // Start cleanup timer
      _cleanupTimer = Timer.periodic(
        const Duration(minutes: 5),
        (_) => _cleanupOldSubtitles(),
      );

      _isInitialized = true;
      notifyListeners();
      debugPrint('TrueOnDeviceTranscription: Initialized');
      return true;
    } catch (e) {
      debugPrint('TrueOnDeviceTranscription: Initialization error - $e');
      return false;
    }
  }

  /// Download Vosk model (required for speech recognition)
  /// Models: vosk-model-small-en-us-0.15 (~40MB), vosk-model-en-us-0.22 (~1.8GB)
  Future<bool> downloadVoskModel({
    String modelUrl =
        'https://alphacephei.com/vosk/models/vosk-model-small-en-us-0.15.zip',
  }) async {
    _isDownloadingModels = true;
    _downloadProgress = 0.0;
    notifyListeners();

    try {
      final appDir = await getApplicationDocumentsDirectory();
      final modelPath = '${appDir.path}/vosk-model';

      // Check if model already exists
      if (await Directory(modelPath).exists()) {
        debugPrint('TrueOnDeviceTranscription: Model already downloaded');
        _model = await _vosk!.createModel(modelPath);
        _isDownloadingModels = false;
        notifyListeners();
        return true;
      }

      // Download model
      debugPrint(
        'TrueOnDeviceTranscription: Downloading Vosk model from $modelUrl',
      );
      // TODO: Implement actual download with progress tracking
      // For now, user must manually download and place in assets/models/vosk-model/

      _isDownloadingModels = false;
      notifyListeners();
      return false;
    } catch (e) {
      debugPrint('TrueOnDeviceTranscription: Model download error - $e');
      _isDownloadingModels = false;
      notifyListeners();
      return false;
    }
  }

  /// Load Vosk model from path
  Future<bool> loadVoskModel(String modelPath) async {
    try {
      _model = await _vosk!.createModel(modelPath);
      _recognizer = await _vosk!.createRecognizer(
        model: _model!,
        sampleRate: 16000,
      );
      debugPrint('TrueOnDeviceTranscription: Vosk model loaded');
      return true;
    } catch (e) {
      debugPrint('TrueOnDeviceTranscription: Model load error - $e');
      return false;
    }
  }

  /// Download translation models (ML Kit - on-device)
  Future<bool> downloadTranslationModels() async {
    _isDownloadingModels = true;
    _downloadProgress = 0.0;
    notifyListeners();

    try {
      // Check if models are already downloaded
      final sourceDownloaded = await _modelManager.isModelDownloaded(
        _sourceLanguage.bcpCode,
      );
      final targetDownloaded = await _modelManager.isModelDownloaded(
        _targetLanguage.bcpCode,
      );

      if (sourceDownloaded && targetDownloaded) {
        debugPrint(
          'TrueOnDeviceTranscription: Translation models already downloaded',
        );
        _isDownloadingModels = false;
        notifyListeners();
        return true;
      }

      // Download source language model
      if (!sourceDownloaded) {
        debugPrint(
          'TrueOnDeviceTranscription: Downloading source language model (${_sourceLanguage.bcpCode})',
        );
        await _modelManager.downloadModel(_sourceLanguage.bcpCode);
        _downloadProgress = 0.5;
        notifyListeners();
      }

      // Download target language model
      if (!targetDownloaded) {
        debugPrint(
          'TrueOnDeviceTranscription: Downloading target language model (${_targetLanguage.bcpCode})',
        );
        await _modelManager.downloadModel(_targetLanguage.bcpCode);
        _downloadProgress = 1.0;
        notifyListeners();
      }

      _isDownloadingModels = false;
      notifyListeners();
      debugPrint('TrueOnDeviceTranscription: Translation models downloaded');
      return true;
    } catch (e) {
      debugPrint(
        'TrueOnDeviceTranscription: Translation model download error - $e',
      );
      _isDownloadingModels = false;
      notifyListeners();
      return false;
    }
  }

  /// Start transcription
  Future<bool> startTranscription() async {
    if (!_isInitialized) {
      await initialize();
    }

    if (_recognizer == null) {
      debugPrint(
        'TrueOnDeviceTranscription: Vosk model not loaded. Call loadVoskModel() first.',
      );
      return false;
    }

    if (_isTranscribing) {
      debugPrint('TrueOnDeviceTranscription: Already transcribing');
      return true;
    }

    try {
      // Initialize translator if translation enabled
      if (_isTranslating && _translator == null) {
        _translator = OnDeviceTranslator(
          sourceLanguage: _sourceLanguage,
          targetLanguage: _targetLanguage,
        );
      }

      // Start audio recording
      if (await _recorder.hasPermission()) {
        final appDir = await getTemporaryDirectory();
        final audioPath = '${appDir.path}/transcription_audio.wav';

        await _recorder.start(
          RecordConfig(
            encoder: AudioEncoder.wav,
            sampleRate: 16000,
          ),
          path: audioPath,
        );

        _isTranscribing = true;
        notifyListeners();

        debugPrint('TrueOnDeviceTranscription: Started (100% on-device)');
        return true;
      } else {
        debugPrint('TrueOnDeviceTranscription: Microphone permission denied');
        return false;
      }
    } catch (e) {
      debugPrint('TrueOnDeviceTranscription: Start error - $e');
      return false;
    }
  }

  /// Stop transcription
  Future<void> stopTranscription() async {
    if (!_isTranscribing) return;

    try {
      await _recorder.stop();
      await _audioStreamSubscription?.cancel();

      _isTranscribing = false;
      notifyListeners();
      debugPrint('TrueOnDeviceTranscription: Stopped');
    } catch (e) {
      debugPrint('TrueOnDeviceTranscription: Stop error - $e');
    }
  }

  /// Process audio chunk with Vosk (on-device recognition)
  // ignore: unused_element
  Future<void> _processAudioChunk(List<int> audioData) async {
    if (_recognizer == null) return;

    try {
      // Some versions of the vosk_flutter plugin expose native methods that the
      // analyzer may not statically recognize. Cast to `dynamic` to call the
      // method at runtime and avoid analyzer `undefined_method` errors.
      final result = await (_vosk! as dynamic).recognizeWAVData(
        recognizer: _recognizer!,
        bytes: Uint8List.fromList(audioData),
      );

      if (result.isNotEmpty && result != '{}') {
        final text = result; // Vosk returns JSON, parse if needed
        if (text.isNotEmpty) {
          _currentText = text;

          // Translate if enabled (ON-DEVICE)
          if (_isTranslating && _translator != null) {
            await _translateEntry(
              SubtitleEntry(
                originalText: text,
                translatedText: '',
                timestamp: DateTime.now(),
              ),
            );
          }

          // Add to subtitles list
          _subtitles.add(
            SubtitleEntry(
              originalText: text,
              translatedText: _currentTranslatedText,
              timestamp: DateTime.now(),
            ),
          );

          // Speak if TTS enabled
          if (_isTTSEnabled && _currentTranslatedText.isNotEmpty) {
            await _tts.speak(_currentTranslatedText);
          }

          notifyListeners();
        }
      }
    } catch (e) {
      debugPrint('TrueOnDeviceTranscription: Audio processing error - $e');
    }
  }

  /// Translate text entry (ON-DEVICE with ML Kit)
  Future<void> _translateEntry(SubtitleEntry entry) async {
    if (_translator == null) return;

    try {
      final translated = await _translator!.translateText(entry.originalText);
      _currentTranslatedText = translated;
      entry.translatedText = translated;
    } catch (e) {
      debugPrint('TrueOnDeviceTranscription: Translation error - $e');
      _currentTranslatedText = entry.originalText;
    }
  }

  /// Enable/disable translation
  void setTranslationEnabled(bool enabled) {
    _isTranslating = enabled;

    if (enabled && _translator == null) {
      _translator = OnDeviceTranslator(
        sourceLanguage: _sourceLanguage,
        targetLanguage: _targetLanguage,
      );
    } else if (!enabled && _translator != null) {
      _translator!.close();
      _translator = null;
    }

    notifyListeners();
  }

  /// Set source language
  Future<void> setSourceLanguage(TranslateLanguage language) async {
    _sourceLanguage = language;

    // Recreate translator if it exists
    if (_translator != null) {
      _translator!.close();
      _translator = OnDeviceTranslator(
        sourceLanguage: _sourceLanguage,
        targetLanguage: _targetLanguage,
      );
    }

    notifyListeners();
  }

  /// Set target language
  Future<void> setTargetLanguage(TranslateLanguage language) async {
    _targetLanguage = language;

    // Recreate translator if it exists
    if (_translator != null) {
      _translator!.close();
      _translator = OnDeviceTranslator(
        sourceLanguage: _sourceLanguage,
        targetLanguage: _targetLanguage,
      );
    }

    // Update TTS language
    await _tts.setLanguage(language.bcpCode);

    notifyListeners();
  }

  /// Enable/disable TTS
  void setTTSEnabled(bool enabled) {
    _isTTSEnabled = enabled;
    notifyListeners();
  }

  /// Clear all subtitles
  void clearSubtitles() {
    _subtitles.clear();
    _currentText = '';
    _currentTranslatedText = '';
    notifyListeners();
  }

  /// Clean up old subtitles (older than 10 minutes)
  void _cleanupOldSubtitles() {
    final cutoff = DateTime.now().subtract(const Duration(minutes: 10));
    _subtitles.removeWhere((entry) => entry.timestamp.isBefore(cutoff));
    notifyListeners();
  }

  /// Export subtitles as SRT format
  String exportAsSRT() {
    final buffer = StringBuffer();

    for (int i = 0; i < _subtitles.length; i++) {
      final entry = _subtitles[i];
      final text = _isTranslating ? entry.translatedText : entry.originalText;

      if (text.isEmpty) continue;

      // SRT format
      buffer.writeln(i + 1);
      buffer.writeln(
        '${_formatSRTTime(entry.timestamp)} --> ${_formatSRTTime(entry.timestamp.add(const Duration(seconds: 3)))}',
      );
      buffer.writeln(text);
      buffer.writeln();
    }

    return buffer.toString();
  }

  String _formatSRTTime(DateTime time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    final second = time.second.toString().padLeft(2, '0');
    final millisecond = time.millisecond.toString().padLeft(3, '0');
    return '$hour:$minute:$second,$millisecond';
  }

  @override
  void dispose() {
    _recorder.dispose();
    _audioStreamSubscription?.cancel();
    _translator?.close();
    _cleanupTimer?.cancel();
    _tts.stop();
    super.dispose();
  }
}

/// Subtitle entry model
class SubtitleEntry {
  final String originalText;
  String translatedText;
  final DateTime timestamp;

  SubtitleEntry({
    required this.originalText,
    required this.translatedText,
    required this.timestamp,
  });
}
