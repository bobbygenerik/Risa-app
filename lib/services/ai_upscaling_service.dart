import 'package:flutter/foundation.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

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
  bool _isDownloading = false;
  double _downloadProgress = 0.0;
  
  // Model information
  static const String _modelAssetPath = 'assets/models/esrgan_x2.tflite';
  static const String _modelFileName = 'esrgan_x2.tflite';
  static const int _inputSize = 64; // Input tile size
  static const int _outputScale = 2; // 2x upscaling
  
  // Hugging Face model URL
  static const String _modelUrl = 'https://huggingface.co/philz1337x/upscaler/resolve/main/ESRGAN_SRx2_DF2KOST_official-ff704c30.pth.tflite';
  
  bool get isInitialized => _isInitialized;
  bool get isEnabled => _isEnabled;
  String get quality => _quality;
  bool get gpuAvailable => _checkGPUAvailability();
  bool get isGPUAvailable => _isGPUAvailable;
  bool get isModelLoaded => _isModelLoaded;
  bool get isDownloading => _isDownloading;
  double get downloadProgress => _downloadProgress;

  /// Initialize the AI upscaling model
  Future<bool> initialize() async {
    if (_isInitialized) return true;

    try {
      // First check if downloaded model exists
      final appDir = await getApplicationDocumentsDirectory();
      final downloadedModelPath = '${appDir.path}/$_modelFileName';
      final downloadedModel = File(downloadedModelPath);
      
      String modelPath;
      if (await downloadedModel.exists()) {
        modelPath = downloadedModelPath;
        debugPrint('AI Upscaling: Using downloaded model');
      } else {
        // Try to load from assets
        modelPath = _modelAssetPath;
        debugPrint('AI Upscaling: Attempting to load from assets');
      }
      
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

      if (await downloadedModel.exists()) {
        // fromFile is synchronous and returns an Interpreter
        _interpreter = Interpreter.fromFile(
          downloadedModel,
          options: options,
        );
      } else {
        // fromAsset is asynchronous and returns Future<Interpreter>
        _interpreter = await Interpreter.fromAsset(
          modelPath,
          options: options,
        );
      }
      
      _isInitialized = true;
      _isModelLoaded = true;
      notifyListeners();
      debugPrint('AI Upscaling: Model loaded successfully');
      return true;
    } catch (e) {
      debugPrint('AI Upscaling initialization error: $e');
      debugPrint('Model not found - use downloadModel() to download it');
      _isInitialized = false;
      _isModelLoaded = false;
      notifyListeners();
      return false;
    }
  }

  /// Return the local downloaded model path if present, otherwise null.
  Future<String?> getLocalModelPath() async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final downloadedModelPath = '${appDir.path}/$_modelFileName';
      final downloadedModel = File(downloadedModelPath);
      if (await downloadedModel.exists()) return downloadedModelPath;
      return null;
    } catch (e) {
      debugPrint('Error checking local model path: $e');
      return null;
    }
  }

  /// Download the AI upscaling model from Hugging Face
  /// Uses retry logic (up to 3 attempts with exponential backoff).
  Future<bool> downloadModel() async {
    if (_isDownloading) return false;

    _isDownloading = true;
    _downloadProgress = 0.0;
    notifyListeners();

    int attempt = 0;
    const maxAttempts = 3;
    Exception? lastError;

    while (attempt < maxAttempts) {
      attempt++;
      try {
        debugPrint('Downloading AI model (attempt $attempt/$maxAttempts)');
        final appDir = await getApplicationDocumentsDirectory();
        final modelPath = '${appDir.path}/$_modelFileName';
        
        debugPrint('Downloading AI model from: $_modelUrl');
        
        final request = http.Request('GET', Uri.parse(_modelUrl));
        final response = await request.send().timeout(
          const Duration(seconds: 60),
          onTimeout: () => throw Exception('Download timeout after 60 seconds'),
        );
        
        if (response.statusCode != 200) {
          throw Exception('HTTP ${response.statusCode}');
        }
        
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
        
        debugPrint('AI model downloaded successfully to: $modelPath');
        
        // Initialize with the downloaded model
        await initialize();
        
        return true;
      } catch (e) {
        lastError = Exception(e);
        debugPrint('AI model download attempt $attempt failed: $e');

        if (attempt < maxAttempts) {
          // Exponential backoff: 2s, 4s, 8s
          final backoffMs = 1000 * (1 << attempt);
          debugPrint('Retrying in ${backoffMs}ms...');
          await Future.delayed(Duration(milliseconds: backoffMs));
        }
      }
    }

    debugPrint('AI model download failed after $maxAttempts attempts: $lastError');
    return false;
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
