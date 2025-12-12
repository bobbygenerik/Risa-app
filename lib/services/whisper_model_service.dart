import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WhisperModelService extends ChangeNotifier {
  final Map<String, double> _downloadProgress = {};
  final Map<String, bool> _isDownloading = {};
  final Set<String> _downloadedModels = {};

  Map<String, double> get downloadProgress => Map.unmodifiable(_downloadProgress);
  Map<String, bool> get isDownloading => Map.unmodifiable(_isDownloading);
  Set<String> get downloadedModels => Set.unmodifiable(_downloadedModels);

  static const Map<String, String> _modelUrls = {
    'Whisper Tiny (Multilingual)': 'https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-tiny.bin',
    'Whisper Base (Multilingual)': 'https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-base.bin',
    'Whisper Small (Multilingual)': 'https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-small.bin',
  };

  Future<void> initialize() async {
    await _loadDownloadedModels();
  }

  Future<void> _loadDownloadedModels() async {
    final prefs = await SharedPreferences.getInstance();
    final downloaded = prefs.getStringList('downloaded_whisper_models') ?? [];
    _downloadedModels.clear();
    _downloadedModels.addAll(downloaded);
    notifyListeners();
  }

  Future<void> _saveDownloadedModels() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('downloaded_whisper_models', _downloadedModels.toList());
  }

  Future<bool> downloadModel(String modelName) async {
    if (_isDownloading[modelName] == true) return false;
    
    final url = _modelUrls[modelName];
    if (url == null) return false;

    _isDownloading[modelName] = true;
    _downloadProgress[modelName] = 0.0;
    notifyListeners();

    try {
      final directory = await getApplicationDocumentsDirectory();
      final modelsDir = Directory('${directory.path}/whisper_models');
      if (!await modelsDir.exists()) {
        await modelsDir.create(recursive: true);
      }

      final fileName = _getModelFileName(modelName);
      final file = File('${modelsDir.path}/$fileName');

      final request = http.Request('GET', Uri.parse(url));
      final response = await request.send();

      if (response.statusCode != 200) {
        throw Exception('Failed to download: ${response.statusCode}');
      }

      final contentLength = response.contentLength ?? 0;
      final sink = file.openWrite();
      int downloaded = 0;

      await response.stream.listen(
        (chunk) {
          sink.add(chunk);
          downloaded += chunk.length;
          if (contentLength > 0) {
            _downloadProgress[modelName] = downloaded / contentLength;
            notifyListeners();
          }
        },
        onDone: () async {
          await sink.close();
          _downloadedModels.add(modelName);
          await _saveDownloadedModels();
          _isDownloading[modelName] = false;
          _downloadProgress[modelName] = 1.0;
          notifyListeners();
        },
        onError: (error) async {
          await sink.close();
          if (await file.exists()) {
            await file.delete();
          }
          _isDownloading[modelName] = false;
          _downloadProgress.remove(modelName);
          notifyListeners();
          throw error;
        },
      ).asFuture();

      return true;
    } catch (e) {
      _isDownloading[modelName] = false;
      _downloadProgress.remove(modelName);
      notifyListeners();
      debugPrint('Whisper model download failed: $e');
      return false;
    }
  }

  Future<bool> deleteModel(String modelName) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final fileName = _getModelFileName(modelName);
      final file = File('${directory.path}/whisper_models/$fileName');
      
      if (await file.exists()) {
        await file.delete();
      }
      
      _downloadedModels.remove(modelName);
      await _saveDownloadedModels();
      notifyListeners();
      return true;
    } catch (e) {
      debugPrint('Failed to delete model: $e');
      return false;
    }
  }

  String _getModelFileName(String modelName) {
    switch (modelName) {
      case 'Whisper Tiny (Multilingual)': return 'ggml-tiny.bin';
      case 'Whisper Base (Multilingual)': return 'ggml-base.bin';
      case 'Whisper Small (Multilingual)': return 'ggml-small.bin';
      default: return 'model.bin';
    }
  }

  String? getModelPath(String modelName) {
    if (!_downloadedModels.contains(modelName)) return null;
    
    return '${Directory.systemTemp.path}/whisper_models/${_getModelFileName(modelName)}';
  }
}