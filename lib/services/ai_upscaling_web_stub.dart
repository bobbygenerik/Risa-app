// Web stub for TensorFlow Lite classes
// These are placeholder classes for web compatibility

class Interpreter {
  static Future<Interpreter> fromAsset(String path, {InterpreterOptions? options}) async {
    throw UnsupportedError('TensorFlow Lite is not supported on web');
  }
  
  static Interpreter fromFile(dynamic file, {InterpreterOptions? options}) {
    throw UnsupportedError('TensorFlow Lite is not supported on web');
  }
  
  void run(dynamic input, dynamic output) {
    throw UnsupportedError('TensorFlow Lite is not supported on web');
  }
  
  void close() {
    // No-op for web
  }
}

class InterpreterOptions {
  void addDelegate(dynamic delegate) {
    // No-op for web
  }
  
  set threads(int count) {
    // No-op for web
  }
}

class GpuDelegateV2 {
  // Placeholder for web
}