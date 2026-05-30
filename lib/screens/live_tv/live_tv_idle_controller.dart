import 'dart:async';

import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/utils/memory_manager.dart';

/// Pauses artwork fetches after prolonged inactivity.
class LiveTvIdleController {
  LiveTvIdleController({
    required this.artworkService,
    required this.isMounted,
    required this.isOpeningPlayer,
  });

  final LiveTvArtworkService artworkService;
  final bool Function() isMounted;
  final bool Function() isOpeningPlayer;

  static const Duration idleThreshold = Duration(minutes: 5);
  static const Duration checkInterval = Duration(seconds: 6);

  DateTime lastInteractionAt = DateTime.now();
  bool isIdle = false;
  Timer? _timer;

  void start() {
    _timer ??= Timer.periodic(checkInterval, (_) => _check());
  }

  void stop() {
    _timer?.cancel();
    _timer = null;
  }

  void markInteraction() {
    lastInteractionAt = DateTime.now();
    if (isIdle) {
      _exitIdle();
    }
  }

  void _check() {
    if (!isMounted() || isOpeningPlayer()) return;
    final idleFor = DateTime.now().difference(lastInteractionAt);
    if (!isIdle && idleFor >= idleThreshold) {
      _enterIdle();
    }
  }

  void _enterIdle() {
    isIdle = true;
    artworkService.enterIdleMode();
    MemoryManager.checkMemoryPressure();
  }

  void _exitIdle() {
    isIdle = false;
    artworkService.exitIdleMode();
  }
}
