import 'dart:async';
import 'dart:io';

// Small single-line control statements across this manager are intentionally
// left without braces in a few places. Silence the analyzer info for now.
// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import '../utils/debug_helper.dart';

/// Unified AI Model Manager
/// Handles downloading and managing all AI models used across the app
/// Prevents duplicate downloads and allows model sharing between services
class AIModelManager extends ChangeNotifier {
  // Model download status
  final Map<String, ModelDownloadStatus> _modelStatus = {};
  final Map<String, double> _downloadProgress = {};

  bool get isInitialized => true;

  /// Initialize the model manager
  Future<void> initialize() async {
    try {
      await _checkAllModels();
    } catch (e) {
      debugLog('AIModelManager initialization error: $e');
    }
    notifyListeners();
  }

  /// Get status for a specific model
  ModelDownloadStatus getModelStatus(String modelId) {
    return _modelStatus[modelId] ?? ModelDownloadStatus.notDownloaded;
  }

  /// Get download progress for a specific model
  double getDownloadProgress(String modelId) {
    return _downloadProgress[modelId] ?? 0.0;
  }

  /// Check if model is downloaded
  bool isModelDownloaded(String modelId) {
    return _modelStatus[modelId] == ModelDownloadStatus.downloaded ||
        _modelStatus[modelId] == ModelDownloadStatus.bundled;
  }

  /// Check if model is downloading
  bool isDownloading(String modelId) {
    return _modelStatus[modelId] == ModelDownloadStatus.downloading;
  }

  /// Cancel download
  void cancelDownload(String modelId) {
    _modelStatus[modelId] = ModelDownloadStatus.notDownloaded;
    _downloadProgress[modelId] = 0.0;
    notifyListeners();
  }

  /// Download model by ID
  Future<bool> downloadModel(String modelId) async {
    final model = AIModel.allModels.firstWhere((m) => m.id == modelId);
    return await _downloadModelInternal(model);
  }

  /// Delete model by ID
  Future<bool> deleteModel(String modelId) async {
    final model = AIModel.allModels.firstWhere((m) => m.id == modelId);
    return await _deleteModelInternal(model);
  }

  /// Check status of all models
  Future<void> _checkAllModels() async {
    for (final model in AIModel.allModels) {
      try {
        await _checkModelStatus(model);
      } catch (e) {
        debugLog('Error checking model ${model.id}: $e');
        _modelStatus[model.id] = ModelDownloadStatus.error;
      }
    }
  }

  /// Check if a specific model is downloaded
  Future<void> _checkModelStatus(AIModel model) async {
    if (model.isBundled) {
      _modelStatus[model.id] = ModelDownloadStatus.bundled;
      notifyListeners();
      return;
    }

    try {
      final path = await _getModelPath(model);
      final file = File(path);

      if (await file.exists()) {
        final size = await file.length();
        // Verify file size matches expected (within 10% tolerance)
        if (size >= model.sizeBytes * 0.9) {
          _modelStatus[model.id] = ModelDownloadStatus.downloaded;
        } else {
          _modelStatus[model.id] = ModelDownloadStatus.corrupted;
        }
      } else {
        _modelStatus[model.id] = ModelDownloadStatus.notDownloaded;
      }
    } catch (e) {
      debugLog('Error checking model ${model.id}: $e');
      _modelStatus[model.id] = ModelDownloadStatus.error;
    }
    notifyListeners();
  }

  /// Download a model
  Future<bool> _downloadModelInternal(AIModel model) async {
    if (_modelStatus[model.id] == ModelDownloadStatus.downloading) {
      return false; // Already downloading
    }

    if (model.isBundled) {
      _modelStatus[model.id] = ModelDownloadStatus.bundled;
      notifyListeners();
      return true;
    }

    try {
      _modelStatus[model.id] = ModelDownloadStatus.downloading;
      _downloadProgress[model.id] = 0.0;
      notifyListeners();

      final path = await _getModelPath(model);
      final file = File(path);

      // Create directory if it doesn't exist
      await file.parent.create(recursive: true);

      final client = http.Client();
      try {
        final response = await _sendWithRedirects(
          client,
          Uri.parse(model.downloadUrl),
        );

        if (response.statusCode != 200) {
          throw Exception('Failed to download: ${response.statusCode}');
        }

        final contentLength = response.contentLength ?? model.sizeBytes;
        var downloadedBytes = 0;
        final sink = file.openWrite();

        await for (final chunk in response.stream) {
          downloadedBytes += chunk.length;
          sink.add(chunk);
          _downloadProgress[model.id] =
              contentLength > 0 ? downloadedBytes / contentLength : 0.0;
          notifyListeners();
        }

        await sink.close();
      } finally {
        client.close();
      }

      _modelStatus[model.id] = ModelDownloadStatus.downloaded;
      _downloadProgress[model.id] = 1.0;
      notifyListeners();

      debugLog('✅ Model ${model.id} downloaded successfully');
      return true;
    } catch (e) {
      debugLog('❌ Error downloading model ${model.id}: $e');
      _modelStatus[model.id] = ModelDownloadStatus.error;
      notifyListeners();
      return false;
    }
  }

  Future<http.StreamedResponse> _sendWithRedirects(
    http.Client client,
    Uri uri, {
    int maxRedirects = 5,
  }) async {
    var currentUri = uri;

    for (var attempt = 0; attempt <= maxRedirects; attempt++) {
      final request = http.Request('GET', currentUri);
      request.headers['Accept'] = 'application/octet-stream';

      final response = await client.send(request);

      final isRedirect = response.statusCode == 301 ||
          response.statusCode == 302 ||
          response.statusCode == 303 ||
          response.statusCode == 307 ||
          response.statusCode == 308;

      if (isRedirect) {
        final location = response.headers['location'];
        if (location == null) {
          throw Exception('Redirect without location header');
        }

        currentUri = currentUri.resolve(location);
        // Drain the current stream before next request
        await response.stream.drain<void>();
        continue;
      }

      return response;
    }

    throw Exception('Too many redirects while downloading $uri');
  }

  /// Delete a model
  Future<bool> _deleteModelInternal(AIModel model) async {
    try {
      final path = await _getModelPath(model);
      final file = File(path);

      if (await file.exists()) {
        await file.delete();
        _modelStatus[model.id] = ModelDownloadStatus.notDownloaded;
        _downloadProgress[model.id] = 0.0;
        notifyListeners();
        debugLog('🗑️ Model ${model.id} deleted');
        return true;
      }
      return false;
    } catch (e) {
      debugLog('Error deleting model ${model.id}: $e');
      return false;
    }
  }

  /// Get file path for a model
  Future<String> _getModelPath(AIModel model) async {
    if (model.isBundled) {
      return _cacheBundledModel(model);
    }
    final appDir = await getApplicationDocumentsDirectory();
    return '${appDir.path}/ai_models/${model.fileName}';
  }

  /// Get public path for a model (for other services)
  Future<String> getModelPath(String modelId) async {
    final model = AIModel.allModels.firstWhere((m) => m.id == modelId);
    return _getModelPath(model);
  }

  Future<String> _cacheBundledModel(AIModel model) async {
    final appDir = await getApplicationDocumentsDirectory();
    final file = File('${appDir.path}/ai_models/${model.fileName}');

    if (await file.exists()) {
      return file.path;
    }

    final assetKey = model.assetPath ?? 'assets/models/${model.fileName}';
    final data = await rootBundle.load(assetKey);
    await file.parent.create(recursive: true);
    await file.writeAsBytes(
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      flush: true,
    );

    return file.path;
  }

  /// Calculate total downloaded size
  Future<int> getTotalDownloadedSize() async {
    int totalSize = 0;
    for (final model in AIModel.allModels) {
      if (_modelStatus[model.id] == ModelDownloadStatus.downloaded) {
        totalSize += model.sizeBytes;
      }
    }
    return totalSize;
  }

