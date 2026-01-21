import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class WhisperPlatformService {
  static const MethodChannel _channel = MethodChannel('com.risa.iptv/whisper');
  static const EventChannel _eventChannel =
      EventChannel('com.risa.iptv/whisper_stream');
  static const MethodChannel _exoCaptureChannel =
      MethodChannel('com.streamhub.iptv/transcription');
  static const EventChannel _exoAudioStream =
      EventChannel('com.streamhub.iptv/transcription_audio');
  static final StreamController<String> _exoTranscriptionController =
      StreamController<String>.broadcast();
  static StreamSubscription<dynamic>? _exoAudioSubscription;
  static bool _useExoCapture = false;
  static final BytesBuilder _exoAudioBuffer = BytesBuilder(copy: false);
  static bool _exoTranscribeInFlight = false;
  static const int _exoSampleRate = 16000;
  static const int _exoChannels = 1;
  static const int _exoChunkSeconds = 5;
  static final int _exoChunkBytes =
      _exoSampleRate * _exoChunkSeconds * _exoChannels * 2;
  static String _lastError = '';

  static const Map<String, WhisperModel> availableModels = {
    'tiny.en': WhisperModel(
      name: 'tiny.en',
      size: '39 MB',
      description: 'Fastest, English only',
      bundled: false,
      filename: 'ggml-tiny.en.bin',
    ),
    'base.en': WhisperModel(
      name: 'base.en',
      size: '142 MB',
      description: 'Good quality, English only',
      bundled: false,
      filename: 'ggml-base.en.bin',
    ),
    'small.en': WhisperModel(
      name: 'small.en',
      size: '466 MB',
      description: 'Better quality, English only',
      bundled: false,
      filename: 'ggml-small.en.bin',
    ),
  };

  /// Initialize Whisper plugin.
  static Future<bool> initialize() async {
    try {
      final result = await _channel.invokeMethod<bool>('initialize');
      return result ?? false;
    } catch (e) {
      return false;
    }
  }

  /// Transcribe audio file using specified model
  static Future<String?> transcribe({
    required String audioPath,
    String modelName = 'tiny.en',
  }) async {
    try {
      final modelPath = await _getModelPath(modelName);
      if (modelPath == null || !await File(modelPath).exists()) return null;

      final result = await _channel.invokeMethod<String>('transcribe', {
        'audioPath': audioPath,
        'modelPath': modelPath,
      });
      return result;
    } catch (e) {
      return null;
    }
  }

  /// Check if model is available locally
  static Future<bool> isModelAvailable(String modelName) async {
    final model = availableModels[modelName];
    if (model == null) return false;

    if (model.bundled) {
      // Bundled models are always available
      return true;
    }

    // Check if downloaded model exists
    final modelPath = await _getModelPath(modelName);
    return modelPath != null && await File(modelPath).exists();
  }

  /// Download a model
  static Future<bool> downloadModel(
    String modelName, {
    Function(double progress)? onProgress,
  }) async {
    final model = availableModels[modelName];
    if (model == null || model.bundled) return false;

    try {
      final result = await _channel.invokeMethod<bool>('downloadModel', {
        'modelName': modelName,
        'filename': model.filename,
      });
      return result ?? false;
    } catch (e) {
      return false;
    }
  }

  /// Request permission to capture playback audio (Android 10+).
  static Future<bool> requestAudioCapturePermission() async {
    try {
      final result = await _channel.invokeMethod<bool>(
        'requestCapturePermission',
      );
      return result ?? false;
    } catch (e) {
      return false;
    }
  }

  /// Start audio playback capture and stream transcriptions.
  static Future<bool> startAudioCapture({
    String modelName = 'tiny.en',
    String? streamUrl,
    bool preferExoCapture = true,
  }) async {
    try {
      _lastError = '';
      if (preferExoCapture &&
          streamUrl != null &&
          streamUrl.trim().isNotEmpty) {
        final started = await _startExoCapture(streamUrl.trim(), modelName);
        if (started) return true;
        _lastError =
            'Audio capture failed. Switch player backend to VLC.';
        return false;
      }
      final permissionGranted = await requestAudioCapturePermission();
      if (!permissionGranted) {
        _lastError =
            'Audio capture permission denied. Allow screen capture to enable subtitles.';
        return false;
      }
      final result = await _channel.invokeMethod<bool>(
        'startAudioCapture',
        {'modelName': modelName},
      );
      _useExoCapture = false;
      return result ?? false;
    } catch (e) {
      _lastError = e.toString();
      return false;
    }
  }

  /// Stop audio playback capture.
  static Future<void> stopAudioCapture() async {
    try {
      if (_useExoCapture) {
        await _stopExoCapture();
        return;
      }
      await _channel.invokeMethod<void>('stopAudioCapture');
    } catch (_) {}
  }

  /// Stream of transcription updates coming from native capture.
  static Stream<String> get transcriptionStream => _useExoCapture
      ? _exoTranscriptionController.stream
      : _eventChannel
          .receiveBroadcastStream()
          .map((event) => event?.toString() ?? '');

  static String get lastError => _lastError;

  /// Get local path for model
  static Future<String?> _getModelPath(String modelName) async {
    final model = availableModels[modelName];
    if (model == null) return null;

    if (model.bundled) {
      // Return bundled asset path
      return 'assets/models/${model.filename}';
    } else {
      // Return downloaded model path
      final appDir = await getApplicationDocumentsDirectory();
      final modelPath = '${appDir.path}/models/${model.filename}';
      return await File(modelPath).exists() ? modelPath : null;
    }
  }

  static Future<bool> _startExoCapture(
    String streamUrl,
    String modelName,
  ) async {
    final modelPath = await _getModelPath(modelName);
    if (modelPath == null || !await File(modelPath).exists()) {
      _lastError = 'Whisper model $modelName not available';
      return false;
    }
    _useExoCapture = true;
    _exoAudioBuffer.clear();
    _exoTranscribeInFlight = false;
    final started = await _exoCaptureChannel.invokeMethod<bool>(
      'startAudioCapture',
      {
        'sampleRate': _exoSampleRate,
        'channels': _exoChannels,
        'streamUrl': streamUrl,
      },
    );
    if (started != true) {
      _useExoCapture = false;
      return false;
    }
    await _exoAudioSubscription?.cancel();
    _exoAudioSubscription = _exoAudioStream
        .receiveBroadcastStream()
        .listen((event) => _handleExoAudioEvent(event, modelName));
    return true;
  }

  static Future<void> _stopExoCapture() async {
    _useExoCapture = false;
    await _exoAudioSubscription?.cancel();
    _exoAudioSubscription = null;
    _exoAudioBuffer.clear();
    _exoTranscribeInFlight = false;
    try {
      await _exoCaptureChannel.invokeMethod<void>('stopAudioCapture');
    } catch (_) {}
  }

  static void _handleExoAudioEvent(dynamic event, String modelName) {
    if (!_useExoCapture) return;
    if (event is! Uint8List) return;
    if (event.isEmpty) return;
    _exoAudioBuffer.add(event);
    if (_exoTranscribeInFlight) return;
    if (_exoAudioBuffer.length < _exoChunkBytes) return;
    _exoTranscribeInFlight = true;
    final all = _exoAudioBuffer.takeBytes();
    final chunk = all.length <= _exoChunkBytes
        ? all
        : all.sublist(0, _exoChunkBytes);
    if (all.length > _exoChunkBytes) {
      _exoAudioBuffer.add(all.sublist(_exoChunkBytes));
    }
    _transcribeExoChunk(chunk, modelName).whenComplete(() {
      _exoTranscribeInFlight = false;
    });
  }

  static Future<void> _transcribeExoChunk(
    Uint8List pcmData,
    String modelName,
  ) async {
    try {
      if (pcmData.isEmpty) return;
      final wavFile = await _writeWavFile(
        pcmData,
        sampleRate: _exoSampleRate,
        channels: _exoChannels,
      );
      final text = await transcribe(
        audioPath: wavFile.path,
        modelName: modelName,
      );
      await wavFile.delete();
      if (text != null && text.trim().isNotEmpty) {
        _exoTranscriptionController.add(text.trim());
      }
    } catch (e) {
      _lastError = e.toString();
    }
  }

  static Future<File> _writeWavFile(
    Uint8List pcmData, {
    required int sampleRate,
    required int channels,
  }) async {
    final dir = await getTemporaryDirectory();
    final file = File(
      '${dir.path}/whisper_chunk_${DateTime.now().millisecondsSinceEpoch}.wav',
    );
    final header = _buildWavHeader(
      pcmData.length,
      sampleRate,
      channels,
    );
    final bytes = BytesBuilder(copy: false)
      ..add(header)
      ..add(pcmData);
    await file.writeAsBytes(bytes.takeBytes(), flush: true);
    return file;
  }

  static Uint8List _buildWavHeader(
    int pcmLength,
    int sampleRate,
    int channels,
  ) {
    final byteRate = sampleRate * channels * 16 ~/ 8;
    final totalDataLen = pcmLength + 36;
    final header = ByteData(44);
    header.setUint8(0, 'R'.codeUnitAt(0));
    header.setUint8(1, 'I'.codeUnitAt(0));
    header.setUint8(2, 'F'.codeUnitAt(0));
    header.setUint8(3, 'F'.codeUnitAt(0));
    header.setUint32(4, totalDataLen, Endian.little);
    header.setUint8(8, 'W'.codeUnitAt(0));
    header.setUint8(9, 'A'.codeUnitAt(0));
    header.setUint8(10, 'V'.codeUnitAt(0));
    header.setUint8(11, 'E'.codeUnitAt(0));
    header.setUint8(12, 'f'.codeUnitAt(0));
    header.setUint8(13, 'm'.codeUnitAt(0));
    header.setUint8(14, 't'.codeUnitAt(0));
    header.setUint8(15, ' '.codeUnitAt(0));
    header.setUint32(16, 16, Endian.little);
    header.setUint16(20, 1, Endian.little);
    header.setUint16(22, channels, Endian.little);
    header.setUint32(24, sampleRate, Endian.little);
    header.setUint32(28, byteRate, Endian.little);
    header.setUint16(32, (channels * 16 ~/ 8), Endian.little);
    header.setUint16(34, 16, Endian.little);
    header.setUint8(36, 'd'.codeUnitAt(0));
    header.setUint8(37, 'a'.codeUnitAt(0));
    header.setUint8(38, 't'.codeUnitAt(0));
    header.setUint8(39, 'a'.codeUnitAt(0));
    header.setUint32(40, pcmLength, Endian.little);
    return header.buffer.asUint8List();
  }

  /// Get available models with their status
  static Future<List<WhisperModelStatus>> getModelStatuses() async {
    final statuses = <WhisperModelStatus>[];

    for (final entry in availableModels.entries) {
      final model = entry.value;
      final isAvailable = await isModelAvailable(entry.key);

      statuses.add(WhisperModelStatus(
        model: model,
        isAvailable: isAvailable,
        isDownloading: false, // Download state tracked by AIModelManager
      ));
    }

    return statuses;
  }
}

class WhisperModel {
  final String name;
  final String size;
  final String description;
  final bool bundled;
  final String filename;

  const WhisperModel({
    required this.name,
    required this.size,
    required this.description,
    required this.bundled,
    required this.filename,
  });
}

class WhisperModelStatus {
  final WhisperModel model;
  final bool isAvailable;
  final bool isDownloading;

  const WhisperModelStatus({
    required this.model,
    required this.isAvailable,
    required this.isDownloading,
  });
}
