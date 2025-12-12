import 'dart:async';
import 'package:flutter/foundation.dart';

/// Centralized timer service to consolidate multiple timers across the app
/// Reduces resource usage by sharing timer instances and coordinating updates
class TimerService {
  static final TimerService _instance = TimerService._internal();
  factory TimerService() => _instance;
  TimerService._internal();

  Timer? _masterTimer;
  int _tickCount = 0;
  
  final Map<String, VoidCallback> _secondCallbacks = {};
  final Map<String, VoidCallback> _minuteCallbacks = {};
  final Map<String, VoidCallback> _customCallbacks = {};
  final Map<String, int> _customIntervals = {};

  /// Start the master timer if not already running
  void _ensureTimerRunning() {
    if (_masterTimer?.isActive != true) {
      _masterTimer = Timer.periodic(const Duration(seconds: 1), _onTick);
    }
  }

  /// Handle each timer tick
  void _onTick(Timer timer) {
    _tickCount++;
    
    // Execute second callbacks
    for (final callback in _secondCallbacks.values) {
      try {
        callback();
      } catch (e) {
        // Ignore callback errors to prevent timer disruption
      }
    }
    
    // Execute minute callbacks every 60 seconds
    if (_tickCount % 60 == 0) {
      for (final callback in _minuteCallbacks.values) {
        try {
          callback();
        } catch (e) {
          // Ignore callback errors
        }
      }
    }
    
    // Execute custom interval callbacks
    for (final entry in _customIntervals.entries) {
      if (_tickCount % entry.value == 0) {
        final callback = _customCallbacks[entry.key];
        if (callback != null) {
          try {
            callback();
          } catch (e) {
            // Ignore callback errors
          }
        }
      }
    }
    
    // Stop timer if no callbacks registered
    if (_secondCallbacks.isEmpty && 
        _minuteCallbacks.isEmpty && 
        _customCallbacks.isEmpty) {
      _masterTimer?.cancel();
      _masterTimer = null;
      _tickCount = 0;
    }
  }

  /// Register callback to run every second
  void registerSecondCallback(String id, VoidCallback callback) {
    _secondCallbacks[id] = callback;
    _ensureTimerRunning();
  }

  /// Register callback to run every minute
  void registerMinuteCallback(String id, VoidCallback callback) {
    _minuteCallbacks[id] = callback;
    _ensureTimerRunning();
  }

  /// Register callback to run at custom interval (in seconds)
  void registerCustomCallback(String id, int intervalSeconds, VoidCallback callback) {
    _customCallbacks[id] = callback;
    _customIntervals[id] = intervalSeconds;
    _ensureTimerRunning();
  }

  /// Unregister callback by ID
  void unregister(String id) {
    _secondCallbacks.remove(id);
    _minuteCallbacks.remove(id);
    _customCallbacks.remove(id);
    _customIntervals.remove(id);
  }

  /// Unregister all callbacks (useful for app shutdown)
  void unregisterAll() {
    _secondCallbacks.clear();
    _minuteCallbacks.clear();
    _customCallbacks.clear();
    _customIntervals.clear();
    _masterTimer?.cancel();
    _masterTimer = null;
    _tickCount = 0;
  }

  /// Get current tick count (useful for debugging)
  int get tickCount => _tickCount;
  
  /// Check if timer is active
  bool get isActive => _masterTimer?.isActive == true;
}