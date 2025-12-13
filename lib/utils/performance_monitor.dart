import 'package:iptv_player/utils/debug_helper.dart';

class PerformanceMonitor {
  static final Map<String, DateTime> _startTimes = {};
  static final List<String> _logs = [];
  
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
      final message = '[PERF] END: $operation took ${duration.inMilliseconds}ms';
      _logs.add(message);
      debugLog(message);
      
      // Warn about long operations
      if (duration.inMilliseconds > 100) {
        debugLog('[PERF] WARNING: $operation took ${duration.inMilliseconds}ms (>100ms)');
      }
      if (duration.inMilliseconds > 1000) {
        debugLog('[PERF] CRITICAL: $operation took ${duration.inMilliseconds}ms (>1s)');
      }
      
      _startTimes.remove(operation);
    }
  }
  
  static void mark(String event) {
    final message = '[PERF] MARK: $event';
    _logs.add(message);
    debugLog(message);
  }
  
  static List<String> getLogs() => List.from(_logs);
  
  static void clear() {
    _logs.clear();
    _startTimes.clear();
  }
}