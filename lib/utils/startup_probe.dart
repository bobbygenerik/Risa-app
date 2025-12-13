import 'package:iptv_player/utils/debug_helper.dart';

/// Simple stopwatch-powered logger to understand app startup sequencing.
class StartupProbe {
  StartupProbe._();

  static final Stopwatch _stopwatch = Stopwatch()..start();

  /// Emit a timestamped marker to logcat (tagged with `startup:` prefix).
  static void mark(String label) {
    debugLog('startup: ${_stopwatch.elapsedMilliseconds}ms - $label');
  }
}
