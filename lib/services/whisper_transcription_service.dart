import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:iptv_player/services/whisper_platform_service.dart';

class WhisperTranscriptionService extends ChangeNotifier {
  bool _isInitialized = false;
  bool _isTranscribing = false;
  bool _isTranslating = false;
  bool _isTTSEnabled = false;
  String _lastError = '';
  TranslateLanguage _sourceLanguage = TranslateLanguage.english;
  TranslateLanguage _targetLanguage = TranslateLanguage.spanish;
  final List<SubtitleEntry> _subtitles = [];
  String _currentText = '';
  
  Timer? _recordingTimer;
  OnDeviceTranslator? _translator;
  String _selectedModel = 'tiny.en';

  bool get isInitialized => _isInitialized;
  bool get isTranscribing => _isTranscribing;
  bool get isTranslating => _isTranslating;
  bool get isTTSEnabled => _isTTSEnabled;
  bool get isWhisperLoaded => _isInitialized;
  String get lastError => _lastError;
  TranslateLanguage get sourceLanguage => _sourceLanguage;
  TranslateLanguage get targetLanguage => _targetLanguage;
  String get currentText => _currentText;
  List<SubtitleEntry> get subtitles => List.unmodifiable(_subtitles);
  List<SubtitleEntry> get transcriptions => List.unmodifiable(_subtitles);
  String get latestSubtitles => _currentText;

  Future<bool> initialize() async {
    try {
      final success = await WhisperPlatformService.initialize();
      _isInitialized = success;
      if (!success) {
        _lastError = 'Failed to initialize Whisper platform service';
      }
      notifyListeners();
      return success;
    } catch (e) {
      _lastError = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> loadWhisperModel(String modelName) async {
    try {
      final isAvailable = await WhisperPlatformService.isModelAvailable(modelName);
      if (!isAvailable) {
        _lastError = 'Model $modelName not available';
        notifyListeners();
        return false;
      }
      _selectedModel = modelName;
      notifyListeners();
      return true;
    } catch (e) {
      _lastError = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> startTranscription({String? streamUrl}) async {
    if (!_isInitialized) {
      _lastError = 'Whisper not initialized';
      notifyListeners();
      return false;
    }
    
    if (streamUrl == null || streamUrl.isEmpty) {
      _lastError = 'No stream URL provided';
      notifyListeners();
      return false;
    }
    
    try {
      _isTranscribing = true;
      notifyListeners();
      
      // Extract audio from stream in 5-second chunks using ffmpeg
      _recordingTimer = Timer.periodic(const Duration(seconds: 5), (_) async {
        await _extractAndTranscribeAudio(streamUrl);
      });
      
      return true;
    } catch (e) {
      _lastError = e.toString();
      _isTranscribing = false;
      notifyListeners();
      return false;
    }
  }
  
  Future<void> _extractAndTranscribeAudio(String streamUrl) async {
    if (!_isInitialized) return;
    
    try {
      final tempDir = Directory.systemTemp;
      final audioPath = '${tempDir.path}/audio_${DateTime.now().millisecondsSinceEpoch}.wav';
      
      // Use ffmpeg to extract 5 seconds of audio from stream
      final result = await Process.run('ffmpeg', [
        '-i', streamUrl,
        '-t', '5',
        '-vn',
        '-acodec', 'pcm_s16le',
        '-ar', '16000',
        '-ac', '1',
        '-y',
        audioPath,
      ]);
      
      if (result.exitCode == 0 && await File(audioPath).exists()) {
        await _processAudioChunk(audioPath);
        await File(audioPath).delete();
      }
    } catch (e) {
      debugPrint('Audio extraction error: $e');
    }
  }

  Future<void> _processAudioChunk(String audioPath) async {
    if (!_isInitialized) return;
    
    try {
      final result = await WhisperPlatformService.transcribe(
        audioPath: audioPath,
        modelName: _selectedModel,
      );
      
      if (result != null && result.isNotEmpty) {
        _currentText = result;
        
        final entry = SubtitleEntry(
          originalText: result,
          translatedText: _isTranslating ? await _translateText(result) : result,
          timestamp: DateTime.now(),
        );
        
        _subtitles.add(entry);
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Transcription error: $e');
    }
  }

  Future<String> _translateText(String text) async {
    _translator ??= OnDeviceTranslator(
        sourceLanguage: _sourceLanguage,
        targetLanguage: _targetLanguage,
      );
    
    try {
      return await _translator!.translateText(text);
    } catch (e) {
      return text;
    }
  }

  Future<void> stopTranscription() async {
    _recordingTimer?.cancel();
    _isTranscribing = false;
    notifyListeners();
  }

  void setTranslationEnabled(bool enabled) {
    _isTranslating = enabled;
    if (enabled && _translator == null) {
      _translator = OnDeviceTranslator(
        sourceLanguage: _sourceLanguage,
        targetLanguage: _targetLanguage,
      );
    }
    notifyListeners();
  }

  Future<void> setSourceLanguage(TranslateLanguage language) async {
    _sourceLanguage = language;
    _translator?.close();
    _translator = null;
    notifyListeners();
  }

  Future<void> setTargetLanguage(TranslateLanguage language) async {
    _targetLanguage = language;
    _translator?.close();
    _translator = null;
    notifyListeners();
  }

  void setTTSEnabled(bool enabled) {
    _isTTSEnabled = enabled;
    notifyListeners();
  }

  void clearTranscriptions() {
    _subtitles.clear();
    _currentText = '';
    notifyListeners();
  }

  void clearSubtitles() => clearTranscriptions();

  String exportAsSRT() {
    final buffer = StringBuffer();
    for (var i = 0; i < _subtitles.length; i++) {
      final entry = _subtitles[i];
      buffer.writeln(i + 1);
      buffer.writeln('${_formatTimestamp(entry.timestamp)} --> ${_formatTimestamp(entry.timestamp.add(const Duration(seconds: 5)))}');
      buffer.writeln(_isTranslating ? entry.translatedText : entry.originalText);
      buffer.writeln();
    }
    return buffer.toString();
  }
  
  String _formatTimestamp(DateTime dt) {
    final duration = dt.difference(DateTime(dt.year, dt.month, dt.day));
    final hours = duration.inHours.toString().padLeft(2, '0');
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    final millis = (duration.inMilliseconds % 1000).toString().padLeft(3, '0');
    return '$hours:$minutes:$seconds,$millis';
  }
  
  String get selectedModel => _selectedModel;
  
  void setSelectedModel(String modelName) {
    _selectedModel = modelName;
    notifyListeners();
  }
  
  Future<List<WhisperModelStatus>> getAvailableModels() async {
    return await WhisperPlatformService.getModelStatuses();
  }
  
  Future<bool> downloadModel(String modelName, {Function(double)? onProgress}) async {
    return await WhisperPlatformService.downloadModel(modelName, onProgress: onProgress);
  }

  @override
  void dispose() {
    _recordingTimer?.cancel();
    _translator?.close();
    super.dispose();
  }
}

class SubtitleEntry {
  final String originalText;
  final String translatedText;
  final DateTime timestamp;

  SubtitleEntry({
    required this.originalText,
    required this.translatedText,
    required this.timestamp,
  });
}
