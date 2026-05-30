part of '../logo_matching_service.dart';

extension LogoMatchingHelpersVision on LogoMatchingService {
Future<List<double>> _extractColorHistogram(ui.Image image) async {
  // Simplified color histogram extraction
  // In a real implementation, you'd want more sophisticated color analysis

  final bytes = await image.toByteData(format: ui.ImageByteFormat.rawRgba);
  final histogram = List<double>.filled(256, 0.0); // 8-bit RGB histogram

  if (bytes != null) {
    final buffer = bytes.buffer.asUint8List();

    for (int i = 0; i < buffer.length; i += 4) {
      final r = buffer[i];
      final g = buffer[i + 1];
      final b = buffer[i + 2];

      // Simple RGB to grayscale conversion for histogram
      final gray = ((r + g + b) / 3).round();
      histogram[gray]++;
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
  }

  return histogram;
}

Future<List<double>> _extractEdgeFeatures(ui.Image image) async {
  // Simplified edge detection using Sobel operator
  // This is a basic implementation - real edge detection would be more sophisticated

  final bytes = await image.toByteData(format: ui.ImageByteFormat.rawRgba);
  if (bytes == null) return List<double>.filled(64, 0.0);

  final buffer = bytes.buffer.asUint8List();
  final width = image.width;
  final height = image.height;

  // Convert to grayscale
  final grayscale = List<double>.filled(width * height, 0.0);

  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      final index = (y * width + x) * 4;
      if (index + 2 < buffer.length) {
        final r = buffer[index];
        final g = buffer[index + 1];
        final b = buffer[index + 2];
        grayscale[y * width + x] = (r + g + b) / 3;
      }
    }
  }

  // Apply Sobel edge detection (simplified)
  final edgeFeatures = List<double>.filled(64, 0.0);

  for (int y = 1; y < height - 1; y++) {
    for (int x = 1; x < width - 1; x++) {
      final sobelX = -grayscale[y * width + x - width - 1] -
          2 * grayscale[y * width + x - 1] -
          grayscale[y * width + x + width - 1] +
          grayscale[y * width + x - width + 1] +
          2 * grayscale[y * width + x + 1] +
          grayscale[y * width + x + width + 1];

      // Sobel Y
      final sobelY = -grayscale[y * width + x - width - 1] -
          2 * grayscale[y * width + x - width] -
          grayscale[y * width + x - width + 1] +
          grayscale[y * width + x + width - 1] +
          2 * grayscale[y * width + x + width] +
          grayscale[y * width + x + width + 1];

      final magnitude = math.sqrt(sobelX * sobelX + sobelY * sobelY);

      // Bin the edge magnitude
      final binIndex = ((magnitude / 255.0) * 64).clamp(0, 63).toInt();
      edgeFeatures[binIndex]++;
    }
  }

  // Normalize
  double maxValue = 0.0;
  for (int i = 0; i < edgeFeatures.length; i++) {
    if (edgeFeatures[i] > maxValue) maxValue = edgeFeatures[i];
  }
  if (maxValue > 0) {
    for (int i = 0; i < edgeFeatures.length; i++) {
      edgeFeatures[i] /= maxValue;
    }
  }

  return edgeFeatures;
}

Future<List<double>> _extractTextureFeatures(ui.Image image) async {
  // Simplified texture analysis using local binary patterns
  // This is a basic implementation

  final bytes = await image.toByteData(format: ui.ImageByteFormat.rawRgba);
  if (bytes == null) return List<double>.filled(32, 0.0);

  final buffer = bytes.buffer.asUint8List();
  final width = image.width;
  final height = image.height;

  // Convert to grayscale
  final grayscale = List<double>.filled(width * height, 0.0);

  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      final index = (y * width + x) * 4;
      if (index + 2 < buffer.length) {
        final r = buffer[index];
        final g = buffer[index + 1];
        final b = buffer[index + 2];
        grayscale[y * width + x] = (r + g + b) / 3;
      }
    }
  }

  // Calculate texture features (simplified variance)
  final textureFeatures = List<double>.filled(32, 0.0);

  for (int y = 1; y < height - 1; y++) {
    for (int x = 1; x < width - 1; x++) {
      // Calculate local variance
      double sum = 0;
      double sumSquared = 0;

      for (int dy = -1; dy <= 1; dy++) {
        for (int dx = -1; dx <= 1; dx++) {
          final neighborIdx = (y + dy) * width + (x + dx);
          final value = grayscale[neighborIdx];
          sum += value;
          sumSquared += value * value;
        }
      }

      final count = 9;
      final mean = sum / count;
      final variance = (sumSquared / count) - (mean * mean);

      // Bin the variance
      final binIndex = ((variance / 255.0) * 32).clamp(0, 31).toInt();
      textureFeatures[binIndex]++;
    }
  }

  // Normalize
  double maxValue = 0.0;
  for (int i = 0; i < textureFeatures.length; i++) {
    if (textureFeatures[i] > maxValue) maxValue = textureFeatures[i];
  }
  if (maxValue > 0) {
    for (int i = 0; i < textureFeatures.length; i++) {
      textureFeatures[i] /= maxValue;
    }
  }

  return textureFeatures;
}

}
