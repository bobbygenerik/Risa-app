import 'dart:io';

import 'package:flutter/services.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/image_cache_config.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/memory_manager.dart';

/// Frees RAM before ExoPlayer starts — SHIELD LMK-kills com.risa.app otherwise.
class PlayerMemoryService {
  PlayerMemoryService._();

  static const MethodChannel _channel = MethodChannel('com.risa.app/memory');
  static bool _preparing = false;

  static Future<void> prepareForPlayback() async {
    if (_preparing) return;
    _preparing = true;
    try {
      debugLog('PlayerMemoryService: preparing for playback');
      MemoryManager.clearCaches();
      ImageFailureCache.clear();
      ImageCacheConfig.clearCaches();
      if (Platform.isAndroid) {
        try {
          await _channel.invokeMethod<void>('trimForPlayback');
        } catch (e) {
          debugLog('PlayerMemoryService: trimForPlayback failed: $e');
        }
      }
      MemoryManager.forceGarbageCollection();
      // Let Live TV dispose and the GC reclaim image cache before ExoPlayer alloc.
      await Future<void>.delayed(const Duration(milliseconds: 500));
    } finally {
      _preparing = false;
    }
  }
}
