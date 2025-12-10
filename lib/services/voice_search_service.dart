// ignore_for_file: deprecated_member_use

import 'package:flutter/foundation.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';

class VoiceSearchService with ChangeNotifier {
  final stt.SpeechToText _speech = stt.SpeechToText();
  
  bool _isAvailable = false;
  bool _isListening = false;
  String _lastWords = '';
  String _lastError = '';
  double _confidence = 0.0;

  bool get isAvailable => _isAvailable;
  bool get isListening => _isListening;
  String get lastWords => _lastWords;
  String get lastError => _lastError;
  double get confidence => _confidence;

  Future<void> initialize() async {
    try {
      // Request microphone permission
      final status = await Permission.microphone.request();
      
      if (status.isGranted) {
        _isAvailable = await _speech.initialize(
          onError: (error) {
            _lastError = error.errorMsg;
            _isListening = false;
            notifyListeners();
          },
          onStatus: (status) {
            _isListening = status == 'listening';
            notifyListeners();
          },
        );
      } else {
        _lastError = 'Microphone permission denied';
        _isAvailable = false;
      }
    } catch (e) {
      debugPrint('VoiceSearchService initialization error: $e');
      _lastError = 'Voice search unavailable';
      _isAvailable = false;
    }
  }

  Future<void> startListening({
    Function(String)? onResult,
    Function(String)? onPartialResult,
  }) async {
    if (!_isAvailable) {
      await initialize();
    }

    if (_isAvailable && !_isListening) {
      _lastWords = '';
      _lastError = '';
      notifyListeners();

  await _speech.listen(
        onResult: (result) {
          _lastWords = result.recognizedWords;
          _confidence = result.confidence;
          
          if (result.finalResult) {
            onResult?.call(_lastWords);
          } else {
            onPartialResult?.call(_lastWords);
          }
          
          notifyListeners();
        },
        listenFor: const Duration(seconds: 30),
        pauseFor: const Duration(seconds: 3),
        partialResults: true,
        cancelOnError: true,
        listenMode: stt.ListenMode.confirmation,
      );
    }
  }

  Future<void> stopListening() async {
    if (_isListening) {
      await _speech.stop();
      _isListening = false;
      notifyListeners();
    }
  }

  Future<void> cancel() async {
    await _speech.cancel();
    _isListening = false;
    _lastWords = '';
    notifyListeners();
  }

  void clearError() {
    _lastError = '';
    notifyListeners();
  }

  @override
  void dispose() {
    _speech.stop();
    super.dispose();
  }
}
