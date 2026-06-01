import 'dart:async';

import 'package:flutter/foundation.dart';

/// Throttles hero artwork notifier bumps and card row setState rebuilds.
class LiveTvArtworkUpdateThrottle {
  LiveTvArtworkUpdateThrottle({
    required this.heroArtworkVersion,
    required this.isMounted,
    required this.requestRebuild,
  });

  final ValueNotifier<int> heroArtworkVersion;
  final bool Function() isMounted;
  final void Function() requestRebuild;

  Timer? _heroDebounce;
  Timer? _cardRebuildDebounce;

  void onArtworkUpdate() {
    if (!isMounted()) return;
    if (_heroDebounce?.isActive != true) {
      heroArtworkVersion.value++;
      _heroDebounce = Timer(const Duration(milliseconds: 100), () {});
    }
    if (_cardRebuildDebounce?.isActive == true) return;
    _cardRebuildDebounce = Timer(const Duration(milliseconds: 500), () {
      if (isMounted()) requestRebuild();
    });
  }

  void dispose() {
    _heroDebounce?.cancel();
    _cardRebuildDebounce?.cancel();
  }
}
