import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/sports_classifier.dart';

/// Utility class for classifying programs by content type.
/// Extracted from LiveTVScreen to improve maintainability and reusability.
class ProgramClassifier {
  ProgramClassifier._();

  /// Check if a program is sports-related.
  static bool isSportsProgram(Program program, [Channel? channel]) {
    return SportsClassifier.isSportsProgram(program, channel);
  }

  /// Check if a program is news-related.
  static bool isNewsProgram(Program? program, Channel channel) {
    final title = (program?.title ?? '').toLowerCase();
    final category = (program?.category ?? '').toLowerCase();
    final description = (program?.description ?? '').toLowerCase();
    final channelName = channel.name.toLowerCase();
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();
    
    const keywords = [
      'news',
      'newscast',
      'breaking',
      'headlines',
      'bulletin',
      'update',
      // Common non-English news keywords
      'noticia',
      'noticias',
      'noticiero',
      'jornal',
      'telejornal',
      'journal',
      'journaux',
      'nouvelles',
      'info',
      'infos',
      'notizie',
      'telegiornale',
      'nachrichten',
      'nieuws',
      'nyheter',
      'nyheder',
      'wiadomosci',
      'haber',
    ];

    final titleCategoryDescription = '$title $category $description';
    if (_containsKeywords(titleCategoryDescription, keywords)) {
      return true;
    }

    final channelInfo = '$channelName $groupTitle';
    if ((title.isEmpty || EPGMatchingUtils.isGenericTitle(title)) &&
        _containsKeywords(channelInfo, keywords)) {
      return true;
    }

    return false;
  }

  /// Check if a program is kids/family-related.
  static bool isKidsProgram(Program? program, Channel channel) {
    const keywords = [
      'kids',
      'kid',
      'child',
      'children',
      'family',
      'cartoon',
      'animation',
      'anime',
      'toons',
      'nursery',
      'preschool',
    ];
    return _matchesProgramOrChannel(program, channel, keywords);
  }

  /// Check if a program is music-related.
  static bool isMusicProgram(Program? program, Channel channel) {
    const keywords = [
      'music',
      'concert',
      'festival',
      'hits',
      'chart',
      'mtv',
      'vh1',
      'vevo',
      'radio',
    ];
    return _matchesProgramOrChannel(program, channel, keywords);
  }

  /// Check if a program is a documentary.
  static bool isDocumentaryProgram(Program? program, Channel channel) {
    const keywords = [
      'documentary',
      'docu',
      'history',
      'science',
      'nature',
      'wildlife',
      'biography',
    ];
    return _matchesProgramOrChannel(program, channel, keywords);
  }

  /// Check if a program is weather-related.
  static bool isWeatherProgram(Program? program, Channel channel) {
    const keywords = [
      'weather',
      'forecast',
      'storm',
      'climate',
      'meteor',
      'hurricane',
    ];
    return _matchesProgramOrChannel(program, channel, keywords);
  }

  /// Check if a program is a movie.
  static bool isMovieProgram(Program? program, Channel channel) {
    const keywords = [
      'movie',
      'film',
      'cinema',
      'feature',
    ];
    return _matchesProgramOrChannel(program, channel, keywords);
  }

  // ─────────────────────────────────────────────────────────────────────────
  // HELPERS
  // ─────────────────────────────────────────────────────────────────────────

  static bool _matchesProgramOrChannel(
    Program? program,
    Channel channel,
    List<String> keywords,
  ) {
    final title = (program?.title ?? '').toLowerCase();
    final category = (program?.category ?? '').toLowerCase();
    final description = (program?.description ?? '').toLowerCase();
    final channelName = channel.name.toLowerCase();
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();

    final info = '$title $category $description';
    final channelInfo = '$channelName $groupTitle';
    return _containsKeywords(info, keywords) ||
        _containsKeywords(channelInfo, keywords);
  }

  static bool _containsKeywords(String value, List<String> keywords) {
    for (final keyword in keywords) {
      if (value.contains(keyword)) {
        return true;
      }
    }
    return false;
  }
}
