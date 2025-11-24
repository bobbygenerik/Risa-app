import 'dart:async';
import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:iptv_player/services/whisper_speech_service.dart';
import 'package:iptv_player/services/whisper_ggml_service.dart';
import 'package:whisper_ggml/whisper_ggml.dart' show WhisperModel;

/// TRUE On-Device Transcription Service using Whisper ggml binaries
///
/// 100% OFFLINE - NO SERVER COSTS - NO INTERNET REQUIRED
///
/// Uses Whisper tiny/base/small ggml binaries (~40-90MB)
/// Combined with ML Kit for on-device translation
///
/// NO DATA LEAVES THE DEVICE - ALL PROCESSING LOCAL
class WhisperTranscriptionService extends ChangeNotifier {
  static const MethodChannel _transcriptionChannel =
      MethodChannel('com.streamhub.iptv/transcription');
  static const EventChannel _audioStreamChannel =
      EventChannel('com.streamhub.iptv/transcription_audio');

  // Whisper ggml runner for speech recognition
  final WhisperGgmlRunner _ggmlRunner = WhisperGgmlRunner();
  bool _isWhisperLoaded = false;

  // Translation (ON-DEVICE)
  OnDeviceTranslator? _translator;
  final OnDeviceTranslatorModelManager _modelManager =
      OnDeviceTranslatorModelManager();
  WhisperSpeechService? _speechService;
  String? _loadedModelId;

  // Text-to-speech
  final FlutterTts _tts = FlutterTts();

  // State
  bool _isInitialized = false;
  bool _isTranscribing = false;
  bool _isTranslating = false;
  bool _isTTSEnabled = false;
  bool _isDownloadingModels = false;
  double _downloadProgress = 0.0;
  bool _isLocalModelDownloading = false;
  bool _isLocalModelDownloaded = false;
  double _whisperDownloadProgress = 0.0;
  String _lastError = '';
  bool _isProcessingChunk = false;

  // Languages
  TranslateLanguage _sourceLanguage = TranslateLanguage.english;
  TranslateLanguage _targetLanguage = TranslateLanguage.spanish;

  // Data
  final List<SubtitleEntry> _subtitles = [];
  String _currentText = '';
  String _currentTranslatedText = '';

  Timer? _cleanupTimer;
  Timer? _audioProcessTimer;
  StreamSubscription<dynamic>? _audioStreamSubscription;
  final List<int> _pcmBuffer = <int>[];

  // Audio processing constants
  static const int _sampleRate = 16000;
  static const int _audioChunkDuration = 30; // seconds
  static const int _bytesPerSample = 2;

  // Getters
  bool get isInitialized => _isInitialized;
  bool get isTranscribing => _isTranscribing;
  bool get isTranslating => _isTranslating;
  bool get isTTSEnabled => _isTTSEnabled;
  bool get isDownloadingModels => _isDownloadingModels;
  bool get isWhisperLoaded => _isWhisperLoaded;
  double get downloadProgress => _downloadProgress;
  bool get isLocalModelDownloading => _isLocalModelDownloading;
  bool get isLocalModelDownloaded => _isLocalModelDownloaded;
  double get whisperDownloadProgress => _whisperDownloadProgress;
  String get lastError => _lastError;
  TranslateLanguage get sourceLanguage => _sourceLanguage;
  TranslateLanguage get targetLanguage => _targetLanguage;
  String get currentText => _currentText;
  String get currentTranslatedText => _currentTranslatedText;
  List<SubtitleEntry> get subtitles => List.unmodifiable(_subtitles);
  List<SubtitleEntry> get transcriptions => List.unmodifiable(_subtitles);

  void attachSpeechService(WhisperSpeechService? service) {
    if (identical(_speechService, service)) return;
    _speechService?.removeListener(_handleSpeechServiceChange);
    _speechService = service;
    _speechService?.addListener(_handleSpeechServiceChange);
    if (_isInitialized) {
      unawaited(_loadWhisperModel(forceReload: true));
    }
  }

  void _handleSpeechServiceChange() {
    final service = _speechService;
    if (service == null) return;
    _isLocalModelDownloaded = service.isModelDownloaded;
    _isLocalModelDownloading = service.isDownloading;
    _whisperDownloadProgress = service.downloadProgress;
    final selectedId = service.selectedModelId;
    final shouldReload =
        (service.isModelDownloaded && selectedId != _loadedModelId) ||
        (!service.isModelDownloaded && _isWhisperLoaded);

    if (shouldReload) {
      unawaited(_loadWhisperModel(forceReload: true));
    } else {
      notifyListeners();
    }
  }

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

  /// Initialize service
  Future<bool> initialize() async {
    if (_isInitialized) return true;

    try {
      // Try to load Whisper model
      await _loadWhisperModel();

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
      debugPrint('WhisperTranscription: Initialized (100% ON-DEVICE)');
      return true;
    } catch (e) {
      debugPrint('WhisperTranscription: Initialization error - $e');
      return false;
    }
  }

  /// Expose fallback preparation so settings UI can ensure a ggml model exists.
  Future<bool> downloadWhisperModelIfNeeded() async {
    if (_isLocalModelDownloading) {
      return false;
    }

    final speechService = _speechService;
    if (speechService == null) {
      _lastError = 'Speech recognition settings not ready yet';
      notifyListeners();
      return false;
    }

    _isLocalModelDownloading = true;
    _whisperDownloadProgress = 0.0;
    notifyListeners();

    try {
      await speechService.initialize();
      final ready = await speechService.downloadModelIfNeeded();
      _isLocalModelDownloaded = ready;
      _whisperDownloadProgress = ready ? 1.0 : speechService.downloadProgress;
      _lastError = ready ? '' : 'Unable to download selected Whisper model';
      return ready;
    } catch (e) {
      _isLocalModelDownloaded = false;
      _whisperDownloadProgress = 0.0;
      _lastError = 'Failed to download Whisper model: $e';
      debugPrint('WhisperTranscription: GGML download error - $e');
      return false;
    } finally {
      _isLocalModelDownloading = false;
      notifyListeners();
    }
  }

  /// Load Whisper GGML model via the runner
  Future<bool> _loadWhisperModel({bool forceReload = false}) async {
    if (_isWhisperLoaded && !forceReload) {
      return true;
    }

    try {
      final speechService = _speechService;
      if (speechService == null) {
        _lastError = 'Speech recognition service unavailable';
        _isWhisperLoaded = false;
        notifyListeners();
        return false;
      }

      await speechService.initialize();
      final ready = await speechService.downloadModelIfNeeded();
      if (!ready) {
        _lastError =
            'Selected Whisper model (${speechService.selectedModel.name}) is not downloaded yet';
        _isWhisperLoaded = false;
        notifyListeners();
        return false;
      }

      final modelPath = await speechService.getSelectedModelPath();
      if (modelPath == null) {
        _lastError = 'Unable to resolve Whisper model path';
        _isWhisperLoaded = false;
        notifyListeners();
        return false;
      }

      // Get model type for the selected model
      final modelType = () {
        switch (speechService.selectedModelId) {
          case 'whisper_tiny':
            return WhisperModel.tiny;
          case 'whisper_base':
            return WhisperModel.base;
          case 'whisper_small':
            return WhisperModel.small;
          default:
            return WhisperModel.tiny;
        }
      }();
      await _ggmlRunner.loadModel(modelPath: modelPath, modelType: modelType);
      _loadedModelId = speechService.selectedModelId;
      _isLocalModelDownloaded = true;
      _whisperDownloadProgress = 1.0;
      _isWhisperLoaded = true;
      _lastError = '';
      notifyListeners();
      debugPrint('WhisperTranscription: GGML model ready at $modelPath');
      return true;
    } catch (e) {
      debugPrint('WhisperTranscription: GGML load error - $e');
      _isWhisperLoaded = false;
      _lastError = 'Failed to initialize Whisper runtime';
      notifyListeners();
      return false;
    }
  }

