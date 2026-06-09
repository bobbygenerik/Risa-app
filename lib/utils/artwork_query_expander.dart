import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/program_classifier.dart';
import 'package:iptv_player/utils/sports_classifier.dart';

/// Builds extra TMDB/TVDB/SportsDB query strings from noisy IPTV EPG titles.
class ArtworkQueryExpander {
  ArtworkQueryExpander._();

  static final RegExp _epgBadgeRe = RegExp(
    r'ᴸᶦᵛᵉ|ᴺᵉʷ|\blive\s*$|\breplay\b|\bencore\b',
    caseSensitive: false,
  );
  static final RegExp _atSeparatorRe = RegExp(
    r'\s+at\s+',
    caseSensitive: false,
  );
  static final RegExp _vsSeparatorRe = RegExp(
    r'\s+vs\.?\s+|\s+versus\s+',
    caseSensitive: false,
  );
  static final RegExp _yearPrefixRe = RegExp(r'^\d{4}\s+');
  static final RegExp _leagueEventRe = RegExp(
    r'\b(NBA|NFL|NHL|MLB|MLS|UFC|WWE|F1|NASCAR|Premier League|Champions League)\b'
    r'[^:]*\b(Finals?|Championship|Bowl|Cup|Series|Playoffs?)\b',
    caseSensitive: false,
  );
  static final RegExp _noGameRe = RegExp(
    r'\bno\s+game\b|\boff\s+air\b|\bto\s+be\s+announced\b|\btba\b',
    caseSensitive: false,
  );

  /// Extra lookup strings to append (caller dedupes).
  static List<String> expand(Program program, Channel? channel) {
    final raw = program.title.trim();
    if (raw.isEmpty || _noGameRe.hasMatch(raw)) return const [];

    final out = <String>[];
    void add(String value) {
      final trimmed = value.trim();
      if (trimmed.length < 2) return;
      if (!out.contains(trimmed)) out.add(trimmed);
    }

    final stripped = _stripBroadcastBadges(raw);
    if (stripped != raw) add(stripped);

    final isSports = SportsClassifier.isSportsProgram(program, channel);
    final isLive = isLiveBroadcastTitle(raw);

    if (isSports || isLive) {
      _addSportsQueries(out, stripped);
      _addSportsQueries(out, raw);
    }

    if (channel != null &&
        ProgramClassifier.isNewsProgram(program, channel)) {
      _addNewsQueries(out, stripped, channel);
    }

    for (final segment in stripped.split(':')) {
      final part = segment.trim();
      if (part.length >= 4) add(part);
    }

    return out;
  }

  static bool isLiveBroadcastTitle(String title) {
    if (_epgBadgeRe.hasMatch(title)) return true;
    if (_atSeparatorRe.hasMatch(title)) return true;
    return RegExp(r'\blive\b', caseSensitive: false).hasMatch(title);
  }

  /// Strip IPTV EPG badges (ᴸᶦᵛᵉ, ᴺᵉʷ, trailing LIVE, etc.) for on-screen titles.
  static String stripDisplayBadges(String title) {
    var s = _stripBroadcastBadges(title);
    s = s.replaceAll(
      RegExp(r'\s+\bnew\b\s*$', caseSensitive: false),
      '',
    );
    return s.trim();
  }

  static String _stripBroadcastBadges(String title) {
    var s = title.replaceAll(_epgBadgeRe, '');
    s = s.replaceAll(_yearPrefixRe, '');
    return s.replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  static void _addSportsQueries(List<String> out, String title) {
    void add(String value) {
      final trimmed = value.trim();
      if (trimmed.length < 2) return;
      if (!out.contains(trimmed)) out.add(trimmed);
    }

    final league = _leagueEventRe.firstMatch(title)?.group(0)?.trim();
    if (league != null && league.isNotEmpty) add(league);

    var matchup = title;
    final colon = matchup.lastIndexOf(':');
    if (colon >= 0 && colon < matchup.length - 1) {
      matchup = matchup.substring(colon + 1).trim();
    }

    final lower = matchup.toLowerCase();
    final atIdx = lower.lastIndexOf(' at ');
    if (atIdx > 0) {
      final away = matchup.substring(0, atIdx).trim();
      final home = matchup.substring(atIdx + 4).trim();
      if (away.isNotEmpty) add(away);
      if (home.isNotEmpty) add(home);
      add('$away vs $home');
      return;
    }

    final vsParts = matchup.split(_vsSeparatorRe);
    if (vsParts.length == 2) {
      add(vsParts[0].trim());
      add(vsParts[1].trim());
    }
  }

  static void _addNewsQueries(
    List<String> out,
    String title,
    Channel channel,
  ) {
    void add(String value) {
      final trimmed = value.trim();
      if (trimmed.length < 2) return;
      if (!out.contains(trimmed)) out.add(trimmed);
    }

    final channelName = channel.name.trim();
    final group = (channel.groupTitle ?? '').trim();
    if (channelName.isNotEmpty) {
      add(channelName);
      if (title.isNotEmpty) add('$channelName $title');
    }
    if (group.isNotEmpty) {
      add(group);
      if (title.isNotEmpty) add('$group $title');
    }
    final canonical = EPGMatchingUtils.normalizeForArtwork(title);
    if (EPGMatchingUtils.isGenericTitle(canonical) ||
        EPGMatchingUtils.isLikelyNewsTitle(canonical)) {
      if (channelName.isNotEmpty) add(channelName);
    }
  }
}
