// Local Vosk adapter stub to allow building when the external
// `vosk_flutter` plugin is not available. This provides minimal type
// declarations and safe no-op behavior. Replace with the real plugin
// import when you opt-in to `vosk_flutter` in `pubspec.yaml`.

import 'dart:typed_data';

// Minimal placeholder classes mirroring the external plugin API used
// by the application. The implementations intentionally throw or return
// safe defaults so that the rest of the application can compile and
// run when Vosk is not present.

class VoskFlutterPlugin {
  VoskFlutterPlugin._();

  static VoskFlutterPlugin? instance() {
    // Return null to indicate plugin isn't present in this build.
    return null;
  }

  Future<Model> createModel(String path) async {
    throw UnimplementedError('Vosk plugin not available');
  }

  Future<Recognizer> createRecognizer({required Model model, required int sampleRate}) async {
    throw UnimplementedError('Vosk plugin not available');
  }

  Future<String> recognizeWAVData({required Recognizer recognizer, required Uint8List bytes}) async {
    // Return empty JSON to indicate no recognition performed.
    return '{}';
  }
}

class Model {}
class Recognizer {}
