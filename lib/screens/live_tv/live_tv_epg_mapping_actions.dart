import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/widgets/live_tv/epg_channel_selector_dialog.dart';

/// Applies EPG manual mapping dialog results for a channel.
class LiveTvEpgMappingActions {
  LiveTvEpgMappingActions._();

  static Future<void> showAndApply({
    required BuildContext context,
    required Channel channel,
    required IncrementalEpgService epgService,
    required bool Function() isMounted,
    required VoidCallback onChanged,
  }) async {
    final result = await showEpgChannelSelector(
      context: context,
      channel: channel,
    );
    if (!isMounted() || result == null) return;

    if (result.isEmpty) {
      unawaited(epgService.removeManualMapping(channel.epgLookupId));
      if (isMounted()) {
        showAppSnackBar(
          context,
          const SnackBar(
            content: Text('Mapping removed. Reloading EPG...'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
      }
    } else {
      unawaited(epgService.setManualMapping(channel.epgLookupId, result));
      if (isMounted()) {
        showAppSnackBar(
          context,
          const SnackBar(
            content: Text('Channel mapped successfully. Reloading EPG...'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
      }
    }

    unawaited(epgService.ensureChannelLoaded(
      channel.epgLookupId,
      channelName: channel.epgLookupNameFallback,
    ));

    if (isMounted()) onChanged();
  }
}
