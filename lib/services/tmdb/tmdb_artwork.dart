part of '../tmdb_service.dart';

/// Returns the best available backdrop/poster URL for a given title.
/// Prefers TV results first, falling back to movie matches and heuristics.
Future<String?> tmdbGetBestBackdrop(String title, {int? year}) async {
  await TMDBService.init();
  final normalizedTitle = TMDBService._normalizeTitle(title);
  final cacheKey = TMDBService._cacheKey('art:best', normalizedTitle, year: year);
  final cached = TMDBService._getFromCache(cacheKey);
  if (cached != null && cached.containsKey('image')) {
    final cachedImage = (cached['image'] as String?)?.trim();
    if (cachedImage?.isNotEmpty == true) {
      return cachedImage;
    }
    return null;
  }

  if (TMDBService._processingRequests.contains(cacheKey)) {
    final completer = Completer<String?>();
    TMDBService._pendingRequests.putIfAbsent(cacheKey, () => []).add(completer.complete);
    return completer.future;
  }

  TMDBService._processingRequests.add(cacheKey);
  try {
    var details = await _tmdbResolveBackdrop(normalizedTitle, year);

    if (!_tmdbHasArtwork(details)) {
      debugLog('TMDB miss for "$normalizedTitle", trying sports heuristics.');
      details ??= await _tmdbTryTeamHeuristic(normalizedTitle, year);
      if (_tmdbHasArtwork(details)) {
        debugLog(
            'Team heuristic returned artwork for "$normalizedTitle": ${details!['backdrop'] ?? details['poster']}');
      }
    } else {
      debugLog(
          'TMDB found artwork for "$normalizedTitle": ${details!['backdrop'] ?? details['poster']}');
    }

    final image = _tmdbExtractBackdropUrl(details);
    TMDBService._setCache(
      cacheKey,
      {'image': image},
      ttl: image == null ? const Duration(hours: 1) : null,
    );

    final pending = TMDBService._pendingRequests.remove(cacheKey);
    if (pending != null) {
      for (final callback in pending) {
        callback(image);
      }
    }

    return image;
  } finally {
    TMDBService._processingRequests.remove(cacheKey);
  }
}

/// Returns image + metadata for a given title (for blacklist/validation use cases).
Future<Map<String, dynamic>?> tmdbGetBestBackdropDetails(
  String title, {
  int? year,
}) async {
  await TMDBService.init();
  final normalizedTitle = TMDBService._normalizeTitle(title);
  final cacheKey = TMDBService._cacheKey('art:bestmeta', normalizedTitle, year: year);
  final cached = TMDBService._getFromCache(cacheKey);
  if (cached != null && cached.containsKey('image')) {
    return cached;
  }

  var details = await _tmdbResolveBackdrop(normalizedTitle, year);
  if (!_tmdbHasArtwork(details)) {
    details ??= await _tmdbTryTeamHeuristic(normalizedTitle, year);
  }

  final image = _tmdbExtractBackdropUrl(details);
  final result = {
    'image': image,
    'title': details?['title'],
    'mediaType': details?['mediaType'],
    'genres': details?['genres'],
  };
  TMDBService._setCache(
    cacheKey,
    result,
    ttl: image == null ? const Duration(hours: 1) : null,
  );
  return result;
}

Future<Map<String, dynamic>?> _tmdbResolveBackdrop(
    String normalizedTitle, int? year) async {
  Map<String, dynamic>? details;

  // For short titles (≤4 chars like ESPN, CNN, BBC), try the raw title
  // first without appending " channel" which can cause false matches.
  // Only append " channel" as a last-resort fallback.
  details = await TMDBService.getTVDetails(normalizedTitle, year: year);
  details ??= await TMDBService.getMovieDetails(normalizedTitle, year: year);

  // Fallback for short titles: try with " channel" suffix
  if (details == null && normalizedTitle.length <= 4) {
    details = await TMDBService.getTVDetails('$normalizedTitle channel', year: year);
  }

  if (details != null) {
    final tmdbId = details['tmdbId'] as int?;
    final mediaType = details['mediaType'] as String?;
    final hasBackdrop =
        (details['backdrop'] as String?)?.trim().isNotEmpty == true;

    // If TMDB only has a poster, still try Fanart for a real landscape backdrop.
    if (!hasBackdrop && tmdbId != null && mediaType != null) {
      final fanartImage = await FanartService.getBackdrop(
        tmdbId,
        isTv: mediaType == 'tv',
      );
      if (fanartImage != null) {
        details['backdrop'] = fanartImage;
        debugLog('Fanart provided art for "$normalizedTitle": $fanartImage');
      }
    }

    // Try TMDB /images endpoint for higher-res backdrops
    if (tmdbId != null && mediaType != null) {
      final tmdbBackdrop = await _tmdbGetHighResBackdrop(tmdbId, mediaType);
      if (tmdbBackdrop != null && tmdbBackdrop.isNotEmpty) {
        details['backdrop'] = tmdbBackdrop;
      }
    }

    // If we STILL have no backdrop but DO have a poster, use a lower-res
    // TMDB backdrop endpoint as one more try. The poster itself won't be
    // returned (it's portrait), but the /images endpoint might have backdrops
    // below 1920x1080 that _tmdbGetHighResBackdrop filtered out.
    if ((details['backdrop'] as String?)?.trim().isNotEmpty != true &&
        tmdbId != null &&
        mediaType != null) {
      final anyBackdrop = await _tmdbGetAnyBackdrop(tmdbId, mediaType);
      if (anyBackdrop != null && anyBackdrop.isNotEmpty) {
        details['backdrop'] = anyBackdrop;
        debugLog('TMDB: Found lower-res backdrop for "$normalizedTitle": $anyBackdrop');
      }
    }
  }

  return details;
}

bool _tmdbHasArtwork(Map<String, dynamic>? details) {
  if (details == null) return false;
  // Only check for backdrop — posters are portrait and not used for
  // landscape cards, so a poster-only match should not prevent fallbacks.
  final backdrop = (details['backdrop'] as String?)?.trim();
  return backdrop != null && backdrop.isNotEmpty;
}

String? _tmdbExtractBackdropUrl(Map<String, dynamic>? details) {
  if (details == null) return null;
  final backdrop = _tmdbResizeTmdbImageUrl(
    (details['backdrop'] as String?)?.trim(),
    isBackdrop: true,
  );
  if (backdrop != null && backdrop.isNotEmpty) return backdrop;

  // Do NOT fall back to poster images — they are portrait/tall and get
  // rejected at render time by _LandscapeGuardedImage, but the card has
  // already committed to showing a corner logo and hiding the fallback.
  // This caused visual corruption (poster-over-fallback layering).
  return null;
}

String? _tmdbResizeTmdbImageUrl(String? url, {required bool isBackdrop}) {
  if (url == null || url.isEmpty) return url;
  final size = isBackdrop ? 'w1280' : 'w780';
  try {
    final uri = Uri.parse(url);
    if (!uri.host.contains('image.tmdb.org')) return url;
    final segments = uri.pathSegments.toList();
    if (segments.length >= 3 && segments[0] == 't' && segments[1] == 'p') {
      segments[2] = size;
      return uri.replace(pathSegments: segments).toString();
    }
  } catch (_) {}
  return url;
}

double _tmdbTitleSimilarity(String s1, String s2) {
  final t1 = s1.toLowerCase().trim();
  final t2 = s2.toLowerCase().trim();
  if (t1 == t2) return 1.0;
  if (t1.contains(t2) || t2.contains(t1)) return 0.8;
  // Simple word match ratio
  final words1 = t1.split(TMDBService._whitespaceRe).toSet();
  final words2 = t2.split(TMDBService._whitespaceRe).toSet();
  if (words1.isEmpty || words2.isEmpty) return 0.0;
  final intersection = words1.intersection(words2);
  return intersection.length / math.max(words1.length, words2.length);
}

/// Fetches high-res backdrop from TMDB /images endpoint.
/// Filters by include_image_language=null,en; enforces min 1920x1080;
/// prefers aspect ratio > 1.7; sorts by vote_average desc then vote_count desc.
Future<String?> _tmdbGetHighResBackdrop(
    int tmdbId, String mediaType) async {
  final typePath = mediaType == 'tv' ? 'tv' : 'movie';
  final url =
      '$TMDBService._baseUrl/$typePath/$tmdbId/images?api_key=$TMDBService._apiKey&include_image_language=null,en';
  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) return null;
    final data = json.decode(response.body) as Map<String, dynamic>;
    final available = (data['backdrops'] as List?) ?? [];
    if (available.isEmpty) return null;

    // Filter: iso_639_1 == null or 'en', min 1920x1080
    final filtered = available.where((entry) {
      final lang = entry['iso_639_1'] as String?;
      if (lang != null && lang != 'en') return false;
      final width = (entry['width'] as int?) ?? 0;
      final height = (entry['height'] as int?) ?? 0;
      return width >= 1920 && height >= 1080;
    }).toList();

    if (filtered.isEmpty) return null;

    // Sort: prefer aspect ratio > 1.7, then vote_average desc, then vote_count desc
    filtered.sort((a, b) {
      final aw = (a['width'] as int?) ?? 1;
      final ah = (a['height'] as int?) ?? 1;
      final bw = (b['width'] as int?) ?? 1;
      final bh = (b['height'] as int?) ?? 1;
      final aAspect = aw / ah;
      final bAspect = bw / bh;
      final aWide = aAspect > 1.7 ? 1 : 0;
      final bWide = bAspect > 1.7 ? 1 : 0;
      if (aWide != bWide) return bWide.compareTo(aWide);
      final aVoteAvg = (a['vote_average'] as num?)?.toDouble() ?? 0.0;
      final bVoteAvg = (b['vote_average'] as num?)?.toDouble() ?? 0.0;
      if ((bVoteAvg - aVoteAvg).abs() > 0.01) {
        return bVoteAvg.compareTo(aVoteAvg);
      }
      final aVoteCount = (a['vote_count'] as int?) ?? 0;
      final bVoteCount = (b['vote_count'] as int?) ?? 0;
      return bVoteCount.compareTo(aVoteCount);
    });

    final best = filtered.first;
    final filePath = (best['file_path'] as String?)?.trim();
    if (filePath != null && filePath.isNotEmpty) {
      return _tmdbResizeTmdbImageUrl('$TMDBService._imageBaseUrl$filePath', isBackdrop: true);
    }
  } catch (e, st) {
    debugLog('TMDB image lookup failed for $mediaType/$tmdbId: $e\n$st');
  }
  return null;
}

