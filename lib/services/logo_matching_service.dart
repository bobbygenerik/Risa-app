import 'dart:io';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart';
import 'package:crypto/crypto.dart';
import '../utils/throttled_notifier.dart';
import 'logo_matching_isolate.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart';
import '../utils/debug_helper.dart';

/// Service for logo-based channel matching using computer vision techniques
/// Compares channel logos to improve EPG matching accuracy
class LogoMatchingService extends ChangeNotifier with ThrottledNotifier {
  static const String _logoCacheDir = 'channel_logos';
  static const String _logoIndexFile = 'logo_index.json';
  static const int _maxCacheSize = 500; // Maximum number of logos to cache
  static const int _maxLogoSize =
      200; // Maximum width/height for processed logos

  final Dio _dio = Dio(BaseOptions(
    connectTimeout: Duration(seconds: 10),
    receiveTimeout: Duration(seconds: 15),
    sendTimeout: Duration(seconds: 10),
  ));

  final Map<String, LogoData> _logoCache = {};
  final Map<String, LogoFeatures> _logoFeatures = {};
  final Map<String, LogoFeatures> _featuresByHash = {};
  final Map<String, double> _similarityCache = {};

  Directory? _cacheDirectory;
  bool _isInitialized = false;

  // Getters
  bool get isInitialized => _isInitialized;
  int get cachedLogosCount => _logoCache.length;
  int get processedFeaturesCount => _logoFeatures.length;

  /// Initialize the logo matching service
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      final directory = await getApplicationDocumentsDirectory();
      _cacheDirectory = Directory('${directory.path}/$_logoCacheDir');

      final cacheDir = _cacheDirectory;
      if (cacheDir != null && !await cacheDir.exists()) {
        await cacheDir.create(recursive: true);
      }

      await _loadLogoIndex();
      await _cleanupOldLogos();

