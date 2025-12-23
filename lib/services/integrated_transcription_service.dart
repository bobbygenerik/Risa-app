import 'package:iptv_player/utils/debug_helper.dart';
// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:google_mlkit_language_id/google_mlkit_language_id.dart';
import 'package:record/record.dart';
import 'whisper_transcription_service.dart';
import 'package:iptv_player/services/http_client_service.dart';

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
  stt.SpeechToText? _speech;
  AudioRecorder? _recorder;
  WhisperTranscriptionService? _whisperService;
  String? _lastVideoUrl;

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
  // Last known playback position from player (optional)
  Duration? _lastPlaybackPosition;
  // System time when the last playback position was recorded
  DateTime? _lastPlaybackPositionTimestamp;
  // Smoothed playback position (exponential moving average) to reduce jitter
  Duration? _smoothedPlaybackPosition;
  // EMA alpha for smoothing (0-1). Higher means more responsive, lower means smoother.
  final double _playbackEmaAlpha = 0.2;
  // VOD (SRT) subtitles parsed for VOD playback
  final List<VodSubtitle> _vodSubtitles = [];

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
      // Initialize translator (no permissions needed)
      _translator = OnDeviceTranslator(
        sourceLanguage: _sourceLanguage,
        targetLanguage: _targetLanguage,
      );

      // Start cleanup timer (extended to 300s to avoid interference with playback)
      _cleanupTimer = Timer.periodic(const Duration(seconds: 300), (_) {
        _cleanupOldSubtitles();
      });

      _isInitialized = true;
      notifyListeners();
      debugLog('✅ Integrated transcription service initialized');
      return true;
    } catch (e) {
      debugLog('Initialization error: $e');
      _isInitialized = false;
      notifyListeners();
      return false;
    }
  }

  /// Extract audio from video stream and transcribe
  Future<void> transcribeVideoStream(String videoUrl) async {
    try {
      debugLog('Starting audio extraction from: $videoUrl');
      
      // Start transcription from video stream audio
      await startTranscription(videoUrl: videoUrl);
      
    } catch (e) {
      debugLog('Video stream transcription error: $e');
    }
  }

  /// Attach Whisper service for delegation
  void attachWhisperService(WhisperTranscriptionService service) {
    if (_whisperService == service) return;
    
    // Remove old listener if exists
    _whisperService?.removeListener(_onWhisperUpdate);
    
    _whisperService = service;
    _whisperService?.addListener(_onWhisperUpdate);
    debugLog('Joined IntegratedTranscriptionService with WhisperTranscriptionService');
  }

  Future<void> _onWhisperUpdate() async {
    if (_whisperService == null) return;
    final newText = _whisperService!.currentText;
    if (newText.isNotEmpty && newText != _currentText) {
      _currentText = newText;
      // Estimate playback position at arrival time using smoothed last sample + elapsed
      Duration? estimatedPosition = _smoothedPlaybackPosition ?? _lastPlaybackPosition;
      if (estimatedPosition != null && _lastPlaybackPositionTimestamp != null) {
        final elapsed = DateTime.now().difference(_lastPlaybackPositionTimestamp!);
        estimatedPosition = estimatedPosition + elapsed;
      }

      await _addSubtitle(newText, playbackPosition: estimatedPosition);
    }
  }

  /// Start live transcription from audio stream
  Future<void> startTranscription({String? audioFilePath, String? videoUrl}) async {
    if (!_isInitialized) {
      await initialize();
    }

    if (_isTranscribing) return;
    _lastVideoUrl = videoUrl;

    try {
      _isTranscribing = true;
      notifyListeners();

      if (audioFilePath != null) {
        // Use Whisper for audio file transcription
        await _transcribeWithWhisper(audioFilePath);
      } else {
        // Use Whisper for live audio transcription from video stream
        await _transcribeWithWhisper('live_stream');
      }

      debugLog('✅ Transcription started');
    } catch (e) {
      debugLog('Failed to start transcription: $e');
      _isTranscribing = false;
      notifyListeners();
    }
  }

  /// Transcribe audio file using Whisper
  Future<void> _transcribeWithWhisper(String audioFilePath) async {
    try {
      debugLog('Transcribing with Whisper: $audioFilePath');
      
      if (audioFilePath == 'live_stream') {
        // For live streams, start continuous transcription
        await _startLiveWhisperTranscription();
      } else {
        // For audio files, transcribe the file
        await _transcribeAudioFile(audioFilePath);
      }
      
    } catch (e) {
      debugLog('Whisper transcription error: $e');
    }
  }
  
  /// Start live Whisper transcription from video stream
  Future<void> _startLiveWhisperTranscription() async {
    debugLog('Delegating live transcription to WhisperTranscriptionService');
    
    if (_whisperService != null && _lastVideoUrl != null) {
      await _whisperService!.startTranscription(streamUrl: _lastVideoUrl!);
    } else {
      debugLog('⚠️ Cannot start live transcription: Whisper service or Video URL missing');
      // For now, keep _isTranscribing = true so UI doesn't flicker, 
      // but results won't come in until whisper starts.
    }
    
    _isTranscribing = true;
    notifyListeners();
  }

  /// Load SRT contents (text) and parse into VOD subtitles
  Future<void> loadSrtFromString(String srtContents) async {
    try {
      final parsed = _parseSrt(srtContents);
      _vodSubtitles
        ..clear()
        ..addAll(parsed);
      notifyListeners();
      debugLog('Loaded ${_vodSubtitles.length} VOD subtitles');
    } catch (e) {
      debugLog('Failed to load SRT: $e');
    }
  }

  /// Load SRT from a remote URL
  Future<void> loadSrtFromUrl(String url) async {
    try {
      final res = await HttpClientService().getString(url);
      await loadSrtFromString(res);
    } catch (e) {
      debugLog('Failed to fetch SRT from $url: $e');
      rethrow;
    }
  }
  
  /// Transcribe an audio file with Whisper
  Future<void> _transcribeAudioFile(String filePath) async {
    // This would use your Whisper model to transcribe the audio file
    debugLog('Transcribing audio file: $filePath');
    
    // Placeholder - integrate with your actual Whisper implementation
    await Future.delayed(const Duration(seconds: 2));
    await _addSubtitle('Transcription result from file: $filePath');
  }

  /// Stop transcription
  Future<void> stopTranscription() async {
    if (!_isTranscribing) return;

    try {
      await _speech?.stop();
      if (_whisperService != null) {
        await _whisperService!.stopTranscription();
      }
      _isTranscribing = false;
      _currentText = '';
      _lastVideoUrl = null;
      notifyListeners();
      debugLog('✅ Transcription stopped');
    } catch (e) {
      debugLog('Failed to stop transcription: $e');
    }
  }

  /// Add subtitle and translate if enabled
  /// Add subtitle and translate if enabled. If [playbackPosition] is provided
  /// the subtitle will be associated with that position for VOD sync/export.
  Future<void> _addSubtitle(String text, {Duration? playbackPosition}) async {
    if (text.trim().isEmpty) return;

    final entry = SubtitleEntry(
      originalText: text,
      timestamp: DateTime.now(),
      playbackPosition: playbackPosition ?? _lastPlaybackPosition,
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
      debugLog('Translation error: $e');
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
      debugLog('Downloading translation models...');

      // Download source language
      final sourceDownloaded = await _modelManager.isModelDownloaded(
        _sourceLanguage.bcpCode,
      );
      if (!sourceDownloaded) {
        debugLog('Downloading ${_sourceLanguage.bcpCode}...');
        await _modelManager.downloadModel(_sourceLanguage.bcpCode);
        _downloadProgress = 0.5;
        notifyListeners();
      }

      // Download target language
      final targetDownloaded = await _modelManager.isModelDownloaded(
        _targetLanguage.bcpCode,
      );
      if (!targetDownloaded) {
        debugLog('Downloading ${_targetLanguage.bcpCode}...');
        await _modelManager.downloadModel(_targetLanguage.bcpCode);
        _downloadProgress = 1.0;
        notifyListeners();
      }

      _isDownloadingModels = false;
      _downloadProgress = 1.0;
      notifyListeners();
      debugLog('✅ Translation models downloaded');
      return true;
    } catch (e) {
      debugLog('Model download error: $e');
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
      debugLog('Error updating translator: $e');
    }
  }

  /// Clear all subtitles
  void clearSubtitles() {
    _subtitles.clear();
    _currentText = '';
    _currentTranslatedText = '';
    notifyListeners();
  }

  /// Clear VOD subtitles
  void clearVodSubtitles() {
    _vodSubtitles.clear();
    notifyListeners();
  }

  /// Update player playback position (call periodically from player)
  void updatePlaybackPosition(Duration position) {
    // Update raw last sample
    _lastPlaybackPosition = position;
    _lastPlaybackPositionTimestamp = DateTime.now();

    // Update EMA-smoothed playback position (in milliseconds)
    if (_smoothedPlaybackPosition == null) {
      _smoothedPlaybackPosition = position;
    } else {
      final prevMs = _smoothedPlaybackPosition!.inMilliseconds.toDouble();
      final newMs = position.inMilliseconds.toDouble();
      final smoothedMs = (_playbackEmaAlpha * newMs) + ((1 - _playbackEmaAlpha) * prevMs);
      _smoothedPlaybackPosition = Duration(milliseconds: smoothedMs.round());
    }
  }

  /// Return current VOD subtitle text for current playback position (if any)
  String get currentVodSubtitle {
    final pos = _smoothedPlaybackPosition ?? _lastPlaybackPosition;
    if (pos == null || _vodSubtitles.isEmpty) return '';

    for (final sub in _vodSubtitles) {
      if (pos >= sub.start && pos <= sub.end) return sub.text;
    }
    return '';
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

      String start;
      String end;
      if (entry.playbackPosition != null) {
        start = _formatDurationAsSRT(entry.playbackPosition!);
        end = _formatDurationAsSRT(entry.playbackPosition! + const Duration(seconds: 3));
      } else {
        start = _formatSRTTimestamp(entry.timestamp);
        end = _formatSRTTimestamp(
          entry.timestamp.add(const Duration(seconds: 3)),
        );
      }
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

  /// Format a duration (relative) to SRT timestamp (HH:MM:SS,mmm)
  String _formatDurationAsSRT(Duration d) {
    final hours = d.inHours.toString().padLeft(2, '0');
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    final milliseconds = (d.inMilliseconds.remainder(1000)).toString().padLeft(3, '0');
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
    _speech?.cancel();
    _translator?.close();
    // TTS stop removed (not used)
    _recorder?.dispose();
    super.dispose();
  }
}

/// Subtitle entry with translation
class SubtitleEntry {
  final String originalText;
  String translatedText;
  final DateTime timestamp;
  final Duration? playbackPosition;
  final TranslateLanguage sourceLanguage;
  final TranslateLanguage targetLanguage;

  SubtitleEntry({
    required this.originalText,
    this.translatedText = '',
    required this.timestamp,
    this.playbackPosition,
    required this.sourceLanguage,
    required this.targetLanguage,
  });
}

/// VOD subtitle entry (parsed from SRT/WebVTT)
class VodSubtitle {
  final Duration start;
  final Duration end;
  final String text;

  VodSubtitle({required this.start, required this.end, required this.text});
}

// Simple SRT parser (durations returned as Duration)
List<VodSubtitle> _parseSrt(String srt) {
  final lines = srt.replaceAll('\r', '').split('\n');
  final entries = <VodSubtitle>[];
  int i = 0;
  while (i < lines.length) {
    final idxLine = lines[i].trim();
    if (idxLine.isEmpty) {
      i++;
      continue;
    }
    // optional index
    if (RegExp(r'^\d+ * * * * * * * * * *$').hasMatch(idxLine)) {
      i++;
    }
    if (i >= lines.length) break;
    final timeLine = lines[i].trim();
    final parts = timeLine.split(' --> ');
    if (parts.length != 2) {
      i++;
      continue;
    }
    final start = _parseSrtTimestamp(parts[0]);
    final end = _parseSrtTimestamp(parts[1]);
    i++;
    final buffer = StringBuffer();
    while (i < lines.length && lines[i].trim().isNotEmpty) {
      if (buffer.isNotEmpty) buffer.writeln();
      buffer.write(lines[i]);
      i++;
    }
    entries.add(VodSubtitle(start: start, end: end, text: buffer.toString()));
  }
  return entries;
}

Duration _parseSrtTimestamp(String s) {
  // Format: HH:MM:SS,mmm or H:MM:SS.mmm or MM:SS,mmm
  final clean = s.replaceAll(',', '.').trim();
  final parts = clean.split(':');
  if (parts.length == 3) {
    final h = int.tryParse(parts[0]) ?? 0;
    final m = int.tryParse(parts[1]) ?? 0;
    final secParts = parts[2].split('.');
    final sec = int.tryParse(secParts[0]) ?? 0;
    final ms = secParts.length > 1 ? int.tryParse(('${secParts[1]}000').substring(0, 3)) ?? 0 : 0;
    return Duration(hours: h, minutes: m, seconds: sec, milliseconds: ms);
  }
  if (parts.length == 2) {
    final m = int.tryParse(parts[0]) ?? 0;
    final secParts = parts[1].split('.');
    final sec = int.tryParse(secParts[0]) ?? 0;
    final ms = secParts.length > 1 ? int.tryParse(('${secParts[1]}000').substring(0, 3)) ?? 0 : 0;
    return Duration(minutes: m, seconds: sec, milliseconds: ms);
  }
  return Duration.zero;
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
