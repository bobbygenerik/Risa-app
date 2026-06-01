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
      debugPrint('TMDB miss for "$normalizedTitle", trying heuristics.');
      details ??= await _tmdbTryTeamHeuristic(normalizedTitle, year);
      if (_tmdbHasArtwork(details)) {
        debugPrint(
            'Team heuristic returned artwork for "$normalizedTitle": ${details!['backdrop'] ?? details['poster']}');
      } else {
        debugPrint(
            'Team heuristic failed for "$normalizedTitle", querying OMDb fallback.');
        details ??= await _tryOmdbFallback(normalizedTitle, year);
        if (_tmdbHasArtwork(details)) {
          debugPrint(
              'OMDb fallback returned artwork for "$normalizedTitle": ${details!['backdrop'] ?? details['poster']}');
        } else {
          debugPrint(
              'OMDb fallback returned no artwork for "$normalizedTitle".');
        }
      }
    } else {
      debugPrint(
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

Future<Map<String, dynamic>?> _tmdbResolveBackdrop(
    String normalizedTitle, int? year) async {
  Map<String, dynamic>? details;
  final tvTitle = normalizedTitle.length <= 4
      ? '$normalizedTitle channel'
      : normalizedTitle;
  details = await TMDBService.getTVDetails(tvTitle, year: year);
  details ??= await TMDBService.getMovieDetails(normalizedTitle, year: year);
  return details;
}

Future<Map<String, dynamic>?> _tryOmdbFallback(
    String normalizedTitle, int? year) async {
  final seriesResult =
      await TMDBService._getOMDbDetails(normalizedTitle, year: year, type: 'series');
  if (_tmdbHasArtwork(seriesResult)) return seriesResult;
  final movieResult =
      await TMDBService._getOMDbDetails(normalizedTitle, year: year, type: 'movie');
  if (_tmdbHasArtwork(movieResult)) return movieResult;
  return null;
}

bool _tmdbHasArtwork(Map<String, dynamic>? details) {
  // Only count backdrops — posters are portrait and not used for landscape cards.
  final backdrop = (details?['backdrop'] as String?)?.trim();
  return backdrop?.isNotEmpty == true;
}

String? _tmdbExtractBackdropUrl(Map<String, dynamic>? details) {
  final backdrop = (details?['backdrop'] as String?)?.trim();
  if (backdrop?.isNotEmpty == true) return backdrop;
  // Do NOT fall back to poster — portrait images cause visual corruption
  // on landscape cards and get rejected at render time anyway.
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

  // Fetch uncached in parallel with rate limiting
  if (uncached.isNotEmpty) {
    // Process in chunks of 5 to avoid rate limiting
    const chunkSize = 5;
    for (var i = 0; i < uncached.length; i += chunkSize) {
      final chunk = uncached.skip(i).take(chunkSize).toList();
      final futures =
          chunk.map((title) => TMDBService.getBestBackdrop(title, year: year));
      final chunkResults = await Future.wait(futures);

      for (var j = 0; j < chunk.length; j++) {
        results[chunk[j]] = chunkResults[j];
      }

      // Small delay between chunks to respect rate limits
      if (i + chunkSize < uncached.length) {
        await Future.delayed(const Duration(milliseconds: 200));
      }
    }
  }

  return results;
}
