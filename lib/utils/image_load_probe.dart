import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:iptv_player/utils/debug_helper.dart';

class ImageLoadProbe {
  static const Duration _summaryInterval = Duration(seconds: 30);
  static Timer? _summaryTimer;
  static int _successCount = 0;
  static int _failureCount = 0;
  static int _eventsSinceSummary = 0;
  static final Map<String, int> _failuresByHost = {};
  static final Map<String, int> _failuresByKind = {};
  static final Map<String, int> _failuresByError = {};
  static final Map<String, int> _failureLogBudgetByHost = {};

  static bool get _enabled => kDebugMode || kProfileMode;

  static void recordSuccess(String url, String kind) {
    if (!_enabled || url.isEmpty) return;
    _successCount++;
    _eventsSinceSummary++;
    _ensureSummaryTimer();
  }

  static void recordFailure(String url, String kind, Object error) {
    if (!_enabled || url.isEmpty) return;
    _failureCount++;
    _eventsSinceSummary++;
    final host = _hostFor(url);
    _failuresByHost[host] = (_failuresByHost[host] ?? 0) + 1;
    _failuresByKind[kind] = (_failuresByKind[kind] ?? 0) + 1;
    final errorKey = error.runtimeType.toString();
    _failuresByError[errorKey] = (_failuresByError[errorKey] ?? 0) + 1;
    _ensureSummaryTimer();
    _maybeLogFailure(host, kind, error);
  }

  static void _ensureSummaryTimer() {
    _summaryTimer ??= Timer.periodic(_summaryInterval, (_) => _logSummary());
  }

  static void _maybeLogFailure(String host, String kind, Object error) {
    final budget = (_failureLogBudgetByHost[host] ?? 0) + 1;
    _failureLogBudgetByHost[host] = budget;
    if (budget <= 3 || budget % 50 == 0) {
      debugLog(
        'ImageLoadProbe: fail kind=$kind host=$host error=${error.runtimeType}',
      );
    }
  }

  static void _logSummary() {
    if (_eventsSinceSummary == 0) return;
    final topHosts = _topEntries(_failuresByHost);
    final topKinds = _topEntries(_failuresByKind);
    final topErrors = _topEntries(_failuresByError);
    debugLog(
      'ImageLoadProbe: summary ok=$_successCount fail=$_failureCount '
      'hosts=$topHosts kinds=$topKinds errors=$topErrors',
    );
    _eventsSinceSummary = 0;
  }

  static String _hostFor(String url) {
    try {
      final uri = Uri.parse(url);
      return uri.host.isNotEmpty ? uri.host : 'unknown';
    } catch (_) {
      return 'invalid';
    }
  }

  static String _topEntries(Map<String, int> map) {
    if (map.isEmpty) return 'none';
    final entries = map.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    final top = entries.take(3).map((e) => '${e.key}:${e.value}').join(', ');
    return top.isEmpty ? 'none' : top;
  }
}
