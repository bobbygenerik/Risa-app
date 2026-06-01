part of '../integrated_transcription_service.dart';

extension IntegratedTranscriptionSettings on IntegratedTranscriptionService {
/// Download translation models
Future<bool> downloadTranslationModels() async {
  if (_isDownloadingModels) return false;

  _isDownloadingModels = true;
  _downloadProgress = 0.0;
  _notifyTranscriptionChange();

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
      _notifyTranscriptionChange();
    }

    // Download target language
    final targetDownloaded = await _modelManager.isModelDownloaded(
      _targetLanguage.bcpCode,
    );
    if (!targetDownloaded) {
      debugLog('Downloading ${_targetLanguage.bcpCode}...');
      await _modelManager.downloadModel(_targetLanguage.bcpCode);
      _downloadProgress = 1.0;
      _notifyTranscriptionChange();
    }

    _isDownloadingModels = false;
    _downloadProgress = 1.0;
    _notifyTranscriptionChange();
    debugLog('✅ Translation models downloaded');
    return true;
  } catch (e) {
    debugLog('Model download error: $e');
    _isDownloadingModels = false;
    _downloadProgress = 0.0;
    _notifyTranscriptionChange();
    return false;
  }
}

/// Enable/disable translation
void setTranslationEnabled(bool enabled) {
  _isTranslating = enabled;
  if (_isTranslating && _targetLanguage != TranslateLanguage.english) {
    _targetLanguage = TranslateLanguage.english;
  }
  _notifyTranscriptionChange();
}

/// Enable/disable TTS - REMOVED (not used)
void setTTSEnabled(bool enabled) {
  _isTTSEnabled = enabled;
  // TTS functionality removed
  _notifyTranscriptionChange();
}

/// Set source language
Future<void> setSourceLanguage(TranslateLanguage language) async {
  if (_sourceLanguage == language) return;

  _sourceLanguage = language;
  await _updateTranslator();
  _notifyTranscriptionChange();
}

/// Set target language
Future<void> setTargetLanguage(TranslateLanguage language) async {
  if (language != TranslateLanguage.english) {
    _targetLanguage = TranslateLanguage.english;
    _notifyTranscriptionChange();
    return;
  }
  if (_targetLanguage == language) return;

  _targetLanguage = language;
  // TTS language setting removed (not used)
  await _updateTranslator();
  _notifyTranscriptionChange();
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
  _notifyTranscriptionChange();
}

/// Clear VOD subtitles
void clearVodSubtitles() {
  _vodSubtitles.clear();
  _notifyTranscriptionChange();
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
    final smoothedMs =
        (_playbackEmaAlpha * newMs) + ((1 - _playbackEmaAlpha) * prevMs);
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
  // Also trim VOD subtitle list to the configured maximum
  _trimVodSubtitles();
  _notifyTranscriptionChange();
}

/// Load VOD subtitles from an SRT string and trim excess entries.
void loadVodSubtitlesFromSrt(String srt) {
  final parsed = _parseSrt(srt);
  _vodSubtitles
    ..clear()
    ..addAll(parsed);
  _trimVodSubtitles();
  _notifyTranscriptionChange();
}

void _trimVodSubtitles() {
  if (_vodSubtitles.length <= _maxVodSubtitles) return;
  _vodSubtitles.removeRange(_maxVodSubtitles, _vodSubtitles.length);
}

void _trimSubtitleHistory() {
  while (_subtitles.length > IntegratedTranscriptionService._maxSubtitleHistory) {
    _subtitles.removeAt(0);
  }
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
      end = _formatDurationAsSRT(
          entry.playbackPosition! + const Duration(seconds: 3));
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
  final milliseconds =
      (d.inMilliseconds.remainder(1000)).toString().padLeft(3, '0');
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
  }).toList()
    ..sort((a, b) => a.name.compareTo(b.name));
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
}
