import 'dart:async';
import 'package:flutter/foundation.dart';

mixin ThrottledNotifier on ChangeNotifier {
  Timer? _notifyTimer;
  Duration get notifyDelay => const Duration(milliseconds: 80);

  /// Schedule a debounced notification. Cancels previous pending notify.
  void notifyListenersThrottled([Duration? delay]) {
    _notifyTimer?.cancel();
    _notifyTimer = Timer(delay ?? notifyDelay, () {
      super.notifyListeners();
      _notifyTimer = null;
    });
  }

  @override
  void dispose() {
    _notifyTimer?.cancel();
    super.dispose();
  }
}
