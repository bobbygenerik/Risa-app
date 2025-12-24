import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'package:iptv_player/models/content.dart';
import 'package:iptv_player/services/tmdb_service.dart';

/// Background service to enrich VOD content with TMDB genres
/// Respects TMDB API rate limits (40 req/10s) and runs in background
class TMDBEnrichmentService {
  static const int _batchSize = 30; // Process 30 items at a time
  static const Duration _batchDelay = Duration(seconds: 12); // ~2.5 req/s

  bool _isEnriching = false;
  int _totalItems = 0;
  int _processedItems = 0;

  /// Enrichment progress (0.0 to 1.0)
  double get progress => _totalItems > 0 ? _processedItems / _totalItems : 0.0;

  bool get isEnriching => _isEnriching;

  /// Enrich a list of content with TMDB genres in background
  /// Returns enriched content with tmdbGenres populated
  /// Notifies onProgress callback with (current, total) for UI updates
  Future<List<Content>> enrichContent(
    List<Content> content, {
    Function(int current, int total)? onProgress,
    bool onlyMissing = true, // Only enrich items without tmdbGenres
  }) async {
    if (_isEnriching) {
      debugLog('TMDBEnrichment: Already enriching, skipping');
      return content;
    }

    _isEnriching = true;
    _processedItems = 0;

    // Filter to items that need enrichment
    final toEnrich = onlyMissing
        ? content
            .where((c) => c.tmdbGenres == null || c.tmdbGenres!.isEmpty)
            .toList()
        : content;

    _totalItems = toEnrich.length;

    if (_totalItems == 0) {
      debugLog('TMDBEnrichment: No items to enrich');
      _isEnriching = false;
      return content;
    }

    debugLog('TMDBEnrichment: Starting enrichment of $_totalItems items');

    // Create a map for quick lookup by ID
    final Map<String, Content> enrichedMap = {for (var c in content) c.id: c};

    try {
      // Process in batches to respect rate limits
      for (int i = 0; i < toEnrich.length; i += _batchSize) {
        final batch = toEnrich.skip(i).take(_batchSize).toList();

        // Process batch in parallel (within rate limit)
        await Future.wait(
          batch.map((item) => _enrichSingleItem(item, enrichedMap)),
        );

        _processedItems += batch.length;
        onProgress?.call(_processedItems, _totalItems);

        debugLog('TMDBEnrichment: Progress $_processedItems/$_totalItems');

        // Delay between batches to respect rate limits
        if (i + _batchSize < toEnrich.length) {
          await Future.delayed(_batchDelay);
        }
      }

      debugLog('TMDBEnrichment: Completed enrichment of $_totalItems items');
    } catch (e) {
      debugLog('TMDBEnrichment: Error during enrichment: $e');
    } finally {
      _isEnriching = false;
    }

    return enrichedMap.values.toList();
  }

  /// Enrich a single item with TMDB data
  Future<void> _enrichSingleItem(
    Content item,
    Map<String, Content> enrichedMap,
  ) async {
    try {
      Map<String, dynamic>? details;

      // Get TMDB details based on content type
      if (item.type == ContentType.movie) {
        details =
            await TMDBService.getMovieDetails(item.title, year: item.year);
      } else if (item.type == ContentType.series) {
        details = await TMDBService.getTVDetails(item.title, year: item.year);
      }

      if (details != null && details['genres'] != null) {
        final tmdbGenres = details['genres'] as List<String>;

        // Update the content with TMDB genres (preserve other fields)
        enrichedMap[item.id] = item.copyWith(
          tmdbGenres: tmdbGenres.isNotEmpty ? tmdbGenres : null,
          // Also update other fields if missing
          rating: item.rating ?? details['rating'],
          description: item.description ?? details['overview'],
          imageUrl: item.imageUrl ?? details['poster'],
          backdropUrl: item.backdropUrl ?? details['backdrop'],
        );

        debugLog(
            'TMDBEnrichment: Enriched "${item.title}" with genres: ${tmdbGenres.join(", ")}');
      } else {
        debugLog('TMDBEnrichment: No TMDB data found for "${item.title}"');
      }
    } catch (e) {
      debugLog('TMDBEnrichment: Error enriching "${item.title}": $e');
      // Continue with next item on error
    }
  }

  /// Cancel ongoing enrichment
  void cancel() {
    if (_isEnriching) {
      debugLog('TMDBEnrichment: Cancelling enrichment');
      _isEnriching = false;
    }
  }
}
