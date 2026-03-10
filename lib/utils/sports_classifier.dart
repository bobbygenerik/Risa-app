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
    'dazn',
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
    // Check directly instead of mapping and joining an array to avoid allocations
    final name = channel.name.toLowerCase();
    if (_matchesKeywordList(name, _sportsChannelKeywords)) return true;

    final groupTitle = channel.groupTitle?.toLowerCase();
    if (groupTitle != null && groupTitle.isNotEmpty) {
      if (_matchesKeywordList(groupTitle, _sportsChannelKeywords)) return true;
    }

    final tvgId = channel.tvgId?.toLowerCase();
    if (tvgId != null && tvgId.isNotEmpty) {
      if (_matchesKeywordList(tvgId, _sportsChannelKeywords)) return true;
    }

    return false;
  }

  /// Determines if the current program represents sports.
  static bool isSportsProgram(Program? program, Channel? channel) {
    if (program == null) return false;

    final title = program.title.toLowerCase();
    if (_matchesKeywordList(title, _sportsTitleKeywords)) {
      return true;
    }

    final category = program.category?.toLowerCase();
    if (category != null && category.isNotEmpty) {
      if (_matchesKeywordList(category, _sportsCategoryKeywords)) {
        return true;
      }
    }

    if (channel != null && isSportsChannel(channel)) {
      return true;
    }

    return false;
  }

  static bool _matchesKeywordList(String value, List<String> keywords) {
    // Manual loop avoids iterator allocation
    for (int i = 0; i < keywords.length; i++) {
      if (keywords[i].isEmpty) continue;
      // Keywords are already lowercased in the constant lists
      if (value.contains(keywords[i])) {
        return true;
      }
    }
    return false;
  }
}
