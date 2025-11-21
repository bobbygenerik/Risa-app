import 'dart:async';
import 'dart:io';

// Small single-line control statements across this manager are intentionally
// left without braces in a few places. Silence the analyzer info for now.
// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

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
    await _checkAllModels();
    // Don't notify during initialization to avoid rebuild storms
    // Widgets will read initial state when they first build
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
      await _checkModelStatus(model);
    }
  }

  /// Check if a specific model is downloaded
  Future<void> _checkModelStatus(AIModel model) async {
    if (model.isBundled) {
      _modelStatus[model.id] = ModelDownloadStatus.bundled;
      // Don't notify during bulk checks to avoid rebuild storms
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
      debugPrint('Error checking model ${model.id}: $e');
      _modelStatus[model.id] = ModelDownloadStatus.error;
    }
    // Don't notify during bulk checks to avoid rebuild storms
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

      // Download with progress tracking
      final request = http.Request('GET', Uri.parse(model.downloadUrl));
      final response = await request.send();

      if (response.statusCode != 200) {
        throw Exception('Failed to download: ${response.statusCode}');
      }

      final contentLength = response.contentLength ?? model.sizeBytes;
      var downloadedBytes = 0;
      final chunks = <List<int>>[];

      await for (final chunk in response.stream) {
        chunks.add(chunk);
        downloadedBytes += chunk.length;
        _downloadProgress[model.id] = downloadedBytes / contentLength;
        notifyListeners();
      }

      // Write to file
      final bytes = chunks.expand((x) => x).toList();
      await file.writeAsBytes(bytes);

      _modelStatus[model.id] = ModelDownloadStatus.downloaded;
      _downloadProgress[model.id] = 1.0;
      notifyListeners();

      debugPrint('✅ Model ${model.id} downloaded successfully');
      return true;
    } catch (e) {
      debugPrint('❌ Error downloading model ${model.id}: $e');
      _modelStatus[model.id] = ModelDownloadStatus.error;
      notifyListeners();
      return false;
    }
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
        debugPrint('🗑️ Model ${model.id} deleted');
        return true;
      }
      return false;
    } catch (e) {
      debugPrint('Error deleting model ${model.id}: $e');
      return false;
    }
  }

  /// Get file path for a model
  Future<String> _getModelPath(AIModel model) async {
    final appDir = await getApplicationDocumentsDirectory();
    return '${appDir.path}/ai_models/${model.fileName}';
  }

  /// Get public path for a model (for other services)
  Future<String> getModelPath(String modelId) async {
    final model = AIModel.allModels.firstWhere((m) => m.id == modelId);
    
    if (model.isBundled) {
      // Return asset path for bundled models
      // Note: TFLite Flutter plugin handles asset paths automatically if they are in assets/
      // But we might need to copy it to a temp file if the plugin requires a File object
      // For now, we'll return the asset key which tflite_flutter supports
      return 'assets/models/${model.fileName}';
    }
    
    return await _getModelPath(model);
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
  });

  final bool isBundled;

  /// Get human-readable size
  String get sizeFormatted {
    if (sizeBytes < 1024) return '$sizeBytes B';
    if (sizeBytes < 1024 * 1024)
      return '${(sizeBytes / 1024).toStringAsFixed(1)} KB';
    return '${(sizeBytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }

  // === VIDEO UPSCALING MODELS ===
  // Using real URLs from TensorFlow Hub and public repositories

  static const srcnn = AIModel(
    id: 'srcnn_x2',
    name: 'SRCNN (Lightweight)',
    description:
        'Fast video upscaling, works well on CPU. Best for low-end devices.',
    fileName: 'srcnn_x2.tflite',
    // TF Hub model converted to TFLite
    downloadUrl:
        'https://tfhub.dev/tensorflow/lite-model/mirnet-fixed/dr/1?lite-format=tflite',
    sizeBytes: 20 * 1024, // 20 KB
    category: ModelCategory.videoUpscaling,
    usedBy: ['AI Video Enhancement'],
    isBundled: true,
  );

  static const fsrcnn = AIModel(
    id: 'fsrcnn_x2',
    name: 'FSRCNN (Recommended)',
    description:
        'Fast Super-Resolution CNN. Great balance of speed and quality.',
    fileName: 'fsrcnn_x2.tflite',
    // TF Hub FSRCNN model
    downloadUrl:
        'https://tfhub.dev/captain-pool/lite-model/fsrcnn-tf2/1/default/1?lite-format=tflite',
    sizeBytes: 40 * 1024, // 40 KB
    category: ModelCategory.videoUpscaling,
    usedBy: ['AI Video Enhancement'],
    isBundled: true,
  );

  static const esrgan = AIModel(
    id: 'esrgan_x2',
    name: 'ESRGAN (Best Quality)',
    description:
        'Enhanced Super-Resolution GAN. Highest quality, requires GPU.',
    fileName: 'esrgan_x2.tflite',
    // TF Hub ESRGAN model
    downloadUrl:
        'https://tfhub.dev/captain-pool/lite-model/esrgan-tf2/1/default/1?lite-format=tflite',
    sizeBytes: 16 * 1024 * 1024, // 16 MB
    category: ModelCategory.videoUpscaling,
    usedBy: ['AI Video Enhancement'],
  );

  // === SPEECH RECOGNITION MODELS ===

  static const whisperTiny = AIModel(
    id: 'whisper_tiny',
    name: 'Whisper Tiny (Fast)',
    description: 'Lightweight speech recognition. 99 languages, fast on CPU.',
    fileName: 'whisper_tiny.tflite',
    // HuggingFace Whisper TFLite models
    downloadUrl:
        'https://huggingface.co/usefulsensors/whisper-tiny-tflite/resolve/main/whisper_tiny_int8.tflite',
    sizeBytes: 40 * 1024 * 1024, // 40 MB
    category: ModelCategory.speechRecognition,
    usedBy: ['Voice Search', 'Live Transcription'],
  );

  static const whisperBase = AIModel(
    id: 'whisper_base',
    name: 'Whisper Base (Balanced)',
    description: 'Standard Whisper model. Good accuracy, moderate size.',
    fileName: 'whisper_base.tflite',
    // HuggingFace Whisper Base model
    downloadUrl:
        'https://huggingface.co/usefulsensors/whisper-base-tflite/resolve/main/whisper_base_int8.tflite',
    sizeBytes: 74 * 1024 * 1024, // 74 MB
    category: ModelCategory.speechRecognition,
    usedBy: ['Voice Search', 'Live Transcription'],
  );

  static const whisperSmall = AIModel(
    id: 'whisper_small',
    name: 'Whisper Small (High Accuracy)',
    description: 'High-accuracy speech recognition. Best for transcription.',
    fileName: 'whisper_small.tflite',
    // HuggingFace Whisper Small model
    downloadUrl:
        'https://huggingface.co/usefulsensors/whisper-small-tflite/resolve/main/whisper_small_int8.tflite',
    sizeBytes: 244 * 1024 * 1024, // 244 MB
    category: ModelCategory.speechRecognition,
    usedBy: ['Voice Search', 'Live Transcription'],
  );

  // Note: Translation models are managed separately by ML Kit
  // They auto-download on-demand (50MB each language pair)

  /// All available models
  static const allModels = [
    // Video upscaling (choose one)
    srcnn,
    fsrcnn,
    esrgan,
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
enum ModelCategory { videoUpscaling, speechRecognition, translation }

extension ModelCategoryExtension on ModelCategory {
  String get displayName {
    switch (this) {
      case ModelCategory.videoUpscaling:
        return 'Video Upscaling';
      case ModelCategory.speechRecognition:
        return 'Speech Recognition';
      case ModelCategory.translation:
        return 'Translation';
    }
  }

  String get description {
    switch (this) {
      case ModelCategory.videoUpscaling:
        return 'Enhance video quality with AI upscaling (2x resolution)';
      case ModelCategory.speechRecognition:
        return 'Convert speech to text in 99+ languages (Whisper)';
      case ModelCategory.translation:
        return 'Translate text between 59 languages (ML Kit auto-downloads)';
    }
  }
}
