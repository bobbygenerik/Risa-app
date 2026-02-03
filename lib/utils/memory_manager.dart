import 'dart:io';

import 'package:flutter/painting.dart';
import 'package:flutter/scheduler.dart';
import 'package:iptv_player/utils/logo_image_cache.dart';
import 'package:iptv_player/utils/debug_helper.dart';

class MemoryManager {
  static const int _maxMemoryThresholdMB = 200; // Conservative threshold
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
      
      // Set balanced cache limits
      PaintingBinding.instance.imageCache.maximumSize = 100;
      PaintingBinding.instance.imageCache.maximumSizeBytes = 150 * 1024 * 1024; // 150MB max
      
      LogoImageCache.clear();
      
      debugLog('Cleared image caches and set conservative limits');
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
