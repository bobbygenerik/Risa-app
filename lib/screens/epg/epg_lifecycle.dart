import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/timer_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// EPG data load and periodic auto-refresh for the guide screen.
class EpgLifecycle {
  EpgLifecycle._();

  static const String autoRefreshKey = 'epg_auto_refresh';

  static Future<void> loadEpgData(BuildContext context) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final epgService =
          Provider.of<IncrementalEpgService>(context, listen: false);
      if (!epgService.hasUsableData) {
        unawaited(epgService.quickStart());
      }
      final epgUrl =
          prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');

      if (epgUrl != null && epgUrl.isNotEmpty && !epgService.isLoading) {
        debugLog('EPG Screen: Found EPG URL - initializing service');
        final loadedCount = epgService.loadedProgramChannelCount;
        final availableCount = epgService.availableChannels.length;
        if (loadedCount < 50 && availableCount > 100) {
          debugLog(
              'EPG Screen: Data sparse ($loadedCount/$availableCount loaded) - forcing refresh');
          unawaited(epgService.forceRefresh());
        } else {
          unawaited(epgService.initialize());
        }
      }
    } catch (e) {
      debugLog('EPG Screen: Failed to auto-initialize EPG: $e');
    }
  }

  static void startAutoRefresh({
    required TimerService timerService,
    required bool Function() isMounted,
    required BuildContext Function() getContext,
  }) {
    timerService.registerCustomCallback(autoRefreshKey, 1800, () async {
      if (!isMounted()) return;

      try {
        final prefs = await SharedPreferences.getInstance();
        if (!isMounted()) return;

        final context = getContext();
        final epgService =
            Provider.of<IncrementalEpgService>(context, listen: false);
        final epgUrl =
            prefs.getString('epg_url') ?? prefs.getString('custom_epg_url');

        if (epgUrl != null && epgUrl.isNotEmpty && !epgService.isLoading) {
          debugLog('EPG Screen: Auto-refreshing EPG data...');
          await epgService.initialize();
        }
      } catch (e) {
        debugLog('EPG Screen: Auto-refresh failed: $e');
      }
    });
  }
}
