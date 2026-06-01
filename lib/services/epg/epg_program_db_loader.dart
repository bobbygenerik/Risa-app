import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/epg/epg_normalize_cache.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Loads per-channel EPG programs from the local DB into memory.
class EpgProgramDbLoader {
  const EpgProgramDbLoader({required EpgProgramDbLoaderDeps deps})
      : _deps = deps;

  final EpgProgramDbLoaderDeps _deps;

  Future<void> loadPrograms(String epgId) async {
    try {
      if (_deps.isDbDisabled()) {
        return;
      }
      if (!_deps.isDbReady()) {
        return;
      }
      final nowMs = DateTime.now().millisecondsSinceEpoch;
      final normalized = EpgNormalizeCache.normalizeForFilter(epgId);
      final catchupHours = _deps.catchupHoursByNormalizedId[normalized] ?? 0;
      final startMs =
          catchupHours > 0 ? nowMs - (catchupHours * 3600000) : nowMs;
      final endMs = nowMs + (_deps.epgFutureWindowHours * 3600000);
      final rows = await _deps.getProgramsForEpgId(
        epgId,
        startMs: startMs,
        endMs: endMs,
        limit: 400,
      );
      if (rows.isEmpty) return;
      final programs = rows.map((r) {
        final startTs = r['startTs'] as int? ?? 0;
        final endTs = r['endTs'] as int? ?? 0;
        final catchupUrl =
            _deps.buildCatchupUrl(epgId, startTs, endTs, nowMs: nowMs);
        return Program(
          id: '${epgId}_$startTs',
          channelId: epgId,
          title: (r['title'] as String?) ?? '',
          description: r['description'] as String?,
          startTime: DateTime.fromMillisecondsSinceEpoch(startTs),
          endTime: DateTime.fromMillisecondsSinceEpoch(endTs),
          imageUrl: r['imageUrl'] as String?,
          category: null,
          isLive: null,
          canRecord: null,
          catchupUrl: catchupUrl,
        );
      }).toList();
      _deps.programsByChannel[epgId] = programs;
      debugLog('EPG: Loaded ${programs.length} programs for $epgId from DB');
      if (programs.isNotEmpty) {
        _deps.registerAvailableChannel(epgId);
        _deps.notifyListeners();
      }
    } catch (e) {
      debugLog('EPG: Failed to load programs from DB for $epgId: $e');
      _deps.handleDbError(e);
    }
  }

  Future<void> loadProgramsBatch(List<String> epgIds) async {
    try {
      if (!_deps.isDbReady()) {
        debugLog(
            'EPG: _loadProgramsFromDbBatch - DB not ready, initializing...');
        await _deps.initDb();
      }

      debugLog(
          'EPG: _loadProgramsFromDbBatch called with ${epgIds.length} epgIds, dbReady=${_deps.isDbReady()}');

      if (_deps.isDbDisabled()) {
        debugLog('EPG: _loadProgramsFromDbBatch returning early - DB disabled');
        _deps.cancelBatchTimer();
        return;
      }

      final nowMs = DateTime.now().millisecondsSinceEpoch;
      final endMs = nowMs + (_deps.epgFutureWindowHours * 3600000);

      const maxCatchupMs = 7 * 24 * 3600000;
      final startMs = nowMs - maxCatchupMs;

      final rows = await _deps.getProgramsForEpgIds(
        epgIds,
        startMs: startMs,
        endMs: endMs,
      );

      debugLog(
          'EPG: DB query returned ${rows.length} program rows for ${epgIds.length} channels');
      if (rows.isEmpty) {
        debugLog('EPG: No programs found in DB for requested channels');
        return;
      }

      final byId = <String, List<Program>>{};

      for (final r in rows) {
        final epgId = r['epgId'] as String;
        final startTs = r['startTs'] as int? ?? 0;
        final endTs = r['endTs'] as int? ?? 0;

        final normalized = EpgNormalizeCache.normalizeForFilter(epgId);
        final catchupHours = _deps.catchupHoursByNormalizedId[normalized] ?? 0;
        final safeStart =
            catchupHours > 0 ? nowMs - (catchupHours * 3600000) : nowMs;

        if (endTs < safeStart) continue;

        final catchupUrl =
            _deps.buildCatchupUrl(epgId, startTs, endTs, nowMs: nowMs);

        byId.putIfAbsent(epgId, () => []).add(Program(
              id: '${epgId}_$startTs',
              channelId: epgId,
              title: (r['title'] as String?) ?? '',
              description: r['description'] as String?,
              startTime: DateTime.fromMillisecondsSinceEpoch(startTs),
              endTime: DateTime.fromMillisecondsSinceEpoch(endTs),
              imageUrl: r['imageUrl'] as String?,
              category: null,
              isLive: null,
              canRecord: null,
              catchupUrl: catchupUrl,
            ));
      }

      var added = false;
      for (final entry in byId.entries) {
        _deps.programsByChannel[entry.key] = entry.value;
        _deps.registerAvailableChannel(entry.key);
        added = true;
      }

      if (added) {
        debugLog('EPG: Batch loaded programs for ${byId.length} channels');
        _deps.notifyListeners();
      }
    } catch (e) {
      debugLog('EPG: Failed to load batch programs from DB: $e');
      _deps.cancelBatchTimer();
      _deps.handleDbError(e);
    }
  }
}

class EpgProgramDbLoaderDeps {
  const EpgProgramDbLoaderDeps({
    required this.programsByChannel,
    required this.catchupHoursByNormalizedId,
    required this.epgFutureWindowHours,
    required this.isDbDisabled,
    required this.isDbReady,
    required this.initDb,
    required this.getProgramsForEpgId,
    required this.getProgramsForEpgIds,
    required this.buildCatchupUrl,
    required this.registerAvailableChannel,
    required this.notifyListeners,
    required this.cancelBatchTimer,
    required this.handleDbError,
  });

  final Map<String, List<Program>> programsByChannel;
  final Map<String, int> catchupHoursByNormalizedId;
  final int epgFutureWindowHours;
  final bool Function() isDbDisabled;
  final bool Function() isDbReady;
  final Future<void> Function() initDb;
  final Future<List<Map<String, dynamic>>> Function(
    String epgId, {
    required int startMs,
    required int endMs,
    required int limit,
  }) getProgramsForEpgId;
  final Future<List<Map<String, dynamic>>> Function(
    List<String> epgIds, {
    required int startMs,
    required int endMs,
  }) getProgramsForEpgIds;
  final String? Function(String epgId, int startTs, int endTs,
      {required int nowMs}) buildCatchupUrl;
  final void Function(String epgId) registerAvailableChannel;
  final void Function() notifyListeners;
  final void Function() cancelBatchTimer;
  final void Function(Object error) handleDbError;
}