      _isInitialized = true;
      debugLog(
          'Logo Matching Service initialized with ${_logoCache.length} cached logos');
    } catch (e) {
      debugLog('Failed to initialize Logo Matching Service: $e');
    }
  }

  /// Download and process channel logo
  Future<LogoData?> downloadAndProcessLogo({
    required String channelId,
    required String channelName,
    String? logoUrl,
    String? providerId,
  }) async {
    if (!_isInitialized) await initialize();

    try {
      // Check if logo already exists
      if (_logoCache.containsKey(channelId)) {
        return _logoCache[channelId];
      }

      // Try to get logo from various sources
      String? finalLogoUrl = logoUrl;
      if (finalLogoUrl == null || finalLogoUrl.isEmpty) {
        finalLogoUrl = await _findLogoUrl(channelName, providerId);
      }

      if (finalLogoUrl == null || finalLogoUrl.isEmpty) {
        debugLog('No logo URL found for channel: $channelName');
        return null;
      }

      // Download logo
      final logoBytes = await _downloadLogo(finalLogoUrl);
      if (logoBytes == null) {
        debugLog('Failed to download logo for: $channelName');
        return null;
      }

      // Process logo
      final processedLogo = await _processLogo(logoBytes, finalLogoUrl);
      if (processedLogo == null) {
        debugLog('Failed to process logo for: $channelName');
        return null;
      }

      // Save to cache
      await _saveLogoToCache(channelId, processedLogo);

      // Extract features for matching
      await _extractLogoFeatures(channelId, processedLogo);

      debugLog('Successfully processed logo for: $channelName');
      return processedLogo;
    } catch (e) {
      debugLog('Error downloading/processing logo for $channelName: $e');
      return null;
    }
  }

  /// Find logo-based matches for a channel
  Future<List<LogoMatch>> findLogoMatches({
    required String channelId,
    required String channelName,
    String? providerId,
    List<String> candidateEpgIds = const [],
    double similarityThreshold = 0.7,
    int maxResults = 10,
  }) async {
    if (!_isInitialized) await initialize();

    final matches = <LogoMatch>[];

    try {
      // Get the query logo
      final queryLogo = await getLogoForChannel(channelId, channelName);
      if (queryLogo == null) {
        debugLog('No query logo available for: $channelName');
        return matches;
      }

      // Extract query features
      final queryFeatures =
          await _extractLogoFeaturesFromBytes(queryLogo.bytes);

      // Compare with candidate EPG channels
      for (final epgId in candidateEpgIds) {
        final similarity = await _calculateLogoSimilarity(queryFeatures, epgId);

        if (similarity >= similarityThreshold) {
          matches.add(LogoMatch(
            epgId: epgId,
            similarity: similarity,
            matchType: LogoMatchType.visualSimilarity,
          ));
        }
      }

      // If no specific candidates, search all cached logos
      if (candidateEpgIds.isEmpty) {
        for (final cachedChannelId in _logoCache.keys) {
          if (cachedChannelId == channelId) continue;

          final similarity =
              await _calculateLogoSimilarity(queryFeatures, cachedChannelId);

          if (similarity >= similarityThreshold) {
            matches.add(LogoMatch(
              epgId: cachedChannelId,
              similarity: similarity,
              matchType: LogoMatchType.visualSimilarity,
            ));
          }
        }
      }

      // Sort by similarity and limit results
      matches.sort((a, b) => b.similarity.compareTo(a.similarity));
      return matches.take(maxResults).toList();
    } catch (e) {
      debugLog('Error finding logo matches for $channelName: $e');
      return matches;
    }
  }

  /// Get logo for a specific channel
  Future<LogoData?> getLogoForChannel(
      String channelId, String channelName) async {
    if (_logoCache.containsKey(channelId)) {
    return _logoCache[channelId];
    }

    // Try to download if not cached
    return await downloadAndProcessLogo(
      channelId: channelId,
      channelName: channelName,
      providerId: null,
    );
  }

  /// Calculate confidence boost based on logo similarity
  Future<double> calculateLogoConfidenceBoost({
    required String channelId,
    required String candidateEpgId,
    String? providerId,
  }) async {
    if (!_isInitialized) await initialize();

    try {
      final similarity =
          await _calculateLogoSimilarityByIds(channelId, candidateEpgId);

      // Boost confidence based on similarity
      if (similarity >= 0.9) return 0.3; // Very high confidence
      if (similarity >= 0.8) return 0.2; // High confidence
      if (similarity >= 0.7) return 0.1; // Medium confidence
      return 0.0; // Low similarity, no boost
    } catch (e) {
      debugLog('Error calculating logo confidence boost: $e');
      return 0.0;
    }
  }

  /// Get logo statistics
  Map<String, dynamic> getLogoStatistics() {
    return {
      'cachedLogos': _logoCache.length,
      'processedFeatures': _logoFeatures.length,
      'cacheSize': _getCacheSize(),
      'avgFileSize': _getAverageFileSize(),
      'supportedFormats': ['PNG', 'JPEG', 'GIF', 'WebP'],
    };
  }

  /// Clear all cached logos
  Future<void> clearLogoCache() async {
    try {
      _logoCache.clear();
      _logoFeatures.clear();
      _similarityCache.clear();

      if (_cacheDirectory != null && await _cacheDirectory!.exists()) {
        await _cacheDirectory!.delete(recursive: true);
        await _cacheDirectory!.create();
      }

      final indexFile = File('${_cacheDirectory!.path}/$_logoIndexFile');
      if (await indexFile.exists()) {
        await indexFile.delete();
      }

      debugLog('Logo cache cleared');
      notifyListenersThrottled();
    } catch (e) {
      debugLog('Error clearing logo cache: $e');
    }
  }

  /// Export logo data for backup
  Map<String, dynamic> exportLogoData() {
    return {
      'version': '1.0',
      'timestamp': DateTime.now().toIso8601String(),
      'logoCache':
          _logoCache.map((key, value) => MapEntry(key, value.toJson())),
      'logoFeatures':
          _logoFeatures.map((key, value) => MapEntry(key, value.toJson())),
      'statistics': getLogoStatistics(),
    };
  }

  // Private methods

  static final RegExp _nonAlphanumericRe = RegExp(r'[^a-z0-9]');
  static final RegExp _qualitySuffixRe = RegExp(r'(hd|fhd|uhd|4k|sd|uk|us|ca|au)$');

  Future<String?> _findLogoUrl(String channelName, String? providerId) async {
    // This is a simplified implementation
    // In a real app, you'd have a comprehensive logo database or API

    final normalizedName = channelName
        .toLowerCase()
        .replaceAll(_nonAlphanumericRe, '')
        .replaceAll(_qualitySuffixRe, '');

    // Common logo URL patterns
    final patterns = [
      'https://logo.clearbit.com/$normalizedName.com',
      'https://www.$normalizedName.com/logo.png',
      'https://logos-world.net/wp-content/uploads/2020/06/$normalizedName-Logo.png',
    ];

    for (final pattern in patterns) {
      try {
        final response = await _dio.head(pattern);
        if (response.statusCode == 200) {
          return pattern;
        }
      } catch (e) {
        // Continue to next pattern
      }
    }

    return null;
  }

  Future<Uint8List?> _downloadLogo(String url) async {
    try {
      final response = await _dio.get(
        url,
        options: Options(responseType: ResponseType.bytes),
      );

      if (response.statusCode == 200 && response.data != null) {
        return Uint8List.fromList(response.data);
      }
    } catch (e) {
      debugLog('Error downloading logo from $url: $e');
    }

    return null;
  }

  Future<LogoData?> _processLogo(Uint8List bytes, String url) async {
    try {
      // Offload processing (decode/resize/encode) to a pure-Dart isolate worker
      final params = {'bytes': bytes, 'maxLogoSize': _maxLogoSize};
      final map = await compute(processLogoIsolate, params);
      final processedBytes = map['bytes'] as Uint8List;
      final procWidth = (map['width'] as num).toInt();
      final procHeight = (map['height'] as num).toInt();

      // Calculate hash for deduplication based on original bytes
      final hash = sha256.convert(bytes).toString();

      return LogoData(
        bytes: processedBytes,
        width: procWidth,
        height: procHeight,
        format: 'PNG',
        url: url,
        hash: hash,
        timestamp: DateTime.now(),
      );
    } catch (e) {
      debugLog('Error processing logo: $e');
      return null;
    }
  }

  

  Future<void> _saveLogoToCache(String channelId, LogoData logo) async {
    try {
      final fileName = '${channelId}_${logo.hash.substring(0, 8)}.png';
      final directory = _cacheDirectory;
      if (directory == null) return;
      final file = File('${directory.path}/$fileName');

      await file.writeAsBytes(logo.bytes);

      _logoCache[channelId] = logo;

      // Update index
      await _saveLogoIndex();

      notifyListenersThrottled();
    } catch (e) {
      debugLog('Error saving logo to cache: $e');
    }
  }

  Future<void> _extractLogoFeatures(String channelId, LogoData logo) async {
    try {
      // Reuse features if we've already processed this exact bytes/hash
      if (_featuresByHash.containsKey(logo.hash)) {
        _logoFeatures[channelId] = _featuresByHash[logo.hash]!;
        return;
      }

      final features = await _extractLogoFeaturesFromBytes(logo.bytes);
      _logoFeatures[channelId] = features;
      _featuresByHash[logo.hash] = features;
    } catch (e) {
      debugLog('Error extracting logo features for $channelId: $e');
    }
  }

  Future<LogoFeatures> _extractLogoFeaturesFromBytes(Uint8List bytes) async {
    try {
      // Prefer pure-Dart isolate-based extraction to keep work off UI isolate
      try {
        final map = await compute(extractLogoFeaturesIsolate, bytes);
        final colorHistogram = (map['colorHistogram'] as List).cast<double>();
        final edgeFeatures = (map['edgeFeatures'] as List).cast<double>();
        final textureFeatures = (map['textureFeatures'] as List).cast<double>();
        final width = (map['width'] as num).toDouble();
        final height = (map['height'] as num).toDouble();

        return LogoFeatures(
          colorHistogram: colorHistogram,
          edgeFeatures: edgeFeatures,
          textureFeatures: textureFeatures,
          dimensions: Point(width, height),
        );
      } catch (e) {
        // Fallback to engine-based extraction on failure
        final codec = await ui.instantiateImageCodec(bytes);
        final frame = await codec.getNextFrame();
        final image = frame.image;

        final colorHistogram = await _extractColorHistogram(image);
        final edgeFeatures = await _extractEdgeFeatures(image);
        final textureFeatures = await _extractTextureFeatures(image);

        return LogoFeatures(
          colorHistogram: colorHistogram,
          edgeFeatures: edgeFeatures,
          textureFeatures: textureFeatures,
          dimensions: Point(image.width.toDouble(), image.height.toDouble()),
        );
      }
    } catch (e) {
      debugLog('Error extracting logo features: $e');
      rethrow;
    }
  }

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
      final maxCount = histogram.reduce(math.max);
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
    final maxValue = edgeFeatures.reduce(math.max);
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
    final maxValue = textureFeatures.reduce(math.max);
    if (maxValue > 0) {
      for (int i = 0; i < textureFeatures.length; i++) {
        textureFeatures[i] /= maxValue;
      }
    }

    return textureFeatures;
  }

  Future<double> _calculateLogoSimilarity(
      LogoFeatures query, String targetChannelId) async {
    final cacheKey = '${query.hashCode}_$targetChannelId';
    if (_similarityCache.containsKey(cacheKey)) {
      return _similarityCache[cacheKey] ?? 0.0;
    }

    if (!_logoFeatures.containsKey(targetChannelId)) {
      return 0.0;
    }

    final target = _logoFeatures[targetChannelId];
    if (target == null) return 0.0;

    // Calculate similarity using multiple features
    final colorSimilarity = _calculateHistogramSimilarity(
        query.colorHistogram, target.colorHistogram);
    final edgeSimilarity =
        _calculateFeatureSimilarity(query.edgeFeatures, target.edgeFeatures);
    final textureSimilarity = _calculateFeatureSimilarity(
        query.textureFeatures, target.textureFeatures);

    // Weighted combination
    final overallSimilarity = (colorSimilarity * 0.4 +
        edgeSimilarity * 0.4 +
        textureSimilarity * 0.2);

    _similarityCache[cacheKey] = overallSimilarity;
    return overallSimilarity;
  }

  Future<double> _calculateLogoSimilarityByIds(
      String channelId1, String channelId2) async {
    if (!_logoFeatures.containsKey(channelId1) ||
        !_logoFeatures.containsKey(channelId2)) {
      return 0.0;
    }

    final features1 = _logoFeatures[channelId1];
    if (features1 == null) return 0.0;
    return await _calculateLogoSimilarity(features1, channelId2);
  }

  double _calculateHistogramSimilarity(List<double> hist1, List<double> hist2) {
    if (hist1.length != hist2.length) return 0.0;

    double correlation = 0.0;
    double sum1 = 0.0, sum2 = 0.0, sum1Sq = 0.0, sum2Sq = 0.0;

    for (int i = 0; i < hist1.length; i++) {
      correlation += hist1[i] * hist2[i];
      sum1 += hist1[i];
      sum2 += hist2[i];
      sum1Sq += hist1[i] * hist1[i];
      sum2Sq += hist2[i] * hist2[i];
    }

    final numerator = correlation - (sum1 * sum2 / hist1.length);
    final denominator = math.sqrt((sum1Sq - sum1 * sum1 / hist1.length) *
        (sum2Sq - sum2 * sum2 / hist1.length));

    return denominator > 0 ? (numerator / denominator).abs() : 0.0;
  }

  double _calculateFeatureSimilarity(
      List<double> features1, List<double> features2) {
    if (features1.length != features2.length) return 0.0;

    double sum = 0.0;
    for (int i = 0; i < features1.length; i++) {
      sum += (features1[i] - features2[i]).abs();
    }

    // Convert distance to similarity (1 - normalized distance)
    return 1.0 - (sum / features1.length);
  }

  Future<void> _loadLogoIndex() async {
    try {
      final indexFile = File('${_cacheDirectory!.path}/$_logoIndexFile');
      if (!await indexFile.exists()) return;

      // Parse index file and rebuild logo cache
      // This is a simplified implementation
    } catch (e) {
      debugLog('Error loading logo index: $e');
    }
  }

  Future<void> _saveLogoIndex() async {
    try {
      // final index = _logoCache.map((key, value) => MapEntry(key, {
      //       'hash': value.hash,
      //       'fileName': '${key}_${value.hash.substring(0, 8)}.png',
      //       'timestamp': value.timestamp.toIso8601String(),
      //     }));

      // Save index (simplified)
    } catch (e) {
      debugLog('Error saving logo index: $e');
    }
  }

  Future<void> _cleanupOldLogos() async {
    try {
      if (_logoCache.length <= _maxCacheSize) return;

      // Remove oldest entries
      final entries = _logoCache.entries.toList()
        ..sort((a, b) => a.value.timestamp.compareTo(b.value.timestamp));

      final toRemove = entries.take(_logoCache.length - _maxCacheSize);

      for (final entry in toRemove) {
        _logoCache.remove(entry.key);
        _logoFeatures.remove(entry.key);
      }

      debugLog('Cleaned up ${toRemove.length} old logos from cache');
    } catch (e) {
      debugLog('Error during logo cache cleanup: $e');
    }
  }

  int _getCacheSize() {
    // Calculate total cache size in bytes
    return _logoCache.values.fold(0, (sum, logo) => sum + logo.bytes.length);
  }

  double _getAverageFileSize() {
    if (_logoCache.isEmpty) return 0.0;
    return _getCacheSize() / _logoCache.length;
  }
}

