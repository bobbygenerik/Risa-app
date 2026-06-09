import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Aggregates frame timings and prints periodic perf summaries.
class JankMonitor {
  JankMonitor._();

  static final JankMonitor instance = JankMonitor._();

  static const int _jankThresholdMs = 50;
  static const int _severeThresholdMs = 100;

  int _totalFrames = 0;
  int _jankFrames = 0;
  int _severeFrames = 0;
  int _maxFrameMs = 0;
  int _sumBuildMs = 0;
  int _sumRasterMs = 0;
  DateTime? _sessionStart;
  Timer? _summaryTimer;
  bool _attached = false;

  void attach() {
    if (_attached) return;
    _attached = true;
    _sessionStart = DateTime.now();
    SchedulerBinding.instance.addTimingsCallback(_onTimings);
    _summaryTimer?.cancel();
    _summaryTimer = Timer.periodic(const Duration(seconds: 30), (_) {
      _printSummary(label: 'periodic');
    });
    debugLog('PERF: JankMonitor attached (threshold=${_jankThresholdMs}ms)');
  }

  void detach() {
    if (!_attached) return;
    _attached = false;
    SchedulerBinding.instance.removeTimingsCallback(_onTimings);
    _summaryTimer?.cancel();
    _summaryTimer = null;
    _printSummary(label: 'final');
  }

  void _onTimings(List<FrameTiming> timings) {
    for (final timing in timings) {
      final buildMs = timing.buildDuration.inMilliseconds;
      final rasterMs = timing.rasterDuration.inMilliseconds;
      final totalMs = buildMs + rasterMs;
      _totalFrames++;
      _sumBuildMs += buildMs;
      _sumRasterMs += rasterMs;
      if (totalMs > _maxFrameMs) _maxFrameMs = totalMs;

      if (totalMs >= _severeThresholdMs) {
        _severeFrames++;
        debugLog(
          'JANK[severe]: ${totalMs}ms build=${buildMs}ms raster=${rasterMs}ms '
          'vsync=${timing.vsyncOverhead.inMilliseconds}ms',
        );
      } else if (totalMs >= _jankThresholdMs) {
        _jankFrames++;
        debugLog(
          'JANK: ${totalMs}ms build=${buildMs}ms raster=${rasterMs}ms '
          'vsync=${timing.vsyncOverhead.inMilliseconds}ms',
        );
      }
    }
  }

  void mark(String event) {
    final elapsed = _sessionStart == null
        ? 0
        : DateTime.now().difference(_sessionStart!).inMilliseconds;
    debugLog('PERF[$elapsed ms]: $event');
  }

  void _printSummary({required String label}) {
    if (_totalFrames == 0) return;
    final elapsed = _sessionStart == null
        ? 0
        : DateTime.now().difference(_sessionStart!).inSeconds;
    final avgBuild = (_sumBuildMs / _totalFrames).round();
    final avgRaster = (_sumRasterMs / _totalFrames).round();
    final jankPct = ((_jankFrames + _severeFrames) * 100 / _totalFrames)
        .toStringAsFixed(1);
    debugLog(
      'PERF SUMMARY[$label ${elapsed}s]: frames=$_totalFrames '
      'jank=${_jankFrames + _severeFrames} (${jankPct}%) '
      'severe=$_severeFrames max=$_maxFrameMs ms '
      'avgBuild=${avgBuild}ms avgRaster=${avgRaster}ms',
    );
  }
}
