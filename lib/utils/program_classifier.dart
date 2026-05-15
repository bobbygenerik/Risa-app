import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/sports_classifier.dart';

/// Utility class for classifying programs by content type.
/// Extracted from LiveTVScreen to improve maintainability and reusability.
class ProgramClassifier {
  ProgramClassifier._();

  static final RegExp _newsKeywords = RegExp(
    r'\b(news|newscast|breaking|headlines|bulletin|update|noticia|noticias|noticiero|jornal|telejornal|journal|journaux|nouvelles|info|infos|notizie|telegiornale|nachrichten|nieuws|nyheter|nyheder|wiadomosci|haber)\b',
    caseSensitive: false,
  );

  static final RegExp _kidsExcludedShows = RegExp(
    r'(family guy|american dad|south park|the simpsons|simpsons|rick and morty|rick & morty|bobs burgers|bob\x27s burgers|archer|futurama|big mouth|disenchantment|bojack horseman|king of the hill|beavis and butt-head|adult swim)',
    caseSensitive: false,
  );

  static final RegExp _kidsKeywords = RegExp(
    r'\b(kids|kid|child|children|family|cartoon|animation|anime|toons|nursery|preschool|disney|nickelodeon|nick jr|pbs kids)\b',
    caseSensitive: false,
  );

  static final RegExp _musicKeywords = RegExp(
    r'\b(music|concert|festival|hits|chart|mtv|vh1|vevo|radio)\b',
    caseSensitive: false,
  );

  static final RegExp _documentaryKeywords = RegExp(
    r'\b(documentary|docu|history|science|nature|wildlife|biography)\b',
    caseSensitive: false,
  );

  static final RegExp _weatherKeywords = RegExp(
    r'\b(weather|forecast|storm|climate|meteor|hurricane)\b',
    caseSensitive: false,
  );

  static final RegExp _movieKeywords = RegExp(
    r'\b(movie|film|cinema|feature)\b',
    caseSensitive: false,
  );

  static final RegExp _sciFiKeywords = RegExp(
    r'\b(sci-fi|scifi|science fiction|alien|robot|galaxy|star trek|star wars|fantasy|supernatural|dystopia|outer space)\b',
    caseSensitive: false,
  );

  static final RegExp _comedyKeywords = RegExp(
    r'\b(comedy|sitcom|funny|stand-up|standup|humor|humour|comic|laugh|parody|satire)\b',
    caseSensitive: false,
  );

  static final RegExp _dramaKeywords = RegExp(
    r'\b(drama|thriller|crime|mystery|suspense|detective|legal|medical drama|soap|telenovela)\b',
    caseSensitive: false,
  );

  static final RegExp _cookingKeywords = RegExp(
    r'\b(cooking|cook|chef|kitchen|food|recipe|bake|baking|culinary|masterchef|restaurant|gourmet)\b',
    caseSensitive: false,
  );

  static final RegExp _talkShowKeywords = RegExp(
    r'\b(talk show|talkshow|talk-show|interview|late night|late-night|tonight show|morning show|chat show|host|celebrity|guests)\b',
    caseSensitive: false,
  );

  /// Check if a program is sports-related.
  static bool isSportsProgram(Program program, [Channel? channel]) {
    return SportsClassifier.isSportsProgram(program, channel);
  }

  /// Check if a program is news-related.
  static bool isNewsProgram(Program? program, Channel channel) {
    final title = program?.title ?? '';
    final category = program?.category ?? '';
    final description = program?.description ?? '';
    final channelName = channel.name;
    final groupTitle = channel.groupTitle ?? '';
    
    if (_newsKeywords.hasMatch(title) ||
        _newsKeywords.hasMatch(category) ||
        _newsKeywords.hasMatch(description)) {
      return true;
    }

    if ((title.isEmpty || EPGMatchingUtils.isGenericTitle(title)) &&
        (_newsKeywords.hasMatch(channelName) || _newsKeywords.hasMatch(groupTitle))) {
      return true;
    }

    return false;
  }

  /// Check if a program is kids/family-related.
  static bool isKidsProgram(Program? program, Channel channel) {
    final title = program?.title ?? '';
    final channelName = channel.name;

    // Check for excluded adult animated shows
    if (_kidsExcludedShows.hasMatch(title) || _kidsExcludedShows.hasMatch(channelName)) {
      return false;
    }

    return _matchesProgramOrChannel(program, channel, _kidsKeywords);
  }

  /// Check if a program is music-related.
  static bool isMusicProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _musicKeywords);
  }

  /// Check if a program is a documentary.
  static bool isDocumentaryProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _documentaryKeywords);
  }

  /// Check if a program is weather-related.
  static bool isWeatherProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _weatherKeywords);
  }

  /// Check if a program is a movie.
  static bool isMovieProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _movieKeywords);
  }

  /// Check if a program is sci-fi/fantasy-related.
  static bool isSciFiProgram(Program? program, Channel channel) {
    // Exclude weather programs which might mention 'space' in weather context
    if (isWeatherProgram(program, channel)) {
      return false;
    }

    return _matchesProgramOrChannel(program, channel, _sciFiKeywords);
  }

  /// Check if a program is comedy-related.
  static bool isComedyProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _comedyKeywords);
  }

  /// Check if a program is drama-related.
  static bool isDramaProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _dramaKeywords);
  }

  /// Check if a program is cooking/food-related.
  static bool isCookingProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _cookingKeywords);
  }

  /// Check if a program is a talk show.
  static bool isTalkShowProgram(Program? program, Channel channel) {
    return _matchesProgramOrChannel(program, channel, _talkShowKeywords);
  }

  // ─────────────────────────────────────────────────────────────────────────
  // HELPERS
  // ─────────────────────────────────────────────────────────────────────────

  static bool _matchesProgramOrChannel(
    Program? program,
    Channel channel,
    RegExp pattern,
  ) {
    final title = program?.title ?? '';
    final category = program?.category ?? '';
    final description = program?.description ?? '';
    final channelName = channel.name;
    final groupTitle = channel.groupTitle ?? '';

    return pattern.hasMatch(title) ||
        pattern.hasMatch(category) ||
        pattern.hasMatch(description) ||
        pattern.hasMatch(channelName) ||
        pattern.hasMatch(groupTitle);
  }
}
