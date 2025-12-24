/// Circuit Breaker pattern implementation for handling failing external services
/// Helps prevent cascade failures and provides better error handling for EPG sources
class CircuitBreaker {
  static const Duration _defaultTimeout = Duration(seconds: 30);
  static const int _defaultFailureThreshold = 5;
  static const Duration _defaultRecoveryTimeout = Duration(minutes: 1);

  final String _name;
  final Duration _timeout;
  final int _failureThreshold;
  final Duration _recoveryTimeout;
  final Function? _onStateChange;

  CircuitState _state = CircuitState.closed;
  int _failureCount = 0;
  DateTime? _lastFailureTime;
  DateTime? _lastAttemptTime;

  CircuitBreaker({
    required String name,
    Duration? timeout,
    int? failureThreshold,
    Duration? recoveryTimeout,
    Function? onStateChange,
  })  : _name = name,
        _timeout = timeout ?? _defaultTimeout,
        _failureThreshold = failureThreshold ?? _defaultFailureThreshold,
        _recoveryTimeout = recoveryTimeout ?? _defaultRecoveryTimeout,
        _onStateChange = onStateChange;

  /// Execute a function with circuit breaker protection
  Future<T> execute<T>(Future<T> Function() operation) async {
    if (_state == CircuitState.open) {
      if (_shouldAttemptReset()) {
        _setState(CircuitState.halfOpen);
      } else {
        throw CircuitBreakerOpenException(
          'Circuit breaker "$_name" is OPEN. Next attempt after: ${_lastAttemptTime!.add(_recoveryTimeout)}',
        );
      }
    }

    _lastAttemptTime = DateTime.now();

    try {
      final result = await operation().timeout(_timeout);

      // Success - reset failure count if we were in half-open state
      if (_state == CircuitState.halfOpen) {
        _reset();
      } else if (_failureCount > 0) {
        _failureCount = 0;
      }

      return result;
    } catch (e) {
      _recordFailure();
      rethrow;
    }
  }

  void _recordFailure() {
    _failureCount++;
    _lastFailureTime = DateTime.now();

    if (_failureCount >= _failureThreshold) {
      _setState(CircuitState.open);
    }
  }

  bool _shouldAttemptReset() {
    if (_lastFailureTime == null) return true;
    return DateTime.now().difference(_lastFailureTime!) >= _recoveryTimeout;
  }

  void _reset() {
    _failureCount = 0;
    _lastFailureTime = null;
    _setState(CircuitState.closed);
  }

  void _setState(CircuitState newState) {
    if (_state != newState) {
      _state = newState;
      _onStateChange?.call(newState);
    }
  }

  /// Force the circuit breaker to reset (for testing or manual recovery)
  void reset() {
    _reset();
  }

  /// Force the circuit breaker to open (for testing or maintenance)
  void forceOpen() {
    _setState(CircuitState.open);
  }

  /// Get current state of the circuit breaker
  CircuitState get state => _state;

  /// Get failure count
  int get failureCount => _failureCount;

  /// Get time of last failure (if any)
  DateTime? get lastFailureTime => _lastFailureTime;

  /// Check if circuit breaker is currently allowing calls
  bool get isClosed => _state == CircuitState.closed;

  /// Check if circuit breaker is blocking calls
  bool get isOpen => _state == CircuitState.open;

  /// Check if circuit breaker is testing recovery
  bool get isHalfOpen => _state == CircuitState.halfOpen;

  /// Get time until next allowed attempt (when open)
  Duration? get timeUntilNextAttempt {
    if (_state != CircuitState.open || _lastFailureTime == null) return null;
    final elapsed = DateTime.now().difference(_lastFailureTime!);
    if (elapsed >= _recoveryTimeout) return Duration.zero;
    return _recoveryTimeout - elapsed;
  }

  @override
  String toString() {
    return 'CircuitBreaker($_name): $_state (failures: $_failureCount/$_failureThreshold)';
  }
}

/// States for the circuit breaker
enum CircuitState {
  /// Normal operation - calls pass through
  closed,

  /// Calls are blocked due to failures
  open,

  /// Testing if service has recovered
  halfOpen,
}

/// Exception thrown when circuit breaker is open
class CircuitBreakerOpenException implements Exception {
  final String message;
  final DateTime timestamp;

  CircuitBreakerOpenException(this.message) : timestamp = DateTime.now();

  @override
  String toString() => 'CircuitBreakerOpenException: $message';
}

/// Manager for multiple circuit breakers
class CircuitBreakerManager {
  static final Map<String, CircuitBreaker> _breakers = {};

  /// Get or create a circuit breaker
  static CircuitBreaker getBreaker(
    String name, {
    Duration? timeout,
    int? failureThreshold,
    Duration? recoveryTimeout,
    Function? onStateChange,
  }) {
    if (!_breakers.containsKey(name)) {
      _breakers[name] = CircuitBreaker(
        name: name,
        timeout: timeout,
        failureThreshold: failureThreshold,
        recoveryTimeout: recoveryTimeout,
        onStateChange: onStateChange,
      );
    }
    return _breakers[name]!;
  }

  /// Execute with a named circuit breaker
  static Future<T> executeWithBreaker<T>(
    String name,
    Future<T> Function() operation, {
    Duration? timeout,
    int? failureThreshold,
    Duration? recoveryTimeout,
  }) async {
    final breaker = getBreaker(
      name,
      timeout: timeout,
      failureThreshold: failureThreshold,
      recoveryTimeout: recoveryTimeout,
    );
    return breaker.execute(operation);
  }

  /// Reset a specific circuit breaker
  static void resetBreaker(String name) {
    _breakers[name]?.reset();
  }

  /// Reset all circuit breakers
  static void resetAll() {
    for (final breaker in _breakers.values) {
      breaker.reset();
    }
  }

  /// Get status of all circuit breakers
  static Map<String, Map<String, dynamic>> getStatus() {
    final status = <String, Map<String, dynamic>>{};
    for (final entry in _breakers.entries) {
      status[entry.key] = {
        'state': entry.value.state.toString(),
        'failureCount': entry.value.failureCount,
        'isClosed': entry.value.isClosed,
        'isOpen': entry.value.isOpen,
        'isHalfOpen': entry.value.isHalfOpen,
        'lastFailureTime': entry.value.lastFailureTime?.toIso8601String(),
        'timeUntilNextAttempt': entry.value.timeUntilNextAttempt?.inSeconds,
      };
    }
    return status;
  }

  /// Clear all circuit breakers (for testing)
  static void clear() {
    _breakers.clear();
  }
}
