import 'dart:typed_data';
import 'package:image/image.dart';
import 'dart:math' as math;
// no-op

// Feature extraction worker: returns color histogram (256 bins), edge
// features (64 bins), texture features (32 bins), and dimensions.
Map<String, dynamic> extractLogoFeaturesIsolate(Uint8List bytes) {
  Image? decoded;
  try {
    decoded = decodeImage(bytes);
  } catch (e) {
    decoded = null;
  }

  if (decoded == null) {
    return {
      'colorHistogram': <double>[],
      'edgeFeatures': <double>[],
      'textureFeatures': <double>[],
      'width': 0,
      'height': 0,
    };
  }

  // Resize to a bounded processing size to keep CPU/time predictable
  final maxSize = 200;
  Image work = decoded;
  if (decoded.width > maxSize || decoded.height > maxSize) {
    work = copyResize(decoded, width: maxSize, height: (decoded.height * maxSize / decoded.width).round(), interpolation: Interpolation.nearest);
  }

  final width = work.width;
  final height = work.height;

  // Pre-allocate buffers
  final grayscale = List<double>.filled(width * height, 0.0);

  // Build grayscale buffer and color histogram
  final histogram = List<double>.filled(256, 0.0);
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      final p = work.getPixel(x, y);
      final r = p.r;
      final g = p.g;
      final b = p.b;
      final gray = ((r + g + b) / 3.0).round().clamp(0, 255);
      grayscale[y * width + x] = gray.toDouble();
      histogram[gray]++;
    }
  }

  // Normalize histogram
  double maxCount = 0.0;
  for (int i = 0; i < histogram.length; i++) {
    if (histogram[i] > maxCount) maxCount = histogram[i];
  }
  if (maxCount > 0) {
    for (int i = 0; i < histogram.length; i++) {
      histogram[i] /= maxCount;
    }
  }

  // Edge features using simple Sobel operator -> binned into 64 bins
  final edgeBins = 64;
  final edgeFeatures = List<double>.filled(edgeBins, 0.0);
  if (width > 2 && height > 2) {
    for (int y = 1; y < height - 1; y++) {
      for (int x = 1; x < width - 1; x++) {
        final gx = -grayscale[(y - 1) * width + (x - 1)] -
            2 * grayscale[y * width + (x - 1)] -
            grayscale[(y + 1) * width + (x - 1)] +
            grayscale[(y - 1) * width + (x + 1)] +
            2 * grayscale[y * width + (x + 1)] +
            grayscale[(y + 1) * width + (x + 1)];

        final gy = -grayscale[(y - 1) * width + (x - 1)] -
            2 * grayscale[(y - 1) * width + x] -
            grayscale[(y - 1) * width + (x + 1)] +
            grayscale[(y + 1) * width + (x - 1)] +
            2 * grayscale[(y + 1) * width + x] +
            grayscale[(y + 1) * width + (x + 1)];

        final mag = math.sqrt(gx * gx + gy * gy);
        final bin = ((mag / 255.0) * edgeBins).clamp(0, edgeBins - 1).toInt();
        edgeFeatures[bin]++;
      }
    }
    double maxEdge = 0.0;
    for(int i = 0; i < edgeFeatures.length; i++) {
        if(edgeFeatures[i] > maxEdge) maxEdge = edgeFeatures[i];
    }
    if (maxEdge > 0) {
      for (int i = 0; i < edgeFeatures.length; i++) {
        edgeFeatures[i] /= maxEdge;
      }
    }
  }

  // Texture features: local variance binned into 32 bins
  final textureBins = 32;
  final textureFeatures = List<double>.filled(textureBins, 0.0);
  if (width > 2 && height > 2) {
    for (int y = 1; y < height - 1; y++) {
      for (int x = 1; x < width - 1; x++) {
        double sum = 0.0;
        double sumSq = 0.0;
        for (int dy = -1; dy <= 1; dy++) {
          for (int dx = -1; dx <= 1; dx++) {
            final val = grayscale[(y + dy) * width + (x + dx)];
            sum += val;
            sumSq += val * val;
          }
        }
        final mean = sum / 9.0;
        final variance = (sumSq / 9.0) - (mean * mean);
        final bin = ((variance / 255.0) * textureBins).clamp(0, textureBins - 1).toInt();
        textureFeatures[bin]++;
      }
    }
    double maxTex = 0.0;
    for(int i = 0; i < textureFeatures.length; i++) {
        if(textureFeatures[i] > maxTex) maxTex = textureFeatures[i];
    }
    if (maxTex > 0) {
      for (int i = 0; i < textureFeatures.length; i++) {
        textureFeatures[i] /= maxTex;
      }
    }
  }

  return {
    'colorHistogram': histogram,
    'edgeFeatures': edgeFeatures,
    'textureFeatures': textureFeatures,
    'width': width,
    'height': height,
  };
}

// Worker to process (resize/encode) a logo and return serialized bytes and dims
Map<String, dynamic> processLogoIsolate(Map<String, dynamic> params) {
  final bytes = params['bytes'] as Uint8List;
  final maxLogoSize = params['maxLogoSize'] as int? ?? 200;

  Image? decoded;
  try {
    decoded = decodeImage(bytes);
  } catch (e) {
    decoded = null;
  }

  if (decoded == null) return {'bytes': Uint8List(0), 'width': 0, 'height': 0};

  Image work = decoded;
  if (decoded.width > maxLogoSize || decoded.height > maxLogoSize) {
    work = copyResize(decoded, width: maxLogoSize, height: (decoded.height * maxLogoSize / decoded.width).round(), interpolation: Interpolation.nearest);
  }

  final encoded = encodePng(work);
  return {'bytes': Uint8List.fromList(encoded), 'width': work.width, 'height': work.height};
}
