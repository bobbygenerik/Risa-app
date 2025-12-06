enum ContentType { movie, series, liveTV, recording }

class Content {
  final String id;
  final String title;
  final String? description;
  final ContentType type;
  final String? imageUrl;
  final String? backdropUrl;
  final String? logoUrl;
  final int? year;
  final double? rating;
  final String? duration;
  final List<String>? genres; // From M3U group-title (fallback)
  final List<String>? tmdbGenres; // From TMDB API (preferred)
  final List<String>? cast;
  final String? director;
  final String? videoUrl;
  final int? seasonNumber;
  final int? episodeNumber;
  final double? watchProgress; // 0.0 to 1.0
  final bool? isFavorite;
  final DateTime? addedDate;
  final DateTime? lastWatchedDate;

  Content({
    required this.id,
    required this.title,
    this.description,
    required this.type,
    this.imageUrl,
    this.backdropUrl,
    this.logoUrl,
    this.year,
    this.rating,
    this.duration,
    this.genres,
    this.tmdbGenres,
    this.cast,
    this.director,
    this.videoUrl,
    this.seasonNumber,
    this.episodeNumber,
    this.watchProgress,
    this.isFavorite,
    this.addedDate,
    this.lastWatchedDate,
  });

  bool get isContinueWatching =>
      watchProgress != null && watchProgress! > 0.0 && watchProgress! < 0.95;

  String get displayTitle {
    if (type == ContentType.series &&
        seasonNumber != null &&
        episodeNumber != null) {
  return '$title - S${seasonNumber}E$episodeNumber';
    }
    return title;
  }

  String? get genre {
    // Prefer TMDB genres, fallback to M3U genres
    final genreList = tmdbGenres ?? genres;
    return genreList?.isNotEmpty == true ? genreList?.first : null;
  }
  
  // Get all genres (TMDB preferred, M3U fallback)
  List<String> get allGenres => tmdbGenres ?? genres ?? [];

  String get ratingDisplay =>
      rating != null ? rating!.toStringAsFixed(1) : 'N/A';

  factory Content.fromMap(Map<String, dynamic> map) {
    return Content(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'],
      type: ContentType.values.firstWhere(
        (e) => e.name == map['type'],
        orElse: () => ContentType.movie,
      ),
      imageUrl: map['imageUrl'],
      backdropUrl: map['backdropUrl'],
      logoUrl: map['logoUrl'],
      year: map['year'],
      rating: map['rating']?.toDouble(),
      duration: map['duration'],
      genres: map['genres'] != null ? List<String>.from(map['genres']) : null,
      tmdbGenres: map['tmdbGenres'] != null ? List<String>.from(map['tmdbGenres']) : null,
      cast: map['cast'] != null ? List<String>.from(map['cast']) : null,
      director: map['director'],
      videoUrl: map['videoUrl'],
      seasonNumber: map['seasonNumber'],
      episodeNumber: map['episodeNumber'],
      watchProgress: map['watchProgress']?.toDouble(),
      isFavorite: map['isFavorite'],
      addedDate: map['addedDate'] != null
          ? DateTime.parse(map['addedDate'])
          : null,
      lastWatchedDate: map['lastWatchedDate'] != null
          ? DateTime.parse(map['lastWatchedDate'])
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'type': type.name,
      'imageUrl': imageUrl,
      'backdropUrl': backdropUrl,
      'logoUrl': logoUrl,
      'year': year,
      'rating': rating,
      'duration': duration,
      'genres': genres,
      'tmdbGenres': tmdbGenres,
      'cast': cast,
      'director': director,
      'videoUrl': videoUrl,
      'seasonNumber': seasonNumber,
      'episodeNumber': episodeNumber,
      'watchProgress': watchProgress,
      'isFavorite': isFavorite,
      'addedDate': addedDate?.toIso8601String(),
      'lastWatchedDate': lastWatchedDate?.toIso8601String(),
    };
  }

  Content copyWith({
    String? id,
    String? title,
    String? description,
    ContentType? type,
    String? imageUrl,
    String? backdropUrl,
    String? logoUrl,
    int? year,
    double? rating,
    String? duration,
    List<String>? genres,
    List<String>? tmdbGenres,
    List<String>? cast,
    String? director,
    String? videoUrl,
    int? seasonNumber,
    int? episodeNumber,
    double? watchProgress,
    bool? isFavorite,
    DateTime? addedDate,
    DateTime? lastWatchedDate,
  }) {
    return Content(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      imageUrl: imageUrl ?? this.imageUrl,
      backdropUrl: backdropUrl ?? this.backdropUrl,
      logoUrl: logoUrl ?? this.logoUrl,
      year: year ?? this.year,
      rating: rating ?? this.rating,
      duration: duration ?? this.duration,
      genres: genres ?? this.genres,
      tmdbGenres: tmdbGenres ?? this.tmdbGenres,
      cast: cast ?? this.cast,
      director: director ?? this.director,
      videoUrl: videoUrl ?? this.videoUrl,
      seasonNumber: seasonNumber ?? this.seasonNumber,
      episodeNumber: episodeNumber ?? this.episodeNumber,
      watchProgress: watchProgress ?? this.watchProgress,
      isFavorite: isFavorite ?? this.isFavorite,
      addedDate: addedDate ?? this.addedDate,
      lastWatchedDate: lastWatchedDate ?? this.lastWatchedDate,
    );
  }
}
