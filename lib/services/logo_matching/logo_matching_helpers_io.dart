part of '../logo_matching_service.dart';

extension LogoMatchingHelpersIo on LogoMatchingService {
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
    final params = {'bytes': bytes, 'maxLogoSize':LogoMatchingService._maxLogoSize};
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

    _notifyLogoChange();
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

}
