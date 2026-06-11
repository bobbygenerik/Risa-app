import 'dart:async';

import 'package:flutter/foundation.dart';

/// Throttles hero artwork notifier bumps and card row setState rebuilds.
class LiveTvArtworkUpdateThrottle {
  LiveTvArtworkUpdateThrottle({
    required this.heroArtworkVersion,
    required this.cardArtworkVersion,
    required this.isMounted,
    required this.requestRebuild,
  });

  final ValueNotifier<int> heroArtworkVersion;

  /// Listened to by each visible channel card; bumping it makes cards
  /// re-resolve their artwork without a whole-screen rebuild (the cached
  /// program-type rows reuse widget instances, so a screen setState alone
  /// never reaches them).
  final ValueNotifier<int> cardArtworkVersion;
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
      if (!isMounted()) return;
      cardArtworkVersion.value++;
      requestRebuild();
    });
  }

  void dispose() {
    _heroDebounce?.cancel();
    _cardRebuildDebounce?.cancel();
  }
}