  /// Download translation models (ML Kit - on-device)
  Future<bool> downloadTranslationModels() async {
    _isDownloadingModels = true;
    _downloadProgress = 0.0;
    notifyListeners();

    try {
      final sourceDownloaded = await _modelManager.isModelDownloaded(
        _sourceLanguage.bcpCode,
      );
      final targetDownloaded = await _modelManager.isModelDownloaded(
        _targetLanguage.bcpCode,
      );

      if (sourceDownloaded && targetDownloaded) {
        debugPrint(
          'WhisperTranscription: Translation models already downloaded',
        );
        _isDownloadingModels = false;
        notifyListeners();
        return true;
      }

      if (!sourceDownloaded) {
        debugPrint('WhisperTranscription: Downloading source language model');
        await _modelManager.downloadModel(_sourceLanguage.bcpCode);
        _downloadProgress = 0.5;
        notifyListeners();
      }

      if (!targetDownloaded) {
        debugPrint('WhisperTranscription: Downloading target language model');
        await _modelManager.downloadModel(_targetLanguage.bcpCode);
        _downloadProgress = 1.0;
        notifyListeners();
      }

      _isDownloadingModels = false;
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('WhisperTranscription: Translation model download error - $e');
      _isDownloadingModels = false;
      notifyListeners();
      return false;
    }
  }

  /// Start transcription (100% ON-DEVICE)
  Future<bool> startTranscription() async {
    if (!Platform.isAndroid) {
      _lastError = 'Live stream capture is available on Android devices only';
      notifyListeners();
      return false;
    }

    if (!_isInitialized) {
      await initialize();
    }

    if (!_isWhisperLoaded) {
      final loaded = await _loadWhisperModel(forceReload: true);
      if (!loaded) {
        debugPrint(
          'WhisperTranscription: Whisper model not available. Download it from AI Settings > Speech Recognition.',
        );
        return false;
      }
    }

    if (_isTranscribing) {
      debugPrint('WhisperTranscription: Already transcribing');
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

      _pcmBuffer.clear();

      _audioStreamSubscription ??=
          _audioStreamChannel.receiveBroadcastStream().listen(
                _handleIncomingAudioChunk,
                onError: _handleAudioStreamError,
              );

      final started = await _transcriptionChannel.invokeMethod<bool>(
            'startAudioCapture',
            {'sampleRate': _sampleRate, 'channels': 1},
          ) ??
          false;

      if (!started) {
        _lastError = 'Unable to capture audio from player output';
        await _disposeAudioStream();
        notifyListeners();
        return false;
      }

      _isTranscribing = true;
      notifyListeners();

      _audioProcessTimer = Timer.periodic(
        const Duration(seconds: _audioChunkDuration),
        (_) => _processAudioBuffer(),
      );

      debugPrint('WhisperTranscription: Started (stream capture)');
      return true;
    } catch (e) {
      _lastError = 'Failed to start transcription: $e';
      debugPrint('WhisperTranscription: Start error - $e');
      await _disposeAudioStream();
      return false;
    }
  }

  /// Stop transcription
  Future<void> stopTranscription() async {
    if (!_isTranscribing) return;

    try {
      await _transcriptionChannel.invokeMethod('stopAudioCapture');
      _audioProcessTimer?.cancel();
      await _processAudioBuffer(force: true);
      _pcmBuffer.clear();
      await _disposeAudioStream();
      _isTranscribing = false;
      notifyListeners();
      debugPrint('WhisperTranscription: Stopped');
    } catch (e) {
      debugPrint('WhisperTranscription: Stop error - $e');
    }
  }

  /// Process audio buffer with Whisper (ON-DEVICE)
  Future<void> _processAudioBuffer({bool force = false}) async {
    if (!_isWhisperLoaded) return;
    if (_pcmBuffer.isEmpty) return;
    if (_isProcessingChunk) return;

    const minBytes = _sampleRate * _audioChunkDuration * _bytesPerSample;
    if (!force && _pcmBuffer.length < minBytes) {
      return;
    }

    _isProcessingChunk = true;
    try {
      final chunkLength = force
          ? _pcmBuffer.length
          : math.min(minBytes, _pcmBuffer.length);
      if (chunkLength == 0) return;

      final audioBytes = Uint8List.fromList(
        _pcmBuffer.sublist(0, chunkLength),
      );
      _pcmBuffer.removeRange(0, chunkLength);

      final wavFile = await _writeChunkToWav(audioBytes);
      String text = '';
      try {
        text = await _ggmlRunner.transcribeFile(
          audioPath: wavFile.path,
          language: _sourceLanguage.bcpCode,
          translate: _isTranslating,
        );
      } finally {
        unawaited(wavFile.delete().catchError((_) => wavFile));
      }

      text = text.trim();
      if (text.isEmpty) {
        return;
      }

      _currentText = text;

      if (_isTranslating && _translator != null) {
        final translated = await _translator!.translateText(text);
        _currentTranslatedText = translated;
      } else {
        _currentTranslatedText = text;
      }

      _subtitles.add(
        SubtitleEntry(
          originalText: text,
          translatedText: _currentTranslatedText,
          timestamp: DateTime.now(),
        ),
      );

      if (_isTTSEnabled && _currentTranslatedText.isNotEmpty) {
        await _tts.speak(_currentTranslatedText);
      }

      notifyListeners();
      debugPrint('WhisperTranscription: GGML transcript -> $text');
    } catch (e) {
      debugPrint('WhisperTranscription: Audio processing error - $e');
    } finally {
      _isProcessingChunk = false;
    }
  }

