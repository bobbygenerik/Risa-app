part of '../live_tv_artwork_service.dart';

extension LiveTvArtworkServiceClassify on LiveTvArtworkService {
  bool _isSportsProgram(Program program, [Channel? channel]) {
    return SportsClassifier.isSportsProgram(program, channel);
  }

  bool _isNewsProgram(Program program, Channel channel) {
    // Basic news detection - can be extended
    final title = program.title.toLowerCase();
    final channelName = channel.name.toLowerCase();
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();

    const newsKeywords = [
      'news',
      'noticias',
      'actualités',
      'nachrichten',
      'journal',
      'headlines',
      'breaking',
    ];

    for (final keyword in newsKeywords) {
      if (title.contains(keyword) ||
          channelName.contains(keyword) ||
          groupTitle.contains(keyword)) {
        return true;
      }
    }
    return false;
  }

  static final RegExp _yearTrailingRe = RegExp(r'\(\d{4}\)$');

  bool _isMovieProgram(Program program, Channel channel) {
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();

    const movieKeywords = ['movie', 'film', 'cinema', 'película', 'filme'];

    for (final keyword in movieKeywords) {
      if (groupTitle.contains(keyword)) {
        return true;
      }
    }

    // Check for movie-like patterns (year in title, etc.)
    if (_yearTrailingRe.hasMatch(program.title)) {
      return true;
    }

    return false;
  }

  void _logArtworkDecision(String message) {
    if (!LiveTvArtworkService._logArtworkMatches) return;
    ArtworkDiagnostics.record(message);
    debugLog(message);
  }
}
