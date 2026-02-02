import 'dart:async';

/// Shared request deduplication manager for all API services.
/// Prevents duplicate concurrent requests for the same URL/data.
class ApiRequestManager {
  // Singleton instance
  static final ApiRequestManager _instance = ApiRequestManager._internal();
  factory ApiRequestManager() => _instance;
  ApiRequestManager._internal();

  /// In-flight requests: cacheKey -> Future
  final Map<String, Future<dynamic>> _inFlightRequests = {};

  /// Completed results cache for quick dedup: cacheKey -> result
  final Map<String, dynamic> _completedResults = {};

  /// Timestamps for cleanup
  final Map<String, DateTime> _requestStartTimes = {};

  static const Duration _maxRequestAge = Duration(minutes: 2);
  static const Duration _completedResultTtl = Duration(seconds: 5);

  /// Executes an API request with deduplication.
  /// If a request with the same cacheKey is already in flight,
  /// returns the existing Future instead of making a duplicate call.
  Future<T> execute<T>(
    String cacheKey,
    Future<T> Function() requestFactory, {
    Duration? ttl,
  }) async {
    final now = DateTime.now();

    // Cleanup old requests periodically
    _cleanupOldRequests(now);

    // Check for in-flight request
    final existing = _inFlightRequests[cacheKey];
    if (existing != null) {
      try {
        final result = await existing as T;
        return result;
      } catch (e) {
        // If the existing request failed, remove it and retry
        _inFlightRequests.remove(cacheKey);
        _requestStartTimes.remove(cacheKey);
      }
    }

    // Check for recently completed result (helps with rapid-fire duplicate requests)
    final completed = _completedResults[cacheKey];
    if (completed != null && completed is T) {
      return completed;
    }

    // Create and track new request
    final future = _executeTracked(cacheKey, requestFactory, now);
    _inFlightRequests[cacheKey] = future;
    _requestStartTimes[cacheKey] = now;

    return future;
  }

  Future<T> _executeTracked<T>(
    String cacheKey,
    Future<T> Function() requestFactory,
    DateTime startTime,
  ) async {
    try {
      final result = await requestFactory();

      // Store completed result briefly for rapid-fire dedup
      _completedResults[cacheKey] = result;

      // Schedule cleanup
      Timer(const Duration(seconds: 5), () {
        _completedResults.remove(cacheKey);
      });

      return result;
    } finally {
      // Always clean up in-flight tracking
      _inFlightRequests.remove(cacheKey);
      _requestStartTimes.remove(cacheKey);
    }
  }

  void _cleanupOldRequests(DateTime now) {
    final keysToRemove = <String>[];

    for (final entry in _requestStartTimes.entries) {
      if (now.difference(entry.value) > _maxRequestAge) {
        keysToRemove.add(entry.key);
      }
    }

    for (final key in keysToRemove) {
      _inFlightRequests.remove(key);
      _requestStartTimes.remove(key);
    }
  }

  /// Clear all tracked requests (useful for testing or memory pressure)
  void clear() {
    _inFlightRequests.clear();
    _completedResults.clear();
    _requestStartTimes.clear();
  }
}

/// Extension method for easier usage in services
extension ApiRequestManagerExtension on ApiRequestManager {
  /// Creates a cache key from service name and parameters
  String createCacheKey(String serviceName, Map<String, dynamic> params) {
    final sortedParams = params.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));
    final paramString = sortedParams
        .map((e) => '${e.key}=${e.value?.toString().toLowerCase().trim()}')
        .join('|');
    return '$serviceName|$paramString';
  }
}
