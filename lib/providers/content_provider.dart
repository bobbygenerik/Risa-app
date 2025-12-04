import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/content.dart';

/// Manages VOD content (movies, series), watch history, and continue watching
class ContentProvider with ChangeNotifier {
  List<Content> _movies = [];
  List<Content> _series = [];
  List<Content> _continueWatching = [];
  List<Content> _highlights = [];
  final bool _isLoading = false;
  String? _errorMessage;

  List<Content> get movies => _movies;
  List<Content> get series => _series;
  List<Content> get continueWatching => _continueWatching;
  List<Content> get highlights => _highlights;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  // Get recently added series (last 30 days)
  List<Content> get recentlyAddedSeries {
    final thirtyDaysAgo = DateTime.now().subtract(const Duration(days: 30));
    return _series
        .where(
          (s) => s.addedDate != null && s.addedDate!.isAfter(thirtyDaysAgo),
        )
        .toList()
      ..sort((a, b) => b.addedDate!.compareTo(a.addedDate!));
  }

  // Get recently added movies
  List<Content> get recentlyAddedMovies {
    final thirtyDaysAgo = DateTime.now().subtract(const Duration(days: 30));
    return _movies
        .where(
          (m) => m.addedDate != null && m.addedDate!.isAfter(thirtyDaysAgo),
        )
        .toList()
      ..sort((a, b) => b.addedDate!.compareTo(a.addedDate!));
  }

  /// Initialize and load saved watch history
  Future<void> initialize() async {
    // Load cached movies/series with TMDB metadata first
    final cachedMovies = await loadMoviesCache();
    final cachedSeries = await loadSeriesCache();
    
    if (cachedMovies.isNotEmpty) {
      _movies = cachedMovies;
      debugPrint('ContentProvider: Loaded ${cachedMovies.length} cached movies with metadata');
    }
    
    if (cachedSeries.isNotEmpty) {
      _series = cachedSeries;
      debugPrint('ContentProvider: Loaded ${cachedSeries.length} cached series with metadata');
    }
    
    await _loadWatchHistory();
    _updateContinueWatching();
  }

  /// Load movies from M3U VOD or Xtream API
  void loadMovies(List<Content> movies) {
    // Merge with cached movies to preserve TMDB metadata (genres, ratings, etc.)
    final mergedMovies = movies.map((newMovie) {
      // Find matching cached movie by ID
      final cached = _movies.firstWhere(
        (m) => m.id == newMovie.id,
        orElse: () => newMovie,
      );
      
      // If cached movie has more metadata, use it
      if (cached.id == newMovie.id && (cached.genres != null || cached.rating != null)) {
        return cached.copyWith(
          // Update fields that might change from M3U
          title: newMovie.title,
          videoUrl: newMovie.videoUrl,
          imageUrl: newMovie.imageUrl ?? cached.imageUrl,
        );
      }
      return newMovie;
    }).toList();
    
    _movies = mergedMovies;
    _updateHighlights();
    notifyListeners();
    // Save to cache for persistence
    _saveMoviesCache();
  }

  /// Load series from M3U VOD or Xtream API
  void loadSeries(List<Content> series) {
    // Merge with cached series to preserve TMDB metadata (genres, ratings, etc.)
    final mergedSeries = series.map((newSeries) {
      // Find matching cached series by ID
      final cached = _series.firstWhere(
        (s) => s.id == newSeries.id,
        orElse: () => newSeries,
      );
      
      // If cached series has more metadata, use it
      if (cached.id == newSeries.id && (cached.genres != null || cached.rating != null)) {
        return cached.copyWith(
          // Update fields that might change from M3U
          title: newSeries.title,
          videoUrl: newSeries.videoUrl,
          imageUrl: newSeries.imageUrl ?? cached.imageUrl,
        );
      }
      return newSeries;
    }).toList();
    
    _series = mergedSeries;
    notifyListeners();
    // Save to cache for persistence
    _saveSeriesCache();
  }