/// Data classes for logo matching
class LogoData {
  final Uint8List bytes;
  final int width;
  final int height;
  final String format;
  final String url;
  final String hash;
  final DateTime timestamp;

  LogoData({
    required this.bytes,
    required this.width,
    required this.height,
    required this.format,
    required this.url,
    required this.hash,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'width': width,
        'height': height,
        'format': format,
        'url': url,
        'hash': hash,
        'timestamp': timestamp.toIso8601String(),
        'bytes': bytes,
      };
}

class LogoFeatures {
  final List<double> colorHistogram;
  final List<double> edgeFeatures;
  final List<double> textureFeatures;
  final Point dimensions;

  LogoFeatures({
    required this.colorHistogram,
    required this.edgeFeatures,
    required this.textureFeatures,
    required this.dimensions,
  });

  Map<String, dynamic> toJson() => {
        'colorHistogram': colorHistogram,
        'edgeFeatures': edgeFeatures,
        'textureFeatures': textureFeatures,
        'dimensions': {'x': dimensions.x, 'y': dimensions.y},
      };
}

class LogoMatch {
  final String epgId;
  final double similarity;
  final LogoMatchType matchType;

  LogoMatch({
    required this.epgId,
    required this.similarity,
    required this.matchType,
  });
}

enum LogoMatchType {
  visualSimilarity,
  exactMatch,
  colorMatch,
}

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);
}
