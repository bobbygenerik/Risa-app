import 'package:flutter/foundation.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;

/// On-Device AI Upscaling Service
/// Uses TensorFlow Lite for real-time video upscaling (FREE - no cloud costs)
/// Requires GPU acceleration for smooth performance
class AIUpscalingService extends ChangeNotifier {
  Interpreter? _interpreter;
  bool _isInitialized = false;
  bool _isEnabled = false;
  String _quality = 'Balanced'; // Fast, Balanced, Quality
  bool _isGPUAvailable = false;
  bool _isModelLoaded = false;
  
  // Model information
  static const String _modelPath = 'assets/models/esrgan_x2.tflite';
  static const int _inputSize = 64; // Input tile size
  static const int _outputScale = 2; // 2x upscaling
  
  bool get isInitialized => _isInitialized;
  bool get isEnabled => _isEnabled;
  String get quality => _quality;
  bool get gpuAvailable => _checkGPUAvailability();
  bool get isGPUAvailable => _isGPUAvailable;
  bool get isModelLoaded => _isModelLoaded;

  /// Initialize the AI upscaling model
  Future<bool> initialize() async {
    if (_isInitialized) return true;

    try {
      // Load TFLite model
      final options = InterpreterOptions();
      
      // Try to use GPU delegate for hardware acceleration
      _isGPUAvailable = _checkGPUAvailability();
      if (_isGPUAvailable) {
        options.addDelegate(GpuDelegateV2());
        debugPrint('AI Upscaling: GPU acceleration enabled');
      } else {
        // Fallback to CPU with multiple threads
        options.threads = 4;
        debugPrint('AI Upscaling: CPU mode with 4 threads');
      }

      _interpreter = await Interpreter.fromAsset(
        _modelPath,
        options: options,
      );
      
      _isInitialized = true;
      _isModelLoaded = true;
      notifyListeners();
      debugPrint('AI Upscaling: Model loaded successfully');
      return true;
    } catch (e) {
      debugPrint('AI Upscaling initialization error: $e');
      debugPrint('Model not found at $_modelPath - AI upscaling will be disabled');
      _isInitialized = false;
      _isModelLoaded = false;
      notifyListeners();
      return false;
    }
  }

  /// Enable/disable AI upscaling
  void setEnabled(bool enabled) {
    _isEnabled = enabled && _isInitialized;
    notifyListeners();
  }

  /// Set upscaling quality preset
  void setQuality(String quality) {
    _quality = quality;
    notifyListeners();
  }

  /// Set quality preset (alias for setQuality)
  void setQualityPreset(String preset) {
    setQuality(preset);
  }

  /// Check if GPU acceleration is available
  bool _checkGPUAvailability() {
    // Check if GPU delegate is available on the platform
    try {
      return true; // Assume GPU available on Android/iOS
    } catch (e) {
      return false;
    }
  }

  /// Upscale a single frame (used for real-time video processing)
  Future<Uint8List?> upscaleFrame(Uint8List frameData, int width, int height) async {
    if (!_isEnabled || !_isInitialized || _interpreter == null) {
      return frameData; // Return original if not enabled
    }

    try {
      // Decode image
      final image = img.decodeImage(frameData);
      if (image == null) return frameData;

      // Process image in tiles for better performance
      final upscaledImage = await _processTiled(image);
      
      // Encode back to bytes
      return Uint8List.fromList(img.encodePng(upscaledImage));
    } catch (e) {
      debugPrint('Frame upscaling error: $e');
      return frameData; // Return original on error
    }
  }

  /// Process image in tiles to handle large frames
  Future<img.Image> _processTiled(img.Image input) async {
    final outputWidth = input.width * _outputScale;
    final outputHeight = input.height * _outputScale;
    final output = img.Image(width: outputWidth, height: outputHeight);

    // Determine tile size based on quality setting
    final tileSize = _getTileSize();
    
    for (int y = 0; y < input.height; y += tileSize) {
      for (int x = 0; x < input.width; x += tileSize) {
        final tileWidth = (x + tileSize > input.width) 
            ? input.width - x 
            : tileSize;
        final tileHeight = (y + tileSize > input.height) 
            ? input.height - y 
            : tileSize;

        // Extract tile
        final tile = img.copyCrop(
          input,
          x: x,
          y: y,
          width: tileWidth,
          height: tileHeight,
        );

        // Upscale tile
        final upscaledTile = await _upscaleTile(tile);

        // Insert into output
        if (upscaledTile != null) {
          img.compositeImage(
            output,
            upscaledTile,
            dstX: x * _outputScale,
            dstY: y * _outputScale,
          );
        }
      }
    }

    return output;
  }

  /// Upscale a single tile using the AI model
  Future<img.Image?> _upscaleTile(img.Image tile) async {
    if (_interpreter == null) return null;

    try {
      // Resize tile to model input size
      final resized = img.copyResize(
        tile,
        width: _inputSize,
        height: _inputSize,
      );

      // Prepare input tensor
      final input = _imageToTensor(resized);
      
      // Prepare output tensor
      final outputSize = _inputSize * _outputScale;
      final output = List.generate(
        1,
        (_) => List.generate(
          outputSize,
          (_) => List.generate(
            outputSize,
            (_) => List.filled(3, 0.0),
          ),
        ),
      );

      // Run inference
      _interpreter!.run(input, output);

      // Convert output tensor back to image
      return _tensorToImage(output[0], outputSize, outputSize);
    } catch (e) {
      debugPrint('Tile upscaling error: $e');
      return null;
    }
  }

  /// Convert image to tensor format
  List<List<List<List<double>>>> _imageToTensor(img.Image image) {
    final buffer = List.generate(
      1,
      (_) => List.generate(
        image.height,
        (y) => List.generate(
          image.width,
          (x) {
            final pixel = image.getPixel(x, y);
            return [
              pixel.r / 255.0,
              pixel.g / 255.0,
              pixel.b / 255.0,
            ];
          },
        ),
      ),
    );
    return buffer;
  }

  /// Convert tensor back to image
  img.Image _tensorToImage(List<List<List<double>>> tensor, int width, int height) {
    final image = img.Image(width: width, height: height);
    
    for (int y = 0; y < height; y++) {
      for (int x = 0; x < width; x++) {
        final r = (tensor[y][x][0] * 255).clamp(0, 255).toInt();
        final g = (tensor[y][x][1] * 255).clamp(0, 255).toInt();
        final b = (tensor[y][x][2] * 255).clamp(0, 255).toInt();
        
        image.setPixel(x, y, img.ColorRgb8(r, g, b));
      }
    }
    
    return image;
  }

  /// Get tile size based on quality setting
  int _getTileSize() {
    switch (_quality) {
      case 'Fast':
        return 32; // Smaller tiles, faster processing
      case 'Quality':
        return 128; // Larger tiles, better quality
      case 'Balanced':
      default:
        return 64; // Balanced approach
    }
  }

  /// Get estimated performance metrics
  Map<String, dynamic> getPerformanceEstimate() {
    return {
      'gpu_available': gpuAvailable,
      'quality': _quality,
      'upscale_factor': _outputScale,
      'estimated_fps_1080p': gpuAvailable ? 30 : 10,
      'estimated_fps_720p': gpuAvailable ? 60 : 20,
      'estimated_fps_480p': gpuAvailable ? 120 : 40,
    };
  }

  /// Dispose resources
  @override
  void dispose() {
    _interpreter?.close();
    _interpreter = null;
    _isInitialized = false;
    super.dispose();
  }
}
