import 'dart:io';

import 'package:flutter/painting.dart';
import 'package:flutter/scheduler.dart';
import 'package:iptv_player/utils/logo_image_cache.dart';
import 'package:iptv_player/utils/debug_helper.dart';

class MemoryManager {
  // Increased threshold for modern devices, but kept conservative for older Android TV
  static const int _maxMemoryThresholdMB = 250; // Slightly higher threshold
  static bool _isLowMemory = false;
  static bool _cleanupScheduled = false;
  
  static bool get isLowMemory => _isLowMemory;
  
  /// Check if we're approaching memory limits
  static void checkMemoryPressure() {
    try {
      // This is a simplified check - in production you'd want more sophisticated monitoring
      final info = ProcessInfo.currentRss;
      final memoryMB = info ~/ (1024 * 1024);
      
      _isLowMemory = memoryMB > _maxMemoryThresholdMB;
      
      if (_isLowMemory) {
      debugLog('Memory pressure detected: ${memoryMB}MB used');
      // Clear caches when memory pressure is detected
      clearCaches();
    }
  } catch (e) {
    debugLog('Failed to check memory pressure: $e');
  }
}
  
  /// Force garbage collection if memory pressure is high
  static void forceGarbageCollection() {
    _hintGcIfNeeded();
  }

  static void scheduleCleanup({bool aggressive = false}) {
    if (_cleanupScheduled) return;
    _cleanupScheduled = true;
    SchedulerBinding.instance.scheduleTask(() {
      _cleanupScheduled = false;
      if (aggressive || _isLowMemory) {
        clearCaches();
        _hintGcIfNeeded();
      }
    }, Priority.idle);
  }
  
  /// Clear caches and free memory
  static void clearCaches() {
    try {
      // Clear image cache
      PaintingBinding.instance.imageCache.clear();
      try {
        PaintingBinding.instance.imageCache.clearLiveImages();
      } catch (e) {
        // Ignore file deletion errors (race condition)
      }
      
      // Set more aggressive cache limits for better memory management
      // Reduced from 150MB to 100MB to prevent OOM on large playlists
      PaintingBinding.instance.imageCache.maximumSize = 80;
      PaintingBinding.instance.imageCache.maximumSizeBytes = 100 * 1024 * 1024; // 100MB max
      
      LogoImageCache.clear();
      
      debugLog('Cleared image caches and set conservative limits (100MB)');
    } catch (e) {
      debugLog('Failed to clear caches: $e');
    }
  }

  static void _hintGcIfNeeded() {
    debugLog('Requesting garbage collection due to memory pressure');
    // Conservative GC hint
    final tmp1 = List<int>.generate(1024, (index) => index);
    tmp1.clear();
    final tmp2 = List<String>.generate(512, (index) => 'gc_hint_$index');
    tmp2.clear();
  }
}
