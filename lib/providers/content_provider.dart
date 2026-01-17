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
  bool _isLoading = false;
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
    await _loadWatchHistory();
    _updateContinueWatching();
  }

  /// Load movies from M3U VOD or Xtream API
  void loadMovies(List<Content> movies) {
    _movies = movies;
    _updateHighlights();
    notifyListeners();
  }

  /// Load series from M3U VOD or Xtream API
  void loadSeries(List<Content> series) {
    _series = series;
    notifyListeners();
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
        final moviesWithProgress = await compute(_parseContentList, moviesJson);

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
        final seriesWithProgress = await compute(_parseContentList, seriesJson);

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

/// Helper function to parse content list in an isolate
List<Content> _parseContentList(String jsonStr) {
  final List<dynamic> list = jsonDecode(jsonStr);
  return list.map((m) => Content.fromMap(m as Map<String, dynamic>)).toList();
}
