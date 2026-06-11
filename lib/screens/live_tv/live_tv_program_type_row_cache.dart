import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/program_type_slivers.dart';

/// Caches program-type row widgets and recomputes row membership in a single
/// pass over the channel list.
///
/// Two properties keep EPG-hydration rebuilds cheap:
/// - Each channel's current program is resolved once per refresh and tested
///   against every row's predicate, instead of once per row (the old per-row
///   scan re-resolved the same channels up to 11 times).
/// - A row's widget is only evicted when its channel membership actually
///   changed, so unchanged rows return the identical widget instance and
///   Flutter skips rebuilding their subtree entirely.
class LiveTvProgramTypeRowCache {
  static const int rowChannelCap = 12;

  final Map<String, Widget> rows = {};
  final Map<String, List<String>> _memberships = {};
  final Map<String, List<Channel>> _channelsByTitle = {};
  bool _fresh = false;
  int? _lastRefreshRevision;

  void invalidate() {
    _fresh = false;
  }

  /// True when [epgRevision] differs from the revision this cache was last
  /// refreshed for. Marks the revision as consumed, so callers can gate an
  /// expensive invalidate+rebuild on actual EPG changes instead of re-firing
  /// on their own rebuild echoes.
  bool shouldRefreshFor(int epgRevision) {
    if (_lastRefreshRevision == epgRevision) return false;
    _lastRefreshRevision = epgRevision;
    return true;
  }

  /// Recomputes row memberships if the cache was invalidated since the last
  /// refresh; otherwise a no-op. Evicts only the row widgets whose membership
  /// changed.
  void ensureFresh({
    required List<Channel> channels,
    required List<ProgramTypeRowSpec> specs,
    required Program? Function(Channel channel) currentProgramOf,
  }) {
    if (_fresh) return;
    _fresh = true;

    final matched = {for (final s in specs) s.title: <Channel>[]};
    final seen = {for (final s in specs) s.title: <String>{}};
    var fullRows = 0;

    for (final channel in channels) {
      if (fullRows == specs.length) break;
      Program? program;
      var resolved = false;
      for (final spec in specs) {
        final list = matched[spec.title]!;
        if (list.length >= rowChannelCap) continue;
        final channelId = channel.epgLookupId;
        if (seen[spec.title]!.contains(channelId)) continue;
        if (!resolved) {
          program = currentProgramOf(channel);
          resolved = true;
        }
        if (spec.predicate(program, channel)) {
          list.add(channel);
          seen[spec.title]!.add(channelId);
          if (list.length == rowChannelCap) fullRows++;
        }
      }
    }

    for (final spec in specs) {
      final channelsForRow = matched[spec.title]!;
      final ids = [for (final c in channelsForRow) c.epgLookupId];
      if (!listEquals(_memberships[spec.title], ids)) {
        _memberships[spec.title] = ids;
        rows.remove(spec.title);
      }
      _channelsByTitle[spec.title] = channelsForRow;
    }
  }

  /// Returns the cached row widget, building it from the membership computed
  /// by [ensureFresh] when absent. Empty rows collapse to a zero-size box.
  Widget buildRow({
    required BuildContext? context,
    required String title,
    required Widget Function(
      BuildContext? context,
      String title,
      List<Channel> channels,
    ) buildSection,
  }) {
    final cached = rows[title];
    if (cached != null) return cached;

    final channelsForRow = _channelsByTitle[title] ?? const <Channel>[];
    final widget = channelsForRow.isEmpty
        ? const SizedBox.shrink()
        : buildSection(context, title, channelsForRow);
    rows[title] = widget;
    return widget;
  }
}
