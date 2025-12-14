import 'package:iptv_player/utils/debug_helper.dart';

class PerformanceMonitor {
  static final Map<String, DateTime> _startTimes = {};
  static final List<String> _logs = [];
  static final Map<String, int> _operationCounts = {};
  static final Map<String, int> _totalDurations = {};
  
  static void start(String operation) {
    _startTimes[operation] = DateTime.now();
    final message = '[PERF] START: $operation';
    _logs.add(message);
    debugLog(message);
  }
  
  static void end(String operation) {
    final startTime = _startTimes[operation];
    if (startTime != null) {
      final duration = DateTime.now().difference(startTime);
      final durationMs = duration.inMilliseconds;
      
      // Track operation statistics
      _operationCounts[operation] = (_operationCounts[operation] ?? 0) + 1;
      _totalDurations[operation] = (_totalDurations[operation] ?? 0) + durationMs;
      
      final message = '[PERF] END: $operation took ${durationMs}ms';
      _logs.add(message);
      debugLog(message);
      
      // Warn about long operations
      if (durationMs > 100) {
        debugLog('[PERF] WARNING: $operation took ${durationMs}ms (>100ms)');
      }
      if (durationMs > 1000) {
        debugLog('[PERF] CRITICAL: $operation took ${durationMs}ms (>1s)');
      }
      
      _startTimes.remove(operation);
    }
  }
  
  static void mark(String event) {
    final message = '[PERF] MARK: $event';
    _logs.add(message);
    debugLog(message);
  }
  
  /// Track channel loading performance
  static void trackChannelLoad(int channelCount, Duration duration) {
    final message = '[PERF] ChannelLoad: $channelCount channels in ${duration.inMilliseconds}ms';
    _logs.add(message);
    debugLog(message);
  }
  
  /// Track memory usage (basic implementation)
  static void trackMemoryUsage([String? context]) {
    try {
      // Basic memory tracking - platform specific implementations would be better
      final message = '[PERF] Memory check${context != null ? ' ($context)' : ''}';
      _logs.add(message);
      debugLog(message);
    } catch (e) {
      debugLog('[PERF] Memory tracking failed: $e');
    }
  }
  
  /// Get performance statistics
  static Map<String, dynamic> getStats() {
    final stats = <String, dynamic>{};
    for (final operation in _operationCounts.keys) {
      final count = _operationCounts[operation] ?? 0;
      final totalMs = _totalDurations[operation] ?? 0;
      final avgMs = count > 0 ? totalMs / count : 0;
      
      stats[operation] = {
        'count': count,
        'totalMs': totalMs,
        'avgMs': avgMs.round(),
      };
    }
    return stats;
  }
  
  static List<String> getLogs() => List.from(_logs);
  
  static void clear() {
    _logs.clear();
    _startTimes.clear();
    _operationCounts.clear();
    _totalDurations.clear();
  }
}