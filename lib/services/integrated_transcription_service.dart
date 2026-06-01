import 'package:iptv_player/utils/debug_helper.dart';
// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:google_mlkit_language_id/google_mlkit_language_id.dart';
import 'package:record/record.dart';
import 'whisper_transcription_service.dart';

/// Integrated On-Device Transcription and Translation Service
///
/// Combines:
/// - Speech-to-text (platform APIs for now, can be replaced with TFLite)
/// - On-device translation (ML Kit - truly offline)
/// - Text-to-speech
///
/// All translation happens on-device after initial model download.
part 'integrated_transcription/integrated_transcription_core.dart';
part 'integrated_transcription/integrated_transcription_settings.dart';
part 'integrated_transcription/integrated_transcription_models.dart';

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
  bool _isDownloadingWhisperModel = false;
  String _lastError = '';

  // Languages
  TranslateLanguage _sourceLanguage =
      TranslateLanguage.english; // Auto-detected
  TranslateLanguage _targetLanguage =
      TranslateLanguage.english; // Always English

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

  static const int _maxSubtitleHistory = 200;

  Timer? _cleanupTimer;
  // VOD subtitle support (parsed from SRT/WebVTT when loading VOD subtitles)
  final List<VodSubtitle> _vodSubtitles = [];
  final int _maxVodSubtitles = 1000;

  // Getters
  bool get isInitialized => _isInitialized;
  bool get isTranscribing => _isTranscribing;
  bool get isTranslating => _isTranslating;
  bool get isTTSEnabled => _isTTSEnabled;
  bool get isDownloadingModels => _isDownloadingModels;
  double get downloadProgress => _downloadProgress;
  bool get isDownloadingWhisperModel => _isDownloadingWhisperModel;
  String get lastError => _lastError;
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

  void _notifyTranscriptionChange() => notifyListeners();

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

