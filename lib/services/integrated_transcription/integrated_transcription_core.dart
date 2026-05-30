part of '../integrated_transcription_service.dart';

extension IntegratedTranscriptionCore on IntegratedTranscriptionService {
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
    _notifyTranscriptionChange();
    debugLog('✅ Integrated transcription service initialized');
    return true;
  } catch (e) {
    debugLog('Initialization error: $e');
    _isInitialized = false;
    _notifyTranscriptionChange();
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
  debugLog(
      'Joined IntegratedTranscriptionService with WhisperTranscriptionService');
}

Future<void> _onWhisperUpdate() async {
  if (_whisperService == null) return;
  final whisper = _whisperService;
  if (whisper == null) return;
  final downloading = whisper.isDownloadingModel;
  if (_isDownloadingWhisperModel != downloading) {
    _isDownloadingWhisperModel = downloading;
    _notifyTranscriptionChange();
  }
  final newText = whisper.currentText;
  if (newText.isNotEmpty && newText != _currentText) {
    _currentText = newText;
    // Estimate playback position at arrival time using smoothed last sample + elapsed
    Duration? estimatedPosition =
        _smoothedPlaybackPosition ?? _lastPlaybackPosition;
    if (estimatedPosition != null && _lastPlaybackPositionTimestamp != null) {
      final elapsed =
          DateTime.now().difference(_lastPlaybackPositionTimestamp!);
      estimatedPosition = estimatedPosition + elapsed;
    }

    await _addSubtitle(newText, playbackPosition: estimatedPosition);
  }
}

/// Start live transcription from audio stream
Future<void> startTranscription(
    {String? audioFilePath, String? videoUrl}) async {
  if (!_isInitialized) {
    await initialize();
  }

  if (_isTranscribing) return;
  _lastVideoUrl = videoUrl;

  try {
    _isTranscribing = true;
    _notifyTranscriptionChange();

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
    _notifyTranscriptionChange();
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

  final whisper = _whisperService;
  final url = _lastVideoUrl;
  if (whisper != null && url != null) {
    final started = await whisper.startTranscription(streamUrl: url);
    if (!started) {
      _lastError = whisper.lastError.isNotEmpty
          ? whisper.lastError
          : 'Failed to start live transcription';
      _isTranscribing = false;
      _notifyTranscriptionChange();
      return;
    }
    _lastError = '';
  } else {
    debugLog(
        '⚠️ Cannot start live transcription: Whisper service or Video URL missing');
    // For now, keep _isTranscribing = true so UI doesn't flicker,
    // but results won't come in until whisper starts.
  }

  _isTranscribing = true;
  _notifyTranscriptionChange();
}

/// Transcribe an audio file with Whisper
Future<void> _transcribeAudioFile(String filePath) async {
  // This would use your Whisper model to transcribe the audio file
  debugLog('Transcribing audio file: $filePath');

  final whisper = _whisperService;
  if (whisper == null) {
    debugLog('Whisper service not attached, cannot transcribe file.');
    _lastError = 'Whisper service not ready';
    _notifyTranscriptionChange();
    return;
  }

  // Ensure initialized
  if (!whisper.isInitialized) {
    await whisper.initialize();
  }

  final result = await whisper.transcribeFile(filePath);

  if (result != null && result.isNotEmpty) {
    await _addSubtitle(result);
  } else {
    if (whisper.lastError.isNotEmpty) {
      debugLog('Transcription error: ${whisper.lastError}');
      _lastError = whisper.lastError;
      _notifyTranscriptionChange();
    } else {
      debugLog('Transcription returned empty result');
    }
  }
}

/// Stop transcription
Future<void> stopTranscription() async {
  if (!_isTranscribing) return;

  try {
    await _speech?.stop();
    final whisper = _whisperService;
    if (whisper != null) {
      await whisper.stopTranscription();
    }
    _isTranscribing = false;
    _currentText = '';
    _lastVideoUrl = null;
    _lastError = '';
    _notifyTranscriptionChange();
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
  _trimSubtitleHistory();

  // Translate if enabled (auto-detects language per entry)
  if (_isTranslating) {
    await _translateEntry(entry);
  } else {
    entry.translatedText = text;
  }

  _notifyTranscriptionChange();
}

/// Translate a subtitle entry (ON-DEVICE)
Future<void> _translateEntry(SubtitleEntry entry) async {
  try {
    // Detect source language
    final languageId = LanguageIdentifier(confidenceThreshold: 0.5);
    final detectedLanguage =
        await languageId.identifyLanguage(entry.originalText);

    // If already English or detection failed, no translation needed
    if (detectedLanguage == 'en' || detectedLanguage == 'und') {
      entry.translatedText = entry.originalText;
      _currentTranslatedText = entry.originalText;
      _notifyTranscriptionChange();
      return;
    }

    // Create translator for detected language -> English
    final sourceLanguage = _getTranslateLanguage(detectedLanguage);
    if (sourceLanguage == null) {
      entry.translatedText = entry.originalText;
      return;
    }

    // Ensure required ML Kit models are available (source -> English).
    final sourceCode = sourceLanguage.bcpCode;
    final targetCode = TranslateLanguage.english.bcpCode;
    try {
      final sourceReady =
          await _modelManager.isModelDownloaded(sourceCode);
      if (!sourceReady) {
        await _modelManager.downloadModel(sourceCode);
      }
      final targetReady =
          await _modelManager.isModelDownloaded(targetCode);
      if (!targetReady) {
        await _modelManager.downloadModel(targetCode);
      }
    } catch (_) {
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

    _notifyTranscriptionChange();
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

}
