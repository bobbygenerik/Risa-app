import 'package:flutter/foundation.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

/// Whisper Speech Service for downloading and managing Whisper models
class WhisperSpeechService extends ChangeNotifier {
  bool _isModelDownloaded = false;
  bool _isDownloading = false;
  double _downloadProgress = 0.0;
  
  bool get isModelDownloaded => _isModelDownloaded;
  bool get isDownloading => _isDownloading;
  double get downloadProgress => _downloadProgress;

  Future<void> initialize() async {
    await _checkModelExists();
  }

  Future<void> _checkModelExists() async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final modelPath = '${appDir.path}/whisper_tiny.tflite';
      _isModelDownloaded = await File(modelPath).exists();
      notifyListeners();
    } catch (e) {
      debugPrint('Error checking model: $e');
    }
  }

  Future<void> downloadModelIfNeeded() async {
    if (_isModelDownloaded || _isDownloading) return;

    _isDownloading = true;
    _downloadProgress = 0.0;
    notifyListeners();

    try {
      final appDir = await getApplicationDocumentsDirectory();
      final modelPath = '${appDir.path}/whisper_tiny.tflite';
      
      // Model URL - you'll need to host this or use a CDN
      const modelUrl = 'https://huggingface.co/UsefulSensors/whisper-tiny-en/resolve/main/whisper_tiny.tflite';
      
      final request = http.Request('GET', Uri.parse(modelUrl));
      final response = await request.send();
      
      final contentLength = response.contentLength ?? 0;
      final file = File(modelPath);
      final sink = file.openWrite();
      
      var received = 0;
      await for (final chunk in response.stream) {
        received += chunk.length;
        sink.add(chunk);
        
        if (contentLength > 0) {
          _downloadProgress = received / contentLength;
          notifyListeners();
        }
      }
      
      await sink.close();
      _isModelDownloaded = true;
    } catch (e) {
      debugPrint('Error downloading model: $e');
    } finally {
      _isDownloading = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
