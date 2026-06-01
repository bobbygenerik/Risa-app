import 'dart:async';

import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Callbacks bridging [ChannelDbRecovery] and [ChannelProvider] DB state.
class ChannelDbRecoveryDeps {
  const ChannelDbRecoveryDeps({
    required this.db,
    required this.getDbReady,
    required this.setDbReady,
    required this.getDbDisabled,
    required this.setDbDisabled,
    required this.getDbReadOnlyRecoveryInFlight,
    required this.setDbReadOnlyRecoveryInFlight,
    required this.getLastDbRecoveryTime,
    required this.setLastDbRecoveryTime,
    required this.getDbClosedRecoveryInFlight,
    required this.setDbClosedRecoveryInFlight,
    required this.getChannelCountDb,
    required this.setChannelCountDb,
    required this.channelMapsNotEmpty,
    required this.invalidateCategoryCaches,
    required this.clearCachedCategories,
    required this.deferredDbInsert,
    required this.updateEpgAllowedChannels,
    required this.scheduleEpgRefresh,
  });

  final LocalDbService db;
  final bool Function() getDbReady;
  final void Function(bool value) setDbReady;
  final bool Function() getDbDisabled;
  final void Function(bool value) setDbDisabled;
  final bool Function() getDbReadOnlyRecoveryInFlight;
  final void Function(bool value) setDbReadOnlyRecoveryInFlight;
  final DateTime? Function() getLastDbRecoveryTime;
  final void Function(DateTime? value) setLastDbRecoveryTime;
  final bool Function() getDbClosedRecoveryInFlight;
  final void Function(bool value) setDbClosedRecoveryInFlight;
  final int Function() getChannelCountDb;
  final void Function(int value) setChannelCountDb;
  final bool Function() channelMapsNotEmpty;
  final void Function() invalidateCategoryCaches;
  final void Function() clearCachedCategories;
  final Future<void> Function() deferredDbInsert;
  final void Function() updateEpgAllowedChannels;
  final void Function({bool forceRefresh}) scheduleEpgRefresh;
}

/// Read-only / closed DB detection and recovery for [ChannelProvider].
class ChannelDbRecovery {
  ChannelDbRecovery(this.deps);

  final ChannelDbRecoveryDeps deps;

  bool isReadOnlyDbError(Object error) {
    final message = error.toString().toLowerCase();
    if (!message.contains('database')) return false;
    return message.contains('read-only') ||
        message.contains('read only') ||
        message.contains('readonly');
  }

  void recoverReadOnlyDb(Object error) {
    if (!isReadOnlyDbError(error) || deps.getDbReadOnlyRecoveryInFlight()) {
      return;
    }
    final now = DateTime.now();
    final lastRecovery = deps.getLastDbRecoveryTime();
    if (lastRecovery != null &&
        now.difference(lastRecovery).inSeconds < 30) {
      debugLog('ChannelProvider: read-only recovery skipped — cooldown active '
          '(${now.difference(lastRecovery).inSeconds}s since last)');
      return;
    }
    deps.setDbReadOnlyRecoveryInFlight(true);
    deps.setLastDbRecoveryTime(now);
    deps.setDbReady(false);
    debugLog('ChannelProvider: Detected read-only DB, attempting recovery');
    unawaited(() async {
      final recovered = await deps.db.recoverFromReadOnly();
      if (recovered) {
        debugLog('ChannelProvider: Recovered read-only DB, rebuilding caches');
        deps.setDbDisabled(false);
        deps.setDbReady(true);
        deps.setChannelCountDb(0);
        deps.invalidateCategoryCaches();
        deps.clearCachedCategories();
        if (deps.channelMapsNotEmpty()) {
          await Future.delayed(const Duration(seconds: 2));
          unawaited(deps.deferredDbInsert());
          deps.updateEpgAllowedChannels();
          deps.scheduleEpgRefresh(forceRefresh: true);
        }
      } else {
        debugLog(
            'ChannelProvider: Failed to recover DB, disabling for session');
        deps.setDbDisabled(true);
        deps.setDbReady(false);
      }
      deps.setDbReadOnlyRecoveryInFlight(false);
    }());
  }

  bool isClosedDbError(Object error) {
    final message = error.toString().toLowerCase();
    return message.contains('database_closed') ||
        message.contains('database closed') ||
        message.contains('not initialized');
  }

  void recoverClosedDb(Object error) {
    if (!isClosedDbError(error) || deps.getDbClosedRecoveryInFlight()) {
      return;
    }
    deps.setDbClosedRecoveryInFlight(true);
    deps.setDbReady(false);
    debugLog('ChannelProvider: Detected closed DB, attempting reopen');
    unawaited(() async {
      try {
        await deps.db.init();
        deps.setDbDisabled(false);
        deps.setDbReady(true);
        deps.setChannelCountDb(0);
      } catch (e) {
        debugLog('ChannelProvider: DB reopen failed: $e');
        deps.setDbReady(false);
        deps.setDbDisabled(true);
      }
      deps.setDbClosedRecoveryInFlight(false);
    }());
  }

  void handleDbError(Object error) {
    recoverReadOnlyDb(error);
    recoverClosedDb(error);
  }

  Future<void> ensureDb() async {
    if (deps.getDbDisabled()) return;
    try {
      await deps.db.init();
      deps.setDbReady(true);
      try {
        deps.setChannelCountDb(await deps.db.channelCount());
      } catch (e) {
        debugLog('ChannelProvider: DB channelCount query failed: $e');
      }
    } catch (e) {
      deps.setDbReady(false);
      debugLog('ChannelProvider: DB init failed: $e');
    }
  }
}