  /// Update watch progress for content
  Future<void> updateWatchProgress(String contentId, double progress) async {
    // Find content in movies or series
    Content? content;
    int movieIndex = _movies.indexWhere((m) => m.id == contentId);
    int seriesIndex = _series.indexWhere((s) => s.id == contentId);

    if (movieIndex != -1) {
      content = _movies[movieIndex];
      _movies[movieIndex] = content.copyWith(
        watchProgress: progress,
        lastWatchedDate: DateTime.now(),
      );
    } else if (seriesIndex != -1) {
      content = _series[seriesIndex];
      _series[seriesIndex] = content.copyWith(
        watchProgress: progress,
        lastWatchedDate: DateTime.now(),
      );
    }

    if (content != null) {
      await _saveWatchHistory();
      _updateContinueWatching();
      notifyListeners();
    }
  }

  /// Toggle favorite status
  Future<void> toggleFavorite(String contentId) async {
    int movieIndex = _movies.indexWhere((m) => m.id == contentId);
    int seriesIndex = _series.indexWhere((s) => s.id == contentId);

    if (movieIndex != -1) {
      final movie = _movies[movieIndex];
      _movies[movieIndex] = movie.copyWith(
        isFavorite: !(movie.isFavorite ?? false),
      );
    } else if (seriesIndex != -1) {
      final series = _series[seriesIndex];
      _series[seriesIndex] = series.copyWith(
        isFavorite: !(series.isFavorite ?? false),
      );
    }

    await _saveWatchHistory();
    notifyListeners();
  }

  /// Get content by ID (returns null if not found)
  Content? getContentById(String contentId) {
    final movieIndex = _movies.indexWhere((m) => m.id == contentId);
    if (movieIndex != -1) return _movies[movieIndex];
    
    final seriesIndex = _series.indexWhere((s) => s.id == contentId);
    if (seriesIndex != -1) return _series[seriesIndex];
    
    return null;
  }

  /// Check if content is in favorites
  bool isInFavorites(String contentId) {
    final content = getContentById(contentId);
    return content?.isFavorite ?? false;
  }

  /// Get favorite content
  List<Content> get favoriteContent {
    final favoriteMovies = _movies.where((m) => m.isFavorite == true).toList();
    final favoriteSeries = _series.where((s) => s.isFavorite == true).toList();
    return [...favoriteMovies, ...favoriteSeries];
  }

  /// Search content
  List<Content> searchContent(String query) {
    if (query.isEmpty) return [];

    final lowerQuery = query.toLowerCase();
    final allContent = [..._movies, ..._series];

    return allContent.where((content) {
      return content.title.toLowerCase().contains(lowerQuery) ||
          (content.description?.toLowerCase().contains(lowerQuery) ?? false) ||
          (content.genres?.any((g) => g.toLowerCase().contains(lowerQuery)) ??
              false);
    }).toList();
  }

  /// Filter content by genre
  List<Content> filterByGenre(String genre) {
    final allContent = [..._movies, ..._series];
    return allContent.where((c) => c.genres?.contains(genre) ?? false).toList();
  }

  /// Update continue watching list
  void _updateContinueWatching() {
    final allContent = [..._movies, ..._series];
    _continueWatching = allContent.where((c) => c.isContinueWatching).toList()
      ..sort((a, b) {
        final aDate = a.lastWatchedDate ?? DateTime(2000);
        final bDate = b.lastWatchedDate ?? DateTime(2000);
        return bDate.compareTo(aDate);
      });
  }

  /// Update highlights (top rated or featured content)
  void _updateHighlights() {
    // Get top rated movies and series
    final topMovies = [..._movies]
      ..sort((a, b) => (b.rating ?? 0).compareTo(a.rating ?? 0));
    final topSeries = [..._series]
      ..sort((a, b) => (b.rating ?? 0).compareTo(a.rating ?? 0));

    _highlights = [...topMovies.take(5), ...topSeries.take(5)];
  }

  /// Save all movies to cache (including TMDB metadata like genres)
  Future<void> _saveMoviesCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final moviesList = _movies.map((m) => m.toMap()).toList();
      await prefs.setString('movies_cache', jsonEncode(moviesList));
    } catch (e) {
      debugPrint('Error saving movies cache: $e');
    }
  }

  /// Save all series to cache (including TMDB metadata like genres)
  Future<void> _saveSeriesCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final seriesList = _series.map((s) => s.toMap()).toList();
      await prefs.setString('series_cache', jsonEncode(seriesList));
    } catch (e) {
      debugPrint('Error saving series cache: $e');
    }
  }

  /// Load movies from cache (restores TMDB metadata including genres)
  Future<List<Content>> loadMoviesCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final moviesJson = prefs.getString('movies_cache');
      if (moviesJson != null) {
        final List<dynamic> moviesList = jsonDecode(moviesJson);
        return moviesList
            .map((m) => Content.fromMap(m as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      debugPrint('Error loading movies cache: $e');
    }
    return [];
  }

  /// Load series from cache (restores TMDB metadata including genres)
  Future<List<Content>> loadSeriesCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final seriesJson = prefs.getString('series_cache');
      if (seriesJson != null) {
        final List<dynamic> seriesList = jsonDecode(seriesJson);
        return seriesList
            .map((s) => Content.fromMap(s as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      debugPrint('Error loading series cache: $e');
    }
    return [];
  }

  /// Save watch history to SharedPreferences
  Future<void> _saveWatchHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      // Save movies with watch progress
      final moviesWithProgress = _movies
          .where((m) => m.watchProgress != null || m.isFavorite == true)
          .map((m) => m.toMap())
          .toList();
      await prefs.setString('movies_history', jsonEncode(moviesWithProgress));

      // Save series with watch progress
      final seriesWithProgress = _series
          .where((s) => s.watchProgress != null || s.isFavorite == true)
          .map((s) => s.toMap())
          .toList();
      await prefs.setString('series_history', jsonEncode(seriesWithProgress));
    } catch (e) {
      debugPrint('Error saving watch history: $e');
    }
  }

  /// Load watch history from SharedPreferences
  Future<void> _loadWatchHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      // Load movies history
      final moviesJson = prefs.getString('movies_history');
      if (moviesJson != null) {
        final List<dynamic> moviesList = jsonDecode(moviesJson);
        final moviesWithProgress = moviesList
            .map((m) => Content.fromMap(m as Map<String, dynamic>))
            .toList();

        // Merge with existing movies
        for (final savedMovie in moviesWithProgress) {
          final index = _movies.indexWhere((m) => m.id == savedMovie.id);
          if (index != -1) {
            _movies[index] = _movies[index].copyWith(
              watchProgress: savedMovie.watchProgress,
              lastWatchedDate: savedMovie.lastWatchedDate,
              isFavorite: savedMovie.isFavorite,
            );
          }
        }
      }

      // Load series history
      final seriesJson = prefs.getString('series_history');
      if (seriesJson != null) {
        final List<dynamic> seriesList = jsonDecode(seriesJson);
        final seriesWithProgress = seriesList
            .map((s) => Content.fromMap(s as Map<String, dynamic>))
            .toList();

        // Merge with existing series
        for (final savedSeries in seriesWithProgress) {
          final index = _series.indexWhere((s) => s.id == savedSeries.id);
          if (index != -1) {
            _series[index] = _series[index].copyWith(
              watchProgress: savedSeries.watchProgress,
              lastWatchedDate: savedSeries.lastWatchedDate,
              isFavorite: savedSeries.isFavorite,
            );
          }
        }
      }
    } catch (e) {
      debugPrint('Error loading watch history: $e');
    }
  }

  /// Clear all content
  void clear() {
    _movies.clear();
    _series.clear();
    _continueWatching.clear();
    _highlights.clear();
    notifyListeners();
  }
}
