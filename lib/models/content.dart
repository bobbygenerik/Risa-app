enum ContentType { movie, series }

class Content {
  final String id;
  final String title;
  final ContentType type;
  final String? videoUrl;
  final String? imageUrl;
  final List<String>? genres;
  final int? seasonNumber;
  final int? episodeNumber;
  final DateTime? addedDate;

  Content({
    required this.id,
    required this.title,
    required this.type,
    this.videoUrl,
    this.imageUrl,
    this.genres,
    this.seasonNumber,
    this.episodeNumber,
    this.addedDate,
  });
}
