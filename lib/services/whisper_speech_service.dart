import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/services/ai_model_manager.dart';

/// Whisper Speech Service for downloading and managing Whisper models
class WhisperSpeechService extends ChangeNotifier {
  static const _preferredModelKey = 'whisper_active_model';

  AIModelManager? _modelManager;
  String _selectedModelId = AIModel.whisperTiny.id;
  bool _prefsLoaded = false;

  List<AIModel> get speechModels =>
      AIModel.byCategory(ModelCategory.speechRecognition);

  String get selectedModelId => _selectedModelId;
  AIModel get selectedModel => speechModels.firstWhere(
        (model) => model.id == _selectedModelId,
        orElse: () => speechModels.first,
      );

  bool get isModelDownloaded =>
      _modelManager?.isModelDownloaded(_selectedModelId) ?? false;
  bool get isDownloading =>
      _modelManager?.isDownloading(_selectedModelId) ?? false;
  double get downloadProgress =>
      _modelManager?.getDownloadProgress(_selectedModelId) ?? 0.0;
  ModelDownloadStatus get selectedModelStatus =>
      _modelManager?.getModelStatus(_selectedModelId) ??
      ModelDownloadStatus.notDownloaded;

  Future<void> initialize() async {
    if (_prefsLoaded) return;
    final prefs = await SharedPreferences.getInstance();
    final savedModelId = prefs.getString(_preferredModelKey);
    if (savedModelId != null &&
        speechModels.any((model) => model.id == savedModelId)) {
      _selectedModelId = savedModelId;
    }
    _prefsLoaded = true;
    notifyListeners();
    unawaited(_ensureModelReady(_selectedModelId));
  }

  void attachModelManager(AIModelManager? manager) {
    if (identical(_modelManager, manager)) return;
    _modelManager?.removeListener(_handleManagerChange);
    _modelManager = manager;
    _modelManager?.addListener(_handleManagerChange);
    notifyListeners();
    if (_prefsLoaded) {
      unawaited(_ensureModelReady(_selectedModelId));
    }
  }

  void _handleManagerChange() {
    notifyListeners();
  }

  Future<void> setSelectedModel(String modelId) async {
    if (_selectedModelId == modelId) return;
    final exists = speechModels.any((model) => model.id == modelId);
    if (!exists) return;
    _selectedModelId = modelId;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_preferredModelKey, modelId);
    notifyListeners();
    unawaited(_ensureModelReady(modelId));
  }

  Future<bool> downloadModel(String modelId) async {
    final manager = _modelManager;
    if (manager == null) return false;
    return manager.downloadModel(modelId);
  }

  Future<bool> deleteModel(String modelId) async {
    final manager = _modelManager;
    if (manager == null) return false;
    return manager.deleteModel(modelId);
  }

  Future<bool> downloadModelIfNeeded({String? modelId}) async {
    final targetId = modelId ?? _selectedModelId;
    final manager = _modelManager;
    if (manager == null) return false;
    if (manager.isModelDownloaded(targetId)) return true;
    return manager.downloadModel(targetId);
  }

  Future<String?> getSelectedModelPath() async {
    final manager = _modelManager;
    if (manager == null) return null;
    return manager.getModelPath(_selectedModelId);
  }

  bool isModelReady(String modelId) {
    final manager = _modelManager;
    if (manager == null) return false;
    return manager.isModelDownloaded(modelId);
  }

  double getDownloadProgressFor(String modelId) {
    final manager = _modelManager;
    if (manager == null) return 0.0;
    return manager.getDownloadProgress(modelId);
  }

  ModelDownloadStatus getStatusFor(String modelId) {
    final manager = _modelManager;
    if (manager == null) return ModelDownloadStatus.notDownloaded;
    return manager.getModelStatus(modelId);
  }

  Future<void> _ensureModelReady(String modelId) async {
    final manager = _modelManager;
    if (manager == null) return;
    if (manager.isModelDownloaded(modelId) || manager.isDownloading(modelId)) {
      return;
    }

    final success = await manager.downloadModel(modelId);
    if (!success) {
      debugPrint('WhisperSpeechService: auto-download failed for $modelId');
    }
  }

  @override
  void dispose() {
    _modelManager?.removeListener(_handleManagerChange);
    super.dispose();
  }

  // No additional resources to dispose at this time.
}