  void _handleIncomingAudioChunk(dynamic event) {
    if (!_isTranscribing) return;
    if (event is! Uint8List || event.isEmpty) return;
    _pcmBuffer.addAll(event);
  }

  void _handleAudioStreamError(Object error) {
    _lastError = 'Audio capture error: $error';
    notifyListeners();
    debugPrint('WhisperTranscription: Audio stream error - $error');
  }

  Future<void> _disposeAudioStream() async {
    await _audioStreamSubscription?.cancel();
    _audioStreamSubscription = null;
  }

  Future<File> _writeChunkToWav(Uint8List pcmBytes) async {
    final tempFile = File(
      '${Directory.systemTemp.path}/whisper_chunk_${DateTime.now().microsecondsSinceEpoch}.wav',
    );
    final wavBytes = _wrapPcmAsWav(pcmBytes);
    await tempFile.writeAsBytes(wavBytes, flush: true);
    return tempFile;
  }

  Uint8List _wrapPcmAsWav(Uint8List pcmBytes) {
    const channels = 1;
    const bitsPerSample = _bytesPerSample * 8;
    const byteRate = _sampleRate * channels * _bytesPerSample;
    const blockAlign = channels * _bytesPerSample;
    final dataSize = pcmBytes.length;

    final buffer = BytesBuilder(copy: false)
      ..add('RIFF'.codeUnits)
      ..add(_int32LE(36 + dataSize))
      ..add('WAVE'.codeUnits)
      ..add('fmt '.codeUnits)
      ..add(_int32LE(16))
      ..add(_int16LE(1))
      ..add(_int16LE(channels))
      ..add(_int32LE(_sampleRate))
      ..add(_int32LE(byteRate))
      ..add(_int16LE(blockAlign))
      ..add(_int16LE(bitsPerSample))
      ..add('data'.codeUnits)
      ..add(_int32LE(dataSize))
      ..add(pcmBytes);

    return buffer.toBytes();
  }

  Uint8List _int16LE(int value) {
    final data = ByteData(2)..setUint16(0, value, Endian.little);
    return data.buffer.asUint8List();
  }

  Uint8List _int32LE(int value) {
    final data = ByteData(4)..setUint32(0, value, Endian.little);
    return data.buffer.asUint8List();
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

    if (_translator != null) {
      _translator!.close();
      _translator = OnDeviceTranslator(
        sourceLanguage: _sourceLanguage,
        targetLanguage: _targetLanguage,
      );
    }

    await _tts.setLanguage(language.bcpCode);
    notifyListeners();
  }

  /// Enable/disable TTS
  void setTTSEnabled(bool enabled) {
    _isTTSEnabled = enabled;
    notifyListeners();
  }

  /// Clear all subtitles
  void clearTranscriptions() {
    _subtitles.clear();
    _currentText = '';
    _currentTranslatedText = '';
    notifyListeners();
  }

  void clearSubtitles() => clearTranscriptions();

  /// Clean up old subtitles
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
    _audioProcessTimer?.cancel();
    _cleanupTimer?.cancel();
    unawaited(_transcriptionChannel.invokeMethod('stopAudioCapture'));
    unawaited(_disposeAudioStream());
    _translator?.close();
    _tts.stop();
    _ggmlRunner.dispose();
    _speechService?.removeListener(_handleSpeechServiceChange);
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
