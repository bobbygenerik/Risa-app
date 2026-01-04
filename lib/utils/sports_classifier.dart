import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';

/// Heuristic helpers to decide whether a playlist item or program is sports content.
class SportsClassifier {
  static const _sportsChannelKeywords = [
    'espn',
    'fox sports',
    'cbs sports',
    'sky sports',
    'beinsports',
    'nbcsn',
    'sportsnet',
    'tsn',
    'motorsport',
    'mlb',
    'nba',
    'nfl',
    'nhl',
    'ufc',
    'bellator',
    'daZN',
    'eurosport',
  ];

  static const _sportsCategoryKeywords = [
    'sports',
    'sport',
    'fútbol',
    'football',
    'soccer',
    'basketball',
    'baseball',
    'hockey',
    'motorsport',
    'mma',
    'boxing',
    'golf',
    'tennis',
    'rugby',
    'cricket',
    'regatta',
  ];

  static const _sportsTitleKeywords = [
    'vs',
    'versus',
    '@',
    'championship',
    'final',
    'playoff',
    'match',
    'cup',
    'series',
    'derby',
    'clincher',
    'pole position',
    'grand prix',
  ];

  /// Determines if a channel is clearly a sports outlet.
  static bool isSportsChannel(Channel channel) {
    final combined = <String?>[
      channel.name,
      channel.groupTitle,
      channel.tvgId,
    ]
        .where((value) => value?.isNotEmpty == true)
        .map((value) => value!.toLowerCase())
        .join(' ');
    return _matchesKeywordList(combined, _sportsChannelKeywords);
  }

  /// Determines if the current program represents sports.
  static bool isSportsProgram(Program? program, Channel? channel) {
    if (program == null) return false;

    final title = program.title.toLowerCase();
    if (_matchesKeywordList(title, _sportsTitleKeywords)) {
      return true;
    }

    final category = (program.category ?? '').toLowerCase();
    if (_matchesKeywordList(category, _sportsCategoryKeywords)) {
      return true;
    }

    if (isSportsChannel(channel ?? Channel(id: '', name: '', url: ''))) {
      return true;
    }

    return false;
  }

  static bool _matchesKeywordList(String value, Iterable<String> keywords) {
    for (final keyword in keywords) {
      if (keyword.isEmpty) continue;
      if (value.contains(keyword.toLowerCase())) {
        return true;
      }
    }
    return false;
  }
}