  /// Get list of downloaded models
  List<AIModel> getDownloadedModels() {
    return AIModel.allModels.where((model) {
      return _modelStatus[model.id] == ModelDownloadStatus.downloaded;
    }).toList();
  }
}

/// Model download status
enum ModelDownloadStatus {
  notDownloaded,
  downloading,
  downloaded,
  corrupted,
  error,
  bundled, // New status for models included in assets
}

/// AI Model definition
class AIModel {
  final String id;
  final String name;
  final String description;
  final String fileName;
  final String downloadUrl;
  final int sizeBytes;
  final ModelCategory category;
  final List<String> usedBy; // Which services use this model
  final String? assetPath;

  const AIModel({
    required this.id,
    required this.name,
    required this.description,
    required this.fileName,
    required this.downloadUrl,
    required this.sizeBytes,
    required this.category,
    required this.usedBy,
    this.isBundled = false, // Flag to indicate if model is bundled
    this.assetPath,
  });

  final bool isBundled;

  /// Get human-readable size
  String get sizeFormatted {
    if (sizeBytes < 1024) return '$sizeBytes B';
    if (sizeBytes < 1024 * 1024)
      return '${(sizeBytes / 1024).toStringAsFixed(1)} KB';
    return '${(sizeBytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }

  // === SPEECH RECOGNITION MODELS ===

  static const whisperTiny = AIModel(
    id: 'whisper_tiny',
    name: 'Whisper Tiny (Fast)',
    description: 'Lightweight speech recognition. 99 languages, fast on CPU.',
    fileName: 'ggml-tiny.bin',
    downloadUrl:
        'https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-tiny.bin',
    sizeBytes: 75 * 1024 * 1024, // ~75 MB
    category: ModelCategory.speechRecognition,
    usedBy: ['Voice Search', 'Live Transcription'],
    isBundled: false,
  );

  static const whisperBase = AIModel(
    id: 'whisper_base',
    name: 'Whisper Base (Balanced)',
    description: 'Standard Whisper model. Good accuracy, moderate size.',
    fileName: 'ggml-base.bin',
    downloadUrl:
        'https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-base.bin',
    sizeBytes: 142 * 1024 * 1024, // ~142 MB
    category: ModelCategory.speechRecognition,
    usedBy: ['Voice Search', 'Live Transcription'],
  );

  static const whisperSmall = AIModel(
    id: 'whisper_small',
    name: 'Whisper Small (High Accuracy)',
    description: 'High-accuracy speech recognition. Best for transcription.',
    fileName: 'ggml-small.bin',
    downloadUrl:
        'https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-small.bin',
    sizeBytes: 466 * 1024 * 1024, // ~466 MB
    category: ModelCategory.speechRecognition,
    usedBy: ['Voice Search', 'Live Transcription'],
  );

  // Note: Translation models are managed separately by ML Kit
  // They auto-download on-demand (50MB each language pair)

  /// All available models
  static const allModels = [
    // Speech recognition (choose one, shared by transcription services)
    whisperTiny,
    whisperBase,
    whisperSmall,
  ];

  /// Get models by category
  static List<AIModel> byCategory(ModelCategory category) {
    return allModels.where((m) => m.category == category).toList();
  }

  /// Get models used by a specific service
  static List<AIModel> forService(String serviceName) {
    return allModels.where((m) => m.usedBy.contains(serviceName)).toList();
  }
}

/// Model categories
enum ModelCategory { speechRecognition, translation }

extension ModelCategoryExtension on ModelCategory {
  String get displayName {
    switch (this) {
      case ModelCategory.speechRecognition:
        return 'Speech Recognition';
      case ModelCategory.translation:
        return 'Translation';
    }
  }

  String get description {
    switch (this) {
      case ModelCategory.speechRecognition:
        return 'Convert speech to text in 99+ languages (Whisper)';
      case ModelCategory.translation:
        return 'Translate text between 59 languages (ML Kit auto-downloads)';
    }
  }
}
