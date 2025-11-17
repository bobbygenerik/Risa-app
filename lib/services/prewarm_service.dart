import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';

/// Lightweight prewarm service to preload hero/backdrop images and
/// initialize a temporary video controller for the featured Live TV channel.
class PrewarmService {
  static VideoPlayerController? _prewarmedController;

  /// Precache a small set of images used on the main screens to reduce jank
  /// when the user first visits them.
  static Future<void> prewarmMainScreens(BuildContext context) async {
    try {
      final images = <String>{};
      String? featuredChannelUrl;

      // Collect from channel provider (Live TV logos)
      try {
        final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
        final channels = channelProvider.channels;
        if (channels.isNotEmpty) {
          final first = channels.first;
          if (first.logoUrl != null && first.logoUrl!.isNotEmpty) images.add(first.logoUrl!);
          // Capture featured channel URL synchronously so we don't need to
          // access BuildContext after any `await` in this method.
          try {
            featuredChannelUrl = first.url;
          } catch (_) {
            featuredChannelUrl = null;
          }
        }
      } catch (_) {}

      // Collect from content provider (movies + series backdrops/posters)
      try {
        final contentProvider = Provider.of<ContentProvider>(context, listen: false);
        final movies = contentProvider.movies;
        for (final m in movies.take(6)) {
          if (m.backdropUrl != null && m.backdropUrl!.isNotEmpty) images.add(m.backdropUrl!);
          if (m.imageUrl != null && m.imageUrl!.isNotEmpty) images.add(m.imageUrl!);
        }

        final series = contentProvider.series;
        for (final s in series.take(6)) {
          if (s.backdropUrl != null && s.backdropUrl!.isNotEmpty) images.add(s.backdropUrl!);
          if (s.imageUrl != null && s.imageUrl!.isNotEmpty) images.add(s.imageUrl!);
        }
      } catch (_) {}

      // Precache images (best-effort) without using BuildContext across async gaps.
      // Create an ImageConfiguration synchronously and resolve ImageStreams.
      // Use a neutral ImageConfiguration to avoid holding onto BuildContext
      // across async gaps in this static helper.
      final imageConfig = const ImageConfiguration();
      for (final url in images) {
        try {
          final provider = NetworkImage(url);
          final stream = provider.resolve(imageConfig);
          final completer = Completer<void>();
          late ImageStreamListener listener;
          listener = ImageStreamListener((_, __) {
            completer.complete();
            stream.removeListener(listener);
          }, onError: (error, stack) {
            completer.complete();
            stream.removeListener(listener);
          });
          stream.addListener(listener);
          await completer.future;
        } catch (_) {
          // ignore individual failures
        }
      }

      // Pre-initialize a small video controller for the featured Live TV channel
      // Use the captured `featuredChannelUrl` to avoid using `context` after awaits.
      try {
        final url = featuredChannelUrl;
        if (url != null && url.isNotEmpty) {
          await _initPrewarmController(url);
        }
      } catch (_) {}
    } catch (e) {
      debugPrint('PrewarmService failed: $e');
    }
  }

  static Future<void> _initPrewarmController(String url) async {
    try {
      await _prewarmedController?.dispose();
      _prewarmedController = VideoPlayerController.networkUrl(Uri.parse(url));
      await _prewarmedController!.initialize();
      // Keep paused and ready
      await _prewarmedController!.pause();
    } catch (e) {
      debugPrint('Prewarm video init failed: $e');
      try {
        await _prewarmedController?.dispose();
      } catch (_) {}
      _prewarmedController = null;
    }
  }

  /// Dispose any prewarmed resources (call on app dispose)
  static Future<void> dispose() async {
    try {
      await _prewarmedController?.dispose();
      _prewarmedController = null;
    } catch (_) {}
  }
}
