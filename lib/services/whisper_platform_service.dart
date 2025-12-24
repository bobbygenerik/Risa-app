import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class WhisperPlatformService {
  static const MethodChannel _channel = MethodChannel('com.risa.iptv/whisper');

  static const Map<String, WhisperModel> availableModels = {
    'tiny.en': WhisperModel(
      name: 'tiny.en',
      size: '39 MB',
      description: 'Fastest, English only',
      bundled: true,
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

  /// Initialize Whisper with bundled tiny model
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
      if (modelPath == null) return null;

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
