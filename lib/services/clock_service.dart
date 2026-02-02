import 'dart:async';
import 'package:flutter/material.dart';

/// Centralized clock service that provides a ValueNotifier-based time
/// to avoid excessive DateTime.now() calls in build methods.
///
/// Usage:
///   final clockService = ClockService();
///   ValueListenableBuilder<DateTime>(
///     valueListenable: clockService.currentTime,
///     builder: (context, now, child) {
///       // Use now instead of DateTime.now()
///     },
///   )
class ClockService {
  static final ClockService _instance = ClockService._internal();
  factory ClockService() => _instance;
  ClockService._internal();

  final ValueNotifier<DateTime> currentTime =
      ValueNotifier<DateTime>(DateTime.now());
  Timer? _timer;

  void start() {
    _timer?.cancel();
    // Update every second for UI time displays
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      currentTime.value = DateTime.now();
    });
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }

  /// Get current time without triggering rebuilds
  DateTime now() => DateTime.now();

  /// Dispose the service
  void dispose() {
    stop();
    currentTime.dispose();
  }
}
