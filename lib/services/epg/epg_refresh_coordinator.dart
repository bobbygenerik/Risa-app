import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/epg/epg_channel_list_loader.dart';
import 'package:iptv_player/services/epg/epg_file_cache.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Callbacks into [IncrementalEpgService] for network refresh and DB persist.
class EpgRefreshCoordinatorDeps {
  const EpgRefreshCoordinatorDeps({
    required this.epgUrl,
    required this.lastDownloadTime,
    required this.setLastDownloadTime,
    required this.refreshInFlight,
    required this.setRefreshInFlight,
    required this.isDownloading,
    required this.setDownloading,
    required this.setParsing,
    required this.setLoading,
    required this.setError,
    required this.setEpgProgress,
    required this.resetEpgProgress,
    required this.hasLoadedPrograms,
    required this.programsByChannel,
    required this.notifyListeners,
    required this.fileCache,
    required this.db,
    required this.channelListLoader,
    required this.epgFutureHours,
    required this.setEpgFutureHours,
    required this.fullFutureHours,
    required this.extendedWindowScheduled,
    required this.setExtendedWindowScheduled,
    required this.extendingWindow,
    required this.setExtendingWindow,
  });

  final String? Function() epgUrl;
  final DateTime? Function() lastDownloadTime;
  final void Function(DateTime? value) setLastDownloadTime;
  final bool Function() refreshInFlight;
  final void Function(bool value) setRefreshInFlight;
  final bool Function() isDownloading;
  final void Function(bool value) setDownloading;
  final void Function(bool value) setParsing;
  final void Function(bool value) setLoading;
  final void Function(String? value) setError;
  final void Function(double value, {String? label}) setEpgProgress;
  final void Function() resetEpgProgress;
  final bool Function() hasLoadedPrograms;
  final Map<String, List<Program>> Function() programsByChannel;
  final void Function() notifyListeners;
  final EpgFileCache fileCache;
  final LocalDbService db;
  final EpgChannelListLoader channelListLoader;
  final int Function() epgFutureHours;
  final void Function(int value) setEpgFutureHours;
  final int fullFutureHours;
  final bool Function() extendedWindowScheduled;
  final void Function(bool value) setExtendedWindowScheduled;
  final bool Function() extendingWindow;
  final void Function(bool value) setExtendingWindow;
}

/// Coordinates EPG download, background refresh, window extension, and DB persist.
class EpgRefreshCoordinator {
  EpgRefreshCoordinator({required EpgRefreshCoordinatorDeps deps}) : _deps = deps;

  final EpgRefreshCoordinatorDeps _deps;

  Future<void> downloadEpgIfNeeded({bool forceRefresh = false}) async {
    _deps.setLastDownloadTime(await _deps.fileCache.downloadIfNeeded(
      epgUrl: _deps.epgUrl(),
      forceRefresh: forceRefresh,
      hasLoadedPrograms: _deps.hasLoadedPrograms(),
      lastDownloadTime: _deps.lastDownloadTime(),
      isDownloading: _deps.isDownloading(),
      setDownloading: _deps.setDownloading,
      setError: _deps.setError,
      onProgress: _deps.setEpgProgress,
      notifyListeners: _deps.notifyListeners,
      onNoUrlConfigured: () {
        _deps.setDownloading(false);
        _deps.setParsing(false);
        _deps.setLoading(false);
        _deps.resetEpgProgress();
        _deps.notifyListeners();
      },
    ));
  }

  Future<void> persistProgramsToDb() async {
    try {
      debugLog('EPG: Persisting programs to DB in background...');
      final programs = _deps.programsByChannel();
      final dbPayload = <String, List<Map<String, dynamic>>>{};
      for (final entry in programs.entries) {
        dbPayload[entry.key] = entry.value
            .map((p) => {
                  'startTs': p.startTime.millisecondsSinceEpoch,
                  'endTs': p.endTime.millisecondsSinceEpoch,
                  'title': p.title,
                  'description': p.description,
                  'imageUrl': p.imageUrl,
                })
            .toList();
      }
      _deps.db.beginBulkWrite();
      try {
        await _deps.db.clearPrograms();
        await _deps.db.insertAllPrograms(dbPayload);
      } finally {
        _deps.db.endBulkWrite();
      }
      debugLog('EPG: Persisted ${programs.length} channels to DB.');
    } catch (e) {
      debugLog('EPG: Failed to persist programs to DB: $e');
    }
  }

  Future<void> refreshFromNetwork() async {
    if (_deps.refreshInFlight()) return;
    final url = _deps.epgUrl();
    if (url == null || url.isEmpty) return;
    final lastDownload = _deps.lastDownloadTime();
    if (lastDownload != null) {
      final since = DateTime.now().difference(lastDownload);
      if (since < _deps.fileCache.cacheDuration) {
        debugLog(
            'EPG: Refresh skipped (cache fresh ${since.inMinutes}m < ${_deps.fileCache.cacheDuration.inMinutes}m)');
        return;
      }
    }
    _deps.setRefreshInFlight(true);
    try {
      await downloadEpgIfNeeded(forceRefresh: false);
      await _deps.channelListLoader.loadChannelList(
        forceRefresh: false,
        allowStaleCache: false,
        fromBackgroundRefresh: true,
      );
    } catch (e) {
      debugLog('EPG: background refresh failed: $e');
    } finally {
      _deps.setRefreshInFlight(false);
    }
  }

  void scheduleEpgWindowExtension({required bool fromBackgroundRefresh}) {
    if (fromBackgroundRefresh) return;
    if (_deps.extendedWindowScheduled() || _deps.extendingWindow()) return;
    if (_deps.epgFutureHours() >= _deps.fullFutureHours) return;
    _deps.setExtendedWindowScheduled(true);
    Future.delayed(const Duration(milliseconds: 800), () async {
      if (_deps.extendingWindow()) return;
      _deps.setExtendingWindow(true);
      try {
        _deps.setEpgFutureHours(_deps.fullFutureHours);
        await _deps.channelListLoader.loadChannelList(
          forceRefresh: false,
          allowStaleCache: true,
          fromBackgroundRefresh: true,
          skipDbLoad: true,
        );
      } catch (e) {
        debugLog('EPG: window extension failed: $e');
      } finally {
        _deps.setExtendingWindow(false);
      }
    });
  }
}