/// Like _tmdbGetHighResBackdrop but accepts ANY resolution backdrop ≥ 640x360.
/// Used as a last-resort when the high-res endpoint finds nothing.
Future<String?> _tmdbGetAnyBackdrop(int tmdbId, String mediaType) async {
  final typePath = mediaType == 'tv' ? 'tv' : 'movie';
  final url =
      '$TMDBService._baseUrl/$typePath/$tmdbId/images?api_key=$TMDBService._apiKey&include_image_language=null,en';
  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) return null;
    final data = json.decode(response.body) as Map<String, dynamic>;
    final available = (data['backdrops'] as List?) ?? [];
    if (available.isEmpty) return null;

    // Accept any landscape backdrop ≥ 640x360
    final filtered = available.where((entry) {
      final lang = entry['iso_639_1'] as String?;
      if (lang != null && lang != 'en') return false;
      final width = (entry['width'] as int?) ?? 0;
      final height = (entry['height'] as int?) ?? 0;
      return width >= 640 && height >= 360 && width > height;
    }).toList();

    if (filtered.isEmpty) return null;

    // Sort by resolution desc
    filtered.sort((a, b) {
      final aPixels =
          ((a['width'] as int?) ?? 0) * ((a['height'] as int?) ?? 0);
      final bPixels =
          ((b['width'] as int?) ?? 0) * ((b['height'] as int?) ?? 0);
      return bPixels.compareTo(aPixels);
    });

    final best = filtered.first;
    final filePath = (best['file_path'] as String?)?.trim();
    if (filePath != null && filePath.isNotEmpty) {
      return _tmdbResizeTmdbImageUrl('$TMDBService._imageBaseUrl$filePath', isBackdrop: true);
    }
  } catch (e) {
    debugLog('TMDB any-backdrop lookup failed for $mediaType/$tmdbId: $e');
  }
  return null;
}

List<String> _tmdbExtractSportsTeams(String title) {
  final normalized = title.toLowerCase();
  const separators = [' vs ', ' vs. ', ' v ', ' at ', ' @ ', ' vs/', ' - '];
  for (final separator in separators) {
    if (normalized.contains(separator)) {
      final parts = normalized.split(separator);
      if (parts.length >= 2) {
        return parts
            .take(2)
            .map((segment) => segment.trim())
            .where((segment) => segment.isNotEmpty)
            .toList();
      }
    }
  }
  return [];
}

Future<Map<String, dynamic>?> _tmdbTryTeamHeuristic(
    String title, int? year) async {
  final teams = _tmdbExtractSportsTeams(title);
  if (teams.isEmpty) return null;
  for (final team in teams) {
    final normalizedTeam = TMDBService._normalizeTitle(team);
    final tvMatch = await TMDBService.getTVDetails(normalizedTeam, year: year);
    if (_tmdbHasArtwork(tvMatch)) return tvMatch;
    final movieMatch = await TMDBService.getMovieDetails(normalizedTeam, year: year);
    if (_tmdbHasArtwork(movieMatch)) return movieMatch;
  }
  return null;
}

/// Returns the title logo (clearart) URL for a given title from TMDB.
/// Prefers TV results first, falling back to movie matches.
Future<String?> tmdbGetTitleLogo(String title, {int? year}) async {
  await TMDBService.init();
  final normalizedTitle = TMDBService._normalizeTitle(title);
  final cacheKey = TMDBService._cacheKey('logo:title', normalizedTitle, year: year);
  final cached = TMDBService._getFromCache(cacheKey);
  if (cached != null && cached.containsKey('logo')) {
    return (cached['logo'] as String?)?.isNotEmpty == true
        ? cached['logo'] as String
        : null;
  }

  try {
    String? logoUrl;

    // Try TV first
    final tvSearchUrl =
        '$TMDBService._baseUrl/search/tv?api_key=$TMDBService._apiKey&language=en-US&query=${Uri.encodeComponent(normalizedTitle)}${year != null ? '&first_air_date_year=$year' : ''}';
    final tvResponse = await http.get(Uri.parse(tvSearchUrl));
    if (tvResponse.statusCode == 200) {
      final tvData = json.decode(tvResponse.body);
      final tvResults = tvData['results'] as List;
      if (tvResults.isNotEmpty) {
        final tvId = tvResults.first['id'];
        final imagesUrl =
            '$TMDBService._baseUrl/tv/$tvId/images?api_key=$TMDBService._apiKey&include_image_language=en,null';
        final imagesResponse = await http.get(Uri.parse(imagesUrl));
        if (imagesResponse.statusCode == 200) {
          final imagesData = json.decode(imagesResponse.body);
          final logos = imagesData['logos'] as List? ?? [];
          if (logos.isNotEmpty) {
            final logoPath = logos.first['file_path'] as String?;
            if (logoPath != null) {
              logoUrl = 'https://image.tmdb.org/t/p/original$logoPath';
            }
          }
        }
      }
    }

    // Try Movie if TV didn't find a logo
    if (logoUrl == null) {
      final movieSearchUrl =
          '$TMDBService._baseUrl/search/movie?api_key=$TMDBService._apiKey&language=en-US&query=${Uri.encodeComponent(normalizedTitle)}${year != null ? '&year=$year' : ''}';
      final movieResponse = await http.get(Uri.parse(movieSearchUrl));
      if (movieResponse.statusCode == 200) {
        final movieData = json.decode(movieResponse.body);
        final movieResults = movieData['results'] as List;
        if (movieResults.isNotEmpty) {
          final movieId = movieResults.first['id'];
          final imagesUrl =
              '$TMDBService._baseUrl/movie/$movieId/images?api_key=$TMDBService._apiKey&include_image_language=en,null';
          final imagesResponse = await http.get(Uri.parse(imagesUrl));
          if (imagesResponse.statusCode == 200) {
            final imagesData = json.decode(imagesResponse.body);
            final logos = imagesData['logos'] as List? ?? [];
            if (logos.isNotEmpty) {
              final logoPath = logos.first['file_path'] as String?;
              if (logoPath != null) {
                logoUrl = 'https://image.tmdb.org/t/p/original$logoPath';
              }
            }
          }
        }
      }
    }

    // Cache the result (shorter TTL for misses)
    TMDBService._setCache(
      cacheKey,
      {'logo': logoUrl ?? ''},
      ttl: logoUrl == null ? const Duration(hours: 1) : null,
    );

    if (logoUrl != null) {
      debugLog('TMDB found title logo for "$normalizedTitle": $logoUrl');
    } else {
      debugLog('No title logo found for "$normalizedTitle"');
    }

    return logoUrl;
  } catch (e) {
    debugLog('TMDB getTitleLogo error for "$title": $e');
    return null;
  }
}

/// Batch fetch artwork for multiple titles at once.
/// Returns a map of title -> image URL (or null if not found).
/// This reduces API rate limiting issues.
Future<Map<String, String?>> tmdbGetBestBackdropBatch(
  List<String> titles, {
  int? year,
}) async {
  await TMDBService.init();
  final results = <String, String?>{};

  // First check cache
  final uncached = <String>[];
  for (final title in titles) {
    final cacheKey = TMDBService._cacheKey('art:best', title, year: year);
    final cached = TMDBService._getFromCache(cacheKey);
    if (cached != null && cached.containsKey('image')) {
      results[title] = (cached['image'] as String?)?.isNotEmpty == true
          ? cached['image'] as String
          : null;
    } else {
      uncached.add(title);
    }
  }

  // Fetch uncached in smaller batches for Live TV performance
  if (uncached.isNotEmpty) {
    const chunkSize = 3; // Reduced from 5 for better Live TV performance
    for (var i = 0; i < uncached.length; i += chunkSize) {
      final chunk = uncached.skip(i).take(chunkSize).toList();
      final futures =
          chunk.map((title) => TMDBService.getBestBackdrop(title, year: year));
      final chunkResults = await Future.wait(futures);

      for (var j = 0; j < chunk.length; j++) {
        results[chunk[j]] = chunkResults[j];
      }

      // Shorter delay for Live TV responsiveness
      if (i + chunkSize < uncached.length) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }
  }

  return results;
}

/// Initialize TMDBService (loads disk cache). Call once during app startup.
