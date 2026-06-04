import 'dart:convert';
import 'dart:io';

import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Streams JSONL program temp files into memory and optionally the DB.
class EpgProgramIngest {
  const EpgProgramIngest({required EpgProgramIngestDeps deps}) : _deps = deps;

  final EpgProgramIngestDeps _deps;

  Future<void> ingestFromFile(
    String? path, {
    Map<String, List<Program>>? target,
    Set<String>? skipChannels,
    int? totalPrograms,
    bool skipDbWrites = false,
    void Function(int processed, int total)? onProgress,
  }) async {
    if (path == null || path.isEmpty) {
      debugLog('EPG: No program temp file path provided');
      return;
    }
    final file = File(path);
    if (!await file.exists()) {
      debugLog('EPG: Program temp file missing at $path');
      return;
    }

    const int batchSize = 500;
    final Map<String, List<Map<String, dynamic>>> buffer =
        skipDbWrites ? {} : <String, List<Map<String, dynamic>>>{};
    final Map<String, bool> cleared = {};
    final ingestTimer = Stopwatch()..start();
    int totalLines = 0;
    int decodedLines = 0;
    int decodeErrors = 0;
    int skippedEmpty = 0;
    int skippedChannels = 0;
    int skippedMissingId = 0;
    int dbBatchCount = 0;
    int dbBatchMs = 0;
    final nowMs = DateTime.now().millisecondsSinceEpoch;

    final programsByChannel = target ?? _deps.programsByChannel;
    try {
      int processed = 0;
      final yieldClock = Stopwatch()..start();
      // Coalesce listener notifications during ingest. Each notifyListeners
      // rebuilds the entire Live TV tree (every Selector card + per-section
      // getCurrentProgram scans); firing it on every yield produced 100-575ms
      // builds and GC churn on the UI isolate (measured via VM timeline). We
      // still yield often so the isolate breathes, but notify at most ~once
      // per notifyIntervalMs.
      const notifyIntervalMs = 400;
      final notifyClock = Stopwatch()..start();
      await for (final line in file
          .openRead()
          .transform(utf8.decoder)
          .transform(const LineSplitter())) {
        totalLines++;
        if (line.trim().isEmpty) {
          skippedEmpty++;
          continue;
        }
        Map<String, dynamic> data;
        try {
          data = jsonDecode(line) as Map<String, dynamic>;
        } catch (e) {
          decodeErrors++;
          debugLog('EPG: JSONL decode error on line $totalLines: $e');
          continue;
        }
        decodedLines++;

        final epgId =
            (data['epgId'] ?? data['channelId'] ?? '')?.toString() ?? '';
        if (epgId.isEmpty) {
          skippedMissingId++;
          continue;
        }
        if (skipChannels != null && skipChannels.contains(epgId)) {
          skippedChannels++;
          continue;
        }

        final startTs = data['startTs'] as int? ?? 0;
        final endTs = data['endTs'] as int? ?? 0;
        final title = (data['title'] as String?) ?? 'Unknown';

        final catchupUrl =
            _deps.buildCatchupUrl(epgId, startTs, endTs, nowMs: nowMs);
        final program = Program(
          id: '${epgId}_$startTs',
          channelId: epgId,
          title: title,
          description: data['description'] as String?,
          startTime: DateTime.fromMillisecondsSinceEpoch(startTs),
          endTime: DateTime.fromMillisecondsSinceEpoch(endTs),
          imageUrl: data['imageUrl'] as String?,
          category: data['category'] as String?,
          isLive: false,
          canRecord: true,
          catchupUrl: catchupUrl,
        );

        final list = programsByChannel.putIfAbsent(epgId, () => []);
        if (list.length < 80) {
          list.add(program);
        }

        if (!skipDbWrites) {
          final payload = buffer.putIfAbsent(epgId, () => []);
          payload.add({
            'startTs': startTs,
            'endTs': endTs,
            'title': title,
            'description': data['description'],
            'imageUrl': data['imageUrl'],
          });
          if (payload.length >= batchSize && !_deps.isDbDisabled()) {
            try {
              final dbTimer = Stopwatch()..start();
              await _deps.insertPrograms(
                epgId,
                payload,
                clearExisting: cleared[epgId] != false,
              );
              dbBatchMs += dbTimer.elapsedMilliseconds;
              dbBatchCount++;
            } catch (e) {
              _deps.handleDbError(e);
            }
            payload.clear();
            cleared[epgId] = false;
          }
        }

        processed++;
        if (onProgress != null &&
            totalPrograms != null &&
            totalPrograms > 0 &&
            (processed == 500 || processed % 5000 == 0)) {
          onProgress(processed, totalPrograms);
        }
        if (processed == 500 ||
            (processed > 500 &&
                processed % 1000 == 0 &&
                yieldClock.elapsedMilliseconds >= 100)) {
          await Future.delayed(const Duration(milliseconds: 0));
          if (processed == 500 ||
              notifyClock.elapsedMilliseconds >= notifyIntervalMs) {
            _deps.notifyListeners();
            notifyClock.reset();
          }
          yieldClock.reset();
        }
      }

      if (!skipDbWrites && buffer.isNotEmpty && !_deps.isDbDisabled()) {
        try {
          final dbTimer = Stopwatch()..start();
          final keysToClear =
              buffer.keys.where((k) => cleared[k] != false).toList();
          if (keysToClear.isNotEmpty) {
            await _deps.deleteProgramsForEpgIds(keysToClear);
          }
          await _deps.insertAllPrograms(buffer);
          dbBatchMs += dbTimer.elapsedMilliseconds;
          dbBatchCount++;
        } catch (e) {
          _deps.handleDbError(e);
        }
      }
      if (onProgress != null && totalPrograms != null && totalPrograms > 0) {
        onProgress(processed, totalPrograms);
      }
      ingestTimer.stop();
      final totalMs = ingestTimer.elapsedMilliseconds;
      final linesPerSec =
          totalMs > 0 ? (totalLines / (totalMs / 1000)).round() : totalLines;
      debugLog(
          'EPG: Ingest summary totalLines=$totalLines decoded=$decodedLines errors=$decodeErrors skippedEmpty=$skippedEmpty skippedMissingId=$skippedMissingId skippedChannels=$skippedChannels dbBatches=$dbBatchCount dbMs=$dbBatchMs totalMs=$totalMs linesPerSec=$linesPerSec skipDbWrites=$skipDbWrites');
    } catch (e) {
      debugLog('EPG: Failed to ingest programs from temp file: $e');
    } finally {
      try {
        await file.delete();
      } catch (e) {
        debugLog('EPG: temp program file cleanup failed: $e');
      }
    }
  }
}

class EpgProgramIngestDeps {
  const EpgProgramIngestDeps({
    required this.programsByChannel,
    required this.isDbDisabled,
    required this.buildCatchupUrl,
    required this.insertPrograms,
    required this.deleteProgramsForEpgIds,
    required this.insertAllPrograms,
    required this.handleDbError,
    required this.notifyListeners,
  });

  final Map<String, List<Program>> programsByChannel;
  final bool Function() isDbDisabled;
  final String? Function(String epgId, int startTs, int endTs,
      {required int nowMs}) buildCatchupUrl;
  final Future<void> Function(
    String epgId,
    List<Map<String, dynamic>> payload, {
    required bool clearExisting,
  }) insertPrograms;
  final Future<void> Function(List<String> epgIds) deleteProgramsForEpgIds;
  final Future<void> Function(Map<String, List<Map<String, dynamic>>> buffer)
      insertAllPrograms;
  final void Function(Object error) handleDbError;
  final void Function() notifyListeners;
}
