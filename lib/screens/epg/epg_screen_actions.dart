import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/state/epg_screen_state.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// EPG screen user actions: refresh, favorites, mapping, catch-up playback.
class EpgScreenActions {
  EpgScreenActions._();

  static Future<void> triggerRefresh({
    required BuildContext context,
    required bool Function() isMounted,
    required AnimationController refreshAnimation,
  }) async {
    if (!isMounted()) return;

    final prefs = await SharedPreferences.getInstance();
    final epgUrl =
        prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');

    if (epgUrl == null || epgUrl.isEmpty) {
      if (isMounted()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No EPG URL configured'),
            backgroundColor: AppTheme.accentRed,
          ),
        );
      }
      return;
    }

    await refreshAnimation.repeat();

    if (isMounted()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Refreshing EPG data...'),
          duration: Duration(seconds: 1),
        ),
      );
    }

    if (!isMounted()) return;
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);

    await epgService.forceRefresh();

    refreshAnimation.stop();
    refreshAnimation.reset();

    if (isMounted()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              'EPG refreshed: ${epgService.availableChannels.length} channels'),
          backgroundColor: AppTheme.accentGreen,
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  static Future<void> toggleFavorite({
    required EPGScreenState epgState,
    required Channel channel,
  }) async {
    epgState.toggleEpgFavorite(channel.id);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
        'epg_favorite_channels', epgState.epgFavoriteChannelIds.toList());
  }

  static Future<void> setMapping({
    required BuildContext context,
    required bool Function() isMounted,
    required Channel channel,
    required String epgChannelId,
    required VoidCallback onChanged,
  }) async {
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    await epgService.setManualMapping(channel.epgLookupId, epgChannelId);

    if (isMounted()) {
      showAppSnackBar(
          context,
          SnackBar(
            content: Text('EPG mapped: ${channel.name} → $epgChannelId'),
            backgroundColor: AppTheme.accentGreen,
          ));
      onChanged();
    }
  }

  static Future<void> removeMapping({
    required BuildContext context,
    required bool Function() isMounted,
    required Channel channel,
    required VoidCallback onChanged,
  }) async {
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    await epgService.removeManualMapping(channel.epgLookupId);

    if (isMounted()) {
      showAppSnackBar(
          context,
          SnackBar(
            content: Text('EPG mapping removed for ${channel.name}'),
            backgroundColor: AppTheme.primaryBlue,
          ));
      onChanged();
    }
  }

  static void playCatchup({
    required BuildContext context,
    required Program program,
  }) {
    if (program.catchupUrl == null) return;

    final catchupChannel = Channel(
      id: '${program.channelId}_catchup_${program.id}',
      name: '${program.title} (Catch-up)',
      url: program.catchupUrl!,
      logoUrl: program.imageUrl,
      groupTitle: 'Catch-up TV',
      tvgId: program.channelId,
    );

    context.push('/player', extra: catchupChannel);
  }
}
