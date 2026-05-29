import 'dart:async';

/// Centralized timer management to prevent leaks and simplify lifecycle cleanup.
class LiveTvTimerManager {
  final Map<String, Timer> _timers = {};

  void start(String key, Duration duration, void Function() callback) {
    _timers[key]?.cancel();
    _timers[key] = Timer(duration, callback);
  }

  void startPeriodic(
    String key,
    Duration duration,
    void Function() callback,
  ) {
    _timers[key]?.cancel();
    _timers[key] = Timer.periodic(duration, (_) => callback());
  }

  void cancel(String key) {
    _timers[key]?.cancel();
    _timers.remove(key);
  }

  void cancelAll() {
    for (final timer in _timers.values) {
      timer.cancel();
    }
    _timers.clear();
  }

  void debounce(String key, Duration duration, void Function() callback) {
    _timers[key]?.cancel();
    _timers[key] = Timer(duration, () {
      _timers.remove(key);
      callback();
    });
  }

  bool isActive(String key) =>
      _timers.containsKey(key) && _timers[key]!.isActive;
}
