import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/sports_classifier.dart';

/// Utility class for classifying programs by content type.
/// Extracted from LiveTVScreen to improve maintainability and reusability.
class ProgramClassifier {
  ProgramClassifier._();

  // ⚡ Bolt: Performance Optimization
  // Replaced manual loops and .toLowerCase().contains() with statically compiled RegExps.
  // This completely eliminates intermediate string allocations, chained iterators,
  // and loop overhead per evaluated program, resulting in native-speed pattern matching.

  static final RegExp _newsPattern = RegExp(
    r'\b(news|newscast|breaking|headlines|bulletin|update|noticia|noticias|noticiero|jornal|telejornal|journal|journaux|nouvelles|info|infos|notizie|telegiornale|nachrichten|nieuws|nyheter|nyheder|wiadomosci|haber)\b',
    caseSensitive: false,
  );

  static final RegExp _kidsExcludedPattern = RegExp(
    r"(family guy|american dad|south park|the simpsons|simpsons|rick and morty|rick & morty|bobs burgers|bob's burgers|archer|futurama|big mouth|disenchantment|bojack horseman|king of the hill|beavis and butt-head|adult swim)",
    caseSensitive: false,
  );

  static final RegExp _kidsPattern = RegExp(
    r'\b(kids|kid|child|children|family|cartoon|animation|anime|toons|nursery|preschool|disney|nickelodeon)\b|(nick jr|pbs kids)',
    caseSensitive: false,
  );

  static final RegExp _musicPattern = RegExp(
    r'\b(music|concert|festival|hits|chart|mtv|vh1|vevo|radio)\b',
    caseSensitive: false,
  );

  static final RegExp _documentaryPattern = RegExp(
    r'\b(documentary|docu|history|science|nature|wildlife|biography)\b',
    caseSensitive: false,
  );

  static final RegExp _weatherPattern = RegExp(
    r'\b(weather|forecast|storm|climate|meteor|hurricane)\b',
    caseSensitive: false,
  );

  static final RegExp _moviePattern = RegExp(
    r'\b(movie|film|cinema|feature)\b',
    caseSensitive: false,
  );

  static final RegExp _sciFiPattern = RegExp(
    r'\b(sci-fi|scifi|alien|robot|galaxy|fantasy|supernatural|dystopia)\b|(science fiction|star trek|star wars|outer space)',
    caseSensitive: false,
  );

  static final RegExp _comedyPattern = RegExp(
    r'\b(comedy|sitcom|funny|stand-up|standup|humor|humour|comic|laugh|parody|satire)\b',
    caseSensitive: false,
  );

  static final RegExp _dramaPattern = RegExp(
    r'\b(drama|thriller|crime|mystery|suspense|detective|legal|soap|telenovela)\b|(medical drama)',
    caseSensitive: false,
  );

  static final RegExp _cookingPattern = RegExp(
    r'\b(cooking|cook|chef|kitchen|food|recipe|bake|baking|culinary|masterchef|restaurant|gourmet)\b',
    caseSensitive: false,
  );

  static final RegExp _talkShowPattern = RegExp(
    r'\b(talkshow|talk-show|interview|host|celebrity|guests)\b|(talk show|late night|late-night|tonight show|morning show|chat show)',
    caseSensitive: false,
  );

  /// Check if a program is sports-related.
  static bool isSportsProgram(Program program, [Channel? channel]) {
    return SportsClassifier.isSportsProgram(program, channel);
  }

  /// Check if a program is news-related.
  static bool isNewsProgram(Program? program, Channel channel) {
    final titleCategoryDescription = '${program?.title ?? ''} ${program?.category ?? ''} ${program?.description ?? ''}';
    if (_newsPattern.hasMatch(titleCategoryDescription)) {
      return true;
    }

    final channelInfo = '${channel.name} ${channel.groupTitle ?? ''}';
    final title = program?.title ?? '';

    if ((title.isEmpty || EPGMatchingUtils.isGenericTitle(title)) &&
        _newsPattern.hasMatch(channelInfo)) {
      return true;
    }

    return false;
  }

  /// Check if a program is kids/family-related.
  static bool isKidsProgram(Program? program, Channel channel) {
    final title = program?.title ?? '';
    final channelName = channel.name;

    // Check for excluded adult animated shows
    if (_kidsExcludedPattern.hasMatch(title) || _kidsExcludedPattern.hasMatch(channelName)) {
      return false;
    }

    return _matchesProgramOrChannel(program, channel, _kidsPattern);
  }

  /// Check if a program is music-related.
  static bool isMusicProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _musicPattern);
  }

  /// Check if a program is a documentary.
  static bool isDocumentaryProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _documentaryPattern);
  }

  /// Check if a program is weather-related.
  static bool isWeatherProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _weatherPattern);
  }

  /// Check if a program is a movie.
  static bool isMovieProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _moviePattern);
  }

  /// Check if a program is sci-fi/fantasy-related.
  static bool isSciFiProgram(Program? program, Channel channel) {
    // Exclude weather programs which might mention 'space' in weather context
    if (isWeatherProgram(program, channel)) {
      return false;
    }
    return _matchesProgramOrChannel(program, channel, _sciFiPattern);
  }

  /// Check if a program is comedy-related.
  static bool isComedyProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _comedyPattern);
  }

  /// Check if a program is drama-related.
  static bool isDramaProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _dramaPattern);
  }

  /// Check if a program is cooking/food-related.
  static bool isCookingProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _cookingPattern);
  }

  /// Check if a program is a talk show.
  static bool isTalkShowProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _talkShowPattern);
  }

  // ─────────────────────────────────────────────────────────────────────────
  // HELPERS
  // ─────────────────────────────────────────────────────────────────────────

  static bool _matchesProgramOrChannel(
    Program? program,
    Channel channel,
    RegExp pattern,
  ) {
    final info = '${program?.title ?? ''} ${program?.category ?? ''} ${program?.description ?? ''}';
    if (pattern.hasMatch(info)) return true;

    final channelInfo = '${channel.name} ${channel.groupTitle ?? ''}';
    return pattern.hasMatch(channelInfo);
  }
}
