import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/sports_classifier.dart';

/// Utility class for classifying programs by content type.
/// Extracted from LiveTVScreen to improve maintainability and reusability.
class ProgramClassifier {
  ProgramClassifier._();

  // Cache compiled regular expressions to avoid heavy RegExp instantiation in hot paths
  static final Map<String, RegExp> _regexCache = {};

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
    // Explicit exclusions for adult animated shows that contain 'family' or
    // 'animation' but are NOT kids-appropriate
    const excludedShows = [
      'family guy',
      'american dad',
      'south park',
      'the simpsons',
      'simpsons',
      'rick and morty',
      'rick & morty',
      'bobs burgers',
      "bob's burgers",
      'archer',
      'futurama',
      'big mouth',
      'disenchantment',
      'bojack horseman',
      'king of the hill',
      'beavis and butt-head',
      'adult swim',
    ];

    final title = (program?.title ?? '').toLowerCase();
    final channelName = channel.name.toLowerCase();

    // Check for excluded adult animated shows
    for (final excluded in excludedShows) {
      if (title.contains(excluded) || channelName.contains(excluded)) {
        return false;
      }
    }

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
      'disney',
      'nickelodeon',
      'nick jr',
      'pbs kids',
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

  /// Check if a program is sci-fi/fantasy-related.
  static bool isSciFiProgram(Program? program, Channel channel) {
    // Exclude weather programs which might mention 'space' in weather context
    if (isWeatherProgram(program, channel)) {
      return false;
    }

    const keywords = [
      'sci-fi',
      'scifi',
      'science fiction',
      'alien',
      'robot',
      'galaxy',
      'star trek',
      'star wars',
      'fantasy',
      'supernatural',
      'dystopia',
      'outer space',
    ];
    return _matchesProgramOrChannel(program, channel, keywords);
  }

  /// Check if a program is comedy-related.
  static bool isComedyProgram(Program? program, Channel channel) {
    const keywords = [
      'comedy',
      'sitcom',
      'funny',
      'stand-up',
      'standup',
      'humor',
      'humour',
      'comic',
      'laugh',
      'parody',
      'satire',
    ];
    return _matchesProgramOrChannel(program, channel, keywords);
  }

  /// Check if a program is drama-related.
  static bool isDramaProgram(Program? program, Channel channel) {
    const keywords = [
      'drama',
      'thriller',
      'crime',
      'mystery',
      'suspense',
      'detective',
      'legal',
      'medical drama',
      'soap',
      'telenovela',
    ];
    return _matchesProgramOrChannel(program, channel, keywords);
  }

  /// Check if a program is cooking/food-related.
  static bool isCookingProgram(Program? program, Channel channel) {
    const keywords = [
      'cooking',
      'cook',
      'chef',
      'kitchen',
      'food',
      'recipe',
      'bake',
      'baking',
      'culinary',
      'masterchef',
      'restaurant',
      'gourmet',
    ];
    return _matchesProgramOrChannel(program, channel, keywords);
  }

  /// Check if a program is a talk show.
  static bool isTalkShowProgram(Program? program, Channel channel) {
    const keywords = [
      'talk show',
      'talkshow',
      'talk-show',
      'interview',
      'late night',
      'late-night',
      'tonight show',
      'morning show',
      'chat show',
      'host',
      'celebrity',
      'guests',
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
    // Use word boundary matching to avoid false positives like
    // 'cook' matching 'cookbook' or 'family' matching 'Family Guy'
    for (final keyword in keywords) {
      // For multi-word keywords, just use contains
      if (keyword.contains(' ') || keyword.contains('-')) {
        if (value.contains(keyword)) {
          return true;
        }
      } else {
        // For single words, use word boundary regex
        // \b matches word boundaries (space, punctuation, start/end of string)
        var pattern = _regexCache[keyword];
        if (pattern == null) {
          pattern = RegExp(r'\b' + RegExp.escape(keyword) + r'\b');
          _regexCache[keyword] = pattern;
        }
        if (pattern.hasMatch(value)) {
          return true;
        }
      }
    }
    return false;
  }
}
