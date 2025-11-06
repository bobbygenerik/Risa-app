# Keep TensorFlow Lite classes used by tflite_flutter and GPU delegate
-keep class org.tensorflow.** { *; }
-dontwarn org.tensorflow.**

# Address missing class warnings suggested by AGP
-dontwarn org.tensorflow.lite.gpu.GpuDelegateFactory$Options

# Keep Kotlin metadata
-keep class kotlin.Metadata { *; }

# Keep Flutter embedding and plugin registrant (usually handled by Flutter plugin, added for safety)
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.plugins.** { *; }
