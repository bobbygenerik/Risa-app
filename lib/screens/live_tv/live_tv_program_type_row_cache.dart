import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:provider/provider.dart';

/// Caches program-type row widgets until EPG data changes.
class LiveTvProgramTypeRowCache {
  final Map<String, Widget> rows = {};
  bool valid = false;

  void invalidate() {
    valid = false;
  }

  Widget buildRow({
    required BuildContext context,
    required String title,
    required List<Channel> allChannels,
    required bool Function(Program?, Channel) classifier,
    required Widget Function(
      BuildContext context,
      String title,
      List<Channel> channels,
    ) buildSection,
  }) {
    if (valid && rows.containsKey(title)) {
      return rows[title]!;
    }

    final epgService = context.read<IncrementalEpgService>();
    final matchingChannels = <Channel>[];
    final seenIds = <String>{};

    for (final channel in allChannels) {
      if (matchingChannels.length >= 12) break;

      final channelId = channel.epgLookupId;
      if (seenIds.contains(channelId)) continue;

      final currentProgram = epgService.getCurrentProgram(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );

      if (classifier(currentProgram, channel)) {
        matchingChannels.add(channel);
        seenIds.add(channelId);
      }
    }

    final widget = matchingChannels.isEmpty
        ? const SizedBox.shrink()
        : buildSection(context, title, matchingChannels);

    rows[title] = widget;
    valid = true;
    return widget;
  }
}
