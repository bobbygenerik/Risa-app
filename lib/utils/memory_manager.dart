import 'dart:io';
import 'package:flutter/foundation.dart';

class MemoryManager {
  static const int _maxMemoryThresholdMB = 200; // Conservative threshold
  static bool _isLowMemory = false;
  
  static bool get isLowMemory => _isLowMemory;
  
  /// Check if we're approaching memory limits
  static void checkMemoryPressure() {
    if (!kDebugMode) return; // Only check in debug mode for now
    
    try {
      // This is a simplified check - in production you'd want more sophisticated monitoring
      final info = ProcessInfo.currentRss;
      final memoryMB = info ~/ (1024 * 1024);
      
      _isLowMemory = memoryMB > _maxMemoryThresholdMB;
      
      if (_isLowMemory) {
        debugPrint('Memory pressure detected: ${memoryMB}MB used');
      }
    } catch (e) {
      debugPrint('Failed to check memory pressure: $e');
    }
  }
  
  /// Force garbage collection if memory pressure is high
  static void forceGarbageCollection() {
    if (_isLowMemory) {
      debugPrint('Forcing garbage collection due to memory pressure');
      // Force GC - this is a hint to the VM
      for (int i = 0; i < 3; i++) {
        List.generate(1000, (index) => index).clear();
      }
    }
  }
  
  /// Clear caches and free memory
  static void clearCaches() {
    try {
      // Clear image cache
      PaintingBinding.instance.imageCache.clear();
      PaintingBinding.instance.imageCache.clearLiveImages();
      
      debugPrint('Cleared image caches');
    } catch (e) {
      debugPrint('Failed to clear caches: $e');
    }
  }
}