part of '../logo_matching_service.dart';

extension LogoMatchingHelpersPersist on LogoMatchingService {
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
    final indexFile = File('${_cacheDirectory!.path}/LogoMatchingService._logoIndexFile');
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
    if (_logoCache.length <=LogoMatchingService._maxCacheSize) return;

    // Remove oldest entries
    final entries = _logoCache.entries.toList()
      ..sort((a, b) => a.value.timestamp.compareTo(b.value.timestamp));

    final toRemove = entries.take(_logoCache.length -LogoMatchingService._maxCacheSize);

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
    // ⚡ Bolt: Performance Optimization
    // Replaced .fold() with a manual for-loop. This avoids allocating
    // an iterator, a closure, and executing a function call per item.
    int sum = 0;
    for (final logo in _logoCache.values) {
      sum += logo.bytes.length;
    }
    return sum;
  }

  double _getAverageFileSize() {
    if (_logoCache.isEmpty) return 0.0;
    return _getCacheSize() / _logoCache.length;
  }
}
