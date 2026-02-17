import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:media_kit/media_kit.dart'; // REMOVED: switching to alternative video player
import 'package:iptv_player/providers/channel_provider.dart';
// import 'package:iptv_player/services/http_client_service.dart'; // removed: unused after MediaKit removal
// Settings provider import removed - not used in prewarm service

/// Lightweight prewarm service to preload hero/backdrop images and
/// initialize a temporary video controller for the featured Live TV channel.
class PrewarmService {
  // static Player? _prewarmedPlayer; // REMOVED: MediaKit Player

  /// Precache a small set of images used on the main screens to reduce jank
  /// when the user first visits them.
  static Future<void> prewarmMainScreens(BuildContext context) async {
    try {
      final images = <String>{};
      String? featuredChannelUrl;

      // Collect from channel provider (Live TV logos)
      try {
        final channelProvider =
            Provider.of<ChannelProvider>(context, listen: false);
        final channels = channelProvider.channels;
        if (channels.isNotEmpty) {
          // Prewarm up to 4 images from the start of the list
          for (final channel in channels.take(4)) {
            if (channel.logoUrl != null && channel.logoUrl!.isNotEmpty) {
              images.add(channel.logoUrl!);
            }
          }

          final first = channels.first;
          // Capture featured channel URL synchronously so we don't need to
          // access BuildContext after any `await` in this method.
          try {
            featuredChannelUrl = first.url;
          } catch (_) {
            featuredChannelUrl = null;
          }
        }
      } catch (_) {}

      // Precache images (best-effort) without using BuildContext across async gaps.
      // Create an ImageConfiguration synchronously and resolve ImageStreams.
      // Use a neutral ImageConfiguration to avoid holding onto BuildContext
      // across async gaps in this static helper.
      const imageConfig = ImageConfiguration();
      final futures = images.map((url) {
        final completer = Completer<void>();
        try {
          final provider = NetworkImage(url);
          final stream = provider.resolve(imageConfig);
          late ImageStreamListener listener;
          listener = ImageStreamListener(
            (_, __) {
              if (!completer.isCompleted) {
                completer.complete();
              }
              stream.removeListener(listener);
            },
            onError: (error, stack) {
              if (!completer.isCompleted) {
                completer.complete();
              }
              stream.removeListener(listener);
            },
          );
          stream.addListener(listener);
        } catch (_) {
          if (!completer.isCompleted) {
            completer.complete();
          }
        }
        return completer.future;
      });

      await Future.wait(futures);

      // Pre-initialize a small video player for the featured Live TV channel
      // Use the captured `featuredChannelUrl` to avoid using `context` after awaits.
      try {
        final url = featuredChannelUrl;
        if (url != null && url.isNotEmpty) {
          // await _initPrewarmPlayer(url); // REMOVED: MediaKit player initialization
          debugLog('Video prewarming disabled (MediaKit removed)');
        }
      } catch (_) {}
    } catch (e) {
      debugLog('PrewarmService failed: $e');
    }
  }

  // REMOVED: MediaKit player initialization method
  /*
  static Future<void> _initPrewarmPlayer(String url) async {
    try {
      await _prewarmedPlayer?.dispose();
      _prewarmedPlayer = Player(
        configuration: const PlayerConfiguration(
          title: 'Risa Prewarm',
          vo: 'gpu',
        ),
      );
      
      // Open stream but pause immediately (buffer only)
      await _prewarmedPlayer!.open(
        Media(
          url,
          httpHeaders: HttpClientService().videoHeaders,
        ),
        play: false, 
      );
    } catch (e) {
      debugLog('Prewarm video init failed: $e');
      try {
        await _prewarmedPlayer?.dispose();
      } catch (_) {}
      _prewarmedPlayer = null;
    }
  }
  */

  /// Dispose any prewarmed resources (call on app dispose)
  static Future<void> dispose() async {
    try {
      // await _prewarmedPlayer?.dispose(); // REMOVED: MediaKit player disposal
      // _prewarmedPlayer = null; // REMOVED: MediaKit player reference
      debugLog('PrewarmService dispose: MediaKit player cleanup disabled');
    } catch (_) {}
  }

  /// Prewarm category data for the Live TV screen to reduce first-load jank.
  static Future<void> prewarmHomeData(
    BuildContext context, {
    int categoryCount = 6,
    int channelsPerCategory = 20,
  }) async {
    try {
      final channelProvider =
          Provider.of<ChannelProvider>(context, listen: false);
      final categories = await channelProvider.getAllCategoryNamesAsync();
      if (categories.isEmpty) return;
      final count = min(categoryCount, categories.length);
      for (var i = 0; i < count; i++) {
        unawaited(channelProvider.getChannelsForCategoryAsync(
          categories[i],
          offset: 0,
          limit: channelsPerCategory,
        ));
      }
      debugLog('PrewarmService: prefetched $count categories');
    } catch (e) {
      debugLog('PrewarmService prewarmHomeData failed: $e');
    }
  }
}
