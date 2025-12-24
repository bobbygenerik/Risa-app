import 'dart:async';
import 'package:flutter/widgets.dart';

/// Debouncer utility to prevent excessive function calls
/// Replaces Timer-based throttling to prevent memory leaks
class Debouncer {
  final Duration delay;
  Timer? _timer;

  Debouncer({required this.delay});

  /// Execute function after delay, canceling previous calls
  void call(void Function() action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }

  /// Cancel any pending execution
  void cancel() {
    _timer?.cancel();
    _timer = null;
  }

  /// Check if there's a pending execution
  bool get isPending => _timer?.isActive ?? false;

  /// Dispose of the debouncer
  void dispose() {
    cancel();
  }
}

/// Frame-based throttling for video progress updates
/// More efficient than timer-based approach
class FrameThrottler {
  bool _isScheduled = false;
  void Function()? _pendingAction;

  /// Execute action on next frame if not already scheduled
  void call(void Function() action) {
    if (_isScheduled) {
      _pendingAction = action;
      return;
    }

    _isScheduled = true;
    _pendingAction = action;

    // Schedule for next frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _isScheduled = false;
      final actionToExecute = _pendingAction;
      _pendingAction = null;
      actionToExecute?.call();
    });
  }

  /// Cancel any pending execution
  void cancel() {
    _pendingAction = null;
  }
}
