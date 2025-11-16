// Minimal shim for the `speech_to_text` package API surface used in the app.
// This is a build-time shim only — it does not provide native speech recognition.
// It returns reasonable defaults so the app compiles.

import 'dart:async';

typedef SpeechRecognitionResultCallback = void Function(SpeechRecognitionResult result);
class SpeechError {
  final String errorMsg;
  SpeechError(this.errorMsg);
}

typedef SpeechErrorCallback = void Function(SpeechError error);
typedef SpeechStatusCallback = void Function(String status);

enum ListenMode { confirmation, device, dictation }

class SpeechRecognitionResult {
  final String recognizedWords;
  final bool finalResult;
  final double confidence;

  SpeechRecognitionResult({required this.recognizedWords, this.finalResult = false, this.confidence = 1.0});
}

class SpeechToText {
  bool _initialized = false;

  Future<bool> initialize({SpeechErrorCallback? onError, SpeechStatusCallback? onStatus}) async {
    _initialized = true;
    // Simulate ready status
    onStatus?.call('ready');
    return Future.value(true);
  }

  Future<void> listen({
    required SpeechRecognitionResultCallback onResult,
    Duration? listenFor,
    Duration? pauseFor,
    bool partialResults = true,
    String? localeId,
    ListenMode? listenMode,
    bool cancelOnError = false,
  }) async {
    if (!_initialized) await initialize();

    // No-op: provide an empty result after a short delay to satisfy callers
    Future.delayed(const Duration(milliseconds: 200), () {
      onResult(SpeechRecognitionResult(recognizedWords: '', finalResult: true, confidence: 0.0));
    });
    return Future.value();
  }

  Future<void> stop() async {
    return Future.value();
  }

  Future<void> cancel() async {
    return Future.value();
  }

  Future<void> listenFor({Duration? duration}) async => Future.value();

  Future<void> cancelRecognition() async => Future.value();
}
