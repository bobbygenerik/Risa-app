import 'package:whisper_ggml/whisper_ggml.dart';

class WhisperGgmlRunner {
  Whisper? _whisper;
  WhisperModel? _modelType;
  String? _modelPath;

  /// Load the ggml model located at [path] and [modelType].
  Future<void> loadModel({required String modelPath, required WhisperModel modelType}) async {
    if (_modelPath == modelPath && _modelType == modelType && _whisper != null) {
      return;
    }
    _whisper = Whisper(model: modelType);
    _modelType = modelType;
    _modelPath = modelPath;
  }

  /// Transcribe an audio file (16-bit PCM WAV) and return the recognized text.
  Future<String> transcribeFile({
    required String audioPath,
    String language = 'en',
    bool translate = false,
    int threads = 4,
  }) async {
    final whisper = _whisper;
    final modelPath = _modelPath;
    if (whisper == null || modelPath == null) {
      throw StateError('GGML model not loaded');
    }
    final request = TranscribeRequest(
      audio: audioPath,
      language: language,
      isTranslate: translate,
      threads: threads,
    );
    final response = await whisper.transcribe(
      transcribeRequest: request,
      modelPath: modelPath,
    );
    return response.text;
  }

  Future<void> dispose() async {
    // No explicit dispose needed for Whisper, but clear references
    _whisper = null;
    _modelType = null;
    _modelPath = null;
  }
}
