import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/artwork_query_expander.dart';

/// Detects vague EPG titles ("Star Trek") and resolves display/artwork hints.
class EpgTitleDisambiguation {
  EpgTitleDisambiguation._();

  static final RegExp _seasonEpisodeRe = RegExp(
    r'\bs\d{1,2}e\d{1,2}\b',
    caseSensitive: false,
  );
  static final RegExp _yearInTitleRe = RegExp(r'\(\d{4}\)');

  /// True when the EPG title alone is not specific enough to pick one work.
  static bool isUnderSpecified(String title) {
    final t = ArtworkQueryExpander.stripDisplayBadges(title).trim();
    if (t.isEmpty) return true;
    if (_seasonEpisodeRe.hasMatch(t)) return false;
    if (_yearInTitleRe.hasMatch(t)) return false;

    final dashIdx = t.indexOf(' - ');
    if (dashIdx > 0 && t.substring(dashIdx + 3).trim().length >= 6) {
      return false;
    }

    final colonIdx = t.indexOf(':');
    if (colonIdx > 0) {
      final after = t.substring(colonIdx + 1).trim();
      if (after.length >= 6) return false;
    }

    return true;
  }

  /// Slot length heuristic: ~1h → episode, ~2h+ → movie.
  static EpgSlotMediaKind mediaKind(Program program) {
    final minutes = program.duration.inMinutes;
    if (minutes >= 95) return EpgSlotMediaKind.movie;
    if (minutes >= 20 && minutes < 90) return EpgSlotMediaKind.episode;
    return EpgSlotMediaKind.unknown;
  }

  /// Prefer EPG description when the title is too vague for the UI.
  static String resolveDisplayTitle(Program program, Channel? channel) {
    final raw = ArtworkQueryExpander.stripDisplayBadges(program.title).trim();
    if (raw.isEmpty) return program.title;

    final fromDesc = _titleFromDescription(raw, program.description);
    if (fromDesc != null && fromDesc.length > raw.length) {
      return fromDesc;
    }

    if (!isUnderSpecified(raw)) return raw;

    final kind = mediaKind(program);
    if (kind == EpgSlotMediaKind.movie) {
      return '$raw (Movie)';
    }
    if (kind == EpgSlotMediaKind.episode && channel != null) {
      final hint = _channelDisplayHint(channel);
      if (hint != null) return '$raw · $hint';
    }
    return raw;
  }

  /// Extra TMDB query strings for franchise-style EPG titles.
  static List<String> artworkQueryHints(Program program, Channel? channel) {
    if (!isUnderSpecified(program.title)) return const [];

    final hints = <String>[];
    void add(String value) {
      final trimmed = value.trim();
      if (trimmed.length < 4) return;
      if (!hints.contains(trimmed)) hints.add(trimmed);
    }

    final base = ArtworkQueryExpander.stripDisplayBadges(program.title).trim();
    final kind = mediaKind(program);

    if (channel != null) {
      for (final hint in _channelArtworkHints(channel)) {
        add('$base $hint');
        add(hint);
      }
      final cleaned = _cleanChannelName(channel.name);
      if (cleaned.isNotEmpty) add('$base $cleaned');
    }

    if (kind == EpgSlotMediaKind.movie) {
      add('$base film');
    } else if (kind == EpgSlotMediaKind.episode) {
      add('$base series');
    }

    return hints;
  }

  /// Skip TMDB when the title is vague and we have no EPG art or channel hints.
  static bool shouldSkipRemoteArtwork(Program program, [Channel? channel]) {
    if (!isUnderSpecified(program.title)) return false;
    if ((program.imageUrl?.trim().isNotEmpty) == true) return false;
    if (channel != null && artworkQueryHints(program, channel).isNotEmpty) {
      return false;
    }
    return true;
  }

  static String? _titleFromDescription(String title, String? description) {
    if (description == null || description.trim().isEmpty) return null;
    final first = description
        .split(RegExp(r'[\r\n]+'))
        .map((l) => l.trim())
        .firstWhere((l) => l.isNotEmpty, orElse: () => '');
    if (first.isEmpty) return null;
    if (first.length <= title.length + 4) return null;

    final titleLower = title.toLowerCase();
    final firstLower = first.toLowerCase();
    if (!firstLower.contains(titleLower.split(' ').first)) return null;

    // Drop trailing boilerplate after the first sentence.
    final sentence = first.split(RegExp(r'(?<=[.!?])\s+')).first.trim();
    if (sentence.length < title.length + 4) return null;
    if (sentence.length > 120) {
      return '${sentence.substring(0, 117).trim()}…';
    }
    return sentence;
  }

  static String? _channelDisplayHint(Channel channel) {
    final n = '${channel.name} ${channel.groupTitle ?? ''}'.toLowerCase();
    if (n.contains('h&i') || n.contains('heroes') || n.contains('icons')) {
      return 'Series';
    }
    if (n.contains('showtime') || n.contains('movie')) return 'Movie';
    return null;
  }

  static List<String> _channelArtworkHints(Channel channel) {
    final n = '${channel.name} ${channel.groupTitle ?? ''}'.toLowerCase();
    if (n.contains('h&i') || n.contains('heroes') || n.contains('icons')) {
      return const [
        'The Original Series',
        'Star Trek The Original Series',
      ];
    }
    if (n.contains('showtime')) {
      return const ['film', 'motion picture'];
    }
    return const [];
  }

  static String _cleanChannelName(String name) {
    return name
        .replaceAll(RegExp(r'\b(hd|fhd|uhd|4k|sd)\b', caseSensitive: false), '')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
  }
}

enum EpgSlotMediaKind { movie, episode, unknown }
