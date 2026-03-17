import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';

/// Heuristic helpers to decide whether a playlist item or program is sports content.
class SportsClassifier {
  static final RegExp _sportsChannelPattern = RegExp(
    r'(espn|fox sports|cbs sports|sky sports|beinsports|nbcsn|sportsnet|tsn|motorsport|mlb|nba|nfl|nhl|ufc|bellator|dazn|eurosport)',
    caseSensitive: false,
  );

  static final RegExp _sportsCategoryPattern = RegExp(
    r'(sports|sport|fútbol|football|soccer|basketball|baseball|hockey|motorsport|mma|boxing|golf|tennis|rugby|cricket|regatta)',
    caseSensitive: false,
  );

  static final RegExp _sportsTitlePattern = RegExp(
    r'(vs|versus|@|championship|final|playoff|match|cup|series|derby|clincher|pole position|grand prix)',
    caseSensitive: false,
  );

  /// Determines if a channel is clearly a sports outlet.
  static bool isSportsChannel(Channel channel) {
    if (_sportsChannelPattern.hasMatch(channel.name)) return true;

    final groupTitle = channel.groupTitle;
    if (groupTitle != null && groupTitle.isNotEmpty) {
      if (_sportsChannelPattern.hasMatch(groupTitle)) return true;
    }

    final tvgId = channel.tvgId;
    if (tvgId != null && tvgId.isNotEmpty) {
      if (_sportsChannelPattern.hasMatch(tvgId)) return true;
    }

    return false;
  }

  /// Determines if the current program represents sports.
  static bool isSportsProgram(Program? program, Channel? channel) {
    if (program == null) return false;

    if (_sportsTitlePattern.hasMatch(program.title)) {
      return true;
    }

    final category = program.category;
    if (category != null && category.isNotEmpty) {
      if (_sportsCategoryPattern.hasMatch(category)) {
        return true;
      }
    }

    if (channel != null && isSportsChannel(channel)) {
      return true;
    }

    return false;
  }
}
