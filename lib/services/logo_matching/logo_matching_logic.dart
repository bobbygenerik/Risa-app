part of '../logo_matching_service.dart';

extension LogoMatchingLogic on LogoMatchingService {
/// Initialize the logo matching service
Future<void> initialize() async {
  if (_isInitialized) return;

  try {
    final directory = await getApplicationDocumentsDirectory();
    _cacheDirectory = Directory('${directory.path}/LogoMatchingService._logoCacheDir');

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

    final indexFile = File('${_cacheDirectory!.path}/LogoMatchingService._logoIndexFile');
    if (await indexFile.exists()) {
      await indexFile.delete();
    }

    debugLog('Logo cache cleared');
    _notifyLogoChange();
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
}
