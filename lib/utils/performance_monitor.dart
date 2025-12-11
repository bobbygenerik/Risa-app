import 'package:flutter/foundation.dart';

class PerformanceMonitor {
  static final Map<String, DateTime> _startTimes = {};
  static final List<String> _logs = [];
  
  static void start(String operation) {
    _startTimes[operation] = DateTime.now();
    final message = '[PERF] START: $operation';
    _logs.add(message);
    debugPrint(message);
  }
  
  static void end(String operation) {
    final startTime = _startTimes[operation];
    if (startTime != null) {
      final duration = DateTime.now().difference(startTime);
      final message = '[PERF] END: $operation took ${duration.inMilliseconds}ms';
      _logs.add(message);
      debugPrint(message);
      
      // Warn about long operations
      if (duration.inMilliseconds > 100) {
        debugPrint('[PERF] WARNING: $operation took ${duration.inMilliseconds}ms (>100ms)');
      }
      if (duration.inMilliseconds > 1000) {
        debugPrint('[PERF] CRITICAL: $operation took ${duration.inMilliseconds}ms (>1s)');
      }
      
      _startTimes.remove(operation);
    }
  }
  
  static void mark(String event) {
    final message = '[PERF] MARK: $event';
    _logs.add(message);
    debugPrint(message);
  }
  
  static List<String> getLogs() => List.from(_logs);
  
  static void clear() {
    _logs.clear();
    _startTimes.clear();
  }
}