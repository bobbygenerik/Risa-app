import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:iptv_player/services/epg/epg_file_cache.dart';
import 'package:iptv_player/services/epg/epg_service_init_deps.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Progressive EPG startup, refresh, and data clearing.
class EpgServiceInit {
  EpgServiceInit({required EpgServiceInitDeps deps}) : _deps = deps;

  final EpgServiceInitDeps _deps;

  static final RegExp _schemeValidRe = RegExp(r'^[A-Za-z]');
  static const Duration _forceRefreshCooldown = Duration(minutes: 1);

  DateTime? _lastInitAttempt;
  DateTime? _lastForceRefreshRequested;

  /// Quick startup initialization that prioritizes cached data.
  Future<void> quickStart() async {
    if (_deps.hasParsed() || _deps.hasLoadedPrograms()) {
      debugLog(
          'EPG: quickStart skipped (already have data: hasParsed=${_deps.hasParsed()}, hasPrograms=${_deps.hasLoadedPrograms()}, channels=${_deps.programsByChannelKeyCount()})');
      return;
    }

    if (_deps.isLoading() ||
        _deps.isDownloading() ||
        _deps.isParsing() ||
        _deps.initInFlight()) {
      debugLog('EPG: quickStart skipped (already loading)');
      return;
    }

    debugLog('EPG: Quick start initialization');

    try {
      await _deps.loadNormalizedMappingFromPrefs();
      await initializeProgressively(forceRefresh: false);
    } catch (e) {
      debugLog('EPG: Quick start failed: $e');
    }
  }

  /// Force refresh EPG data with improved error handling.
  Future<void> forceRefresh() async {
    debugLog('EPG: Force refresh requested');
    await initializeProgressively(forceRefresh: true);
  }

  Future<void> initialize({bool forceRefresh = false}) async {
    await initializeProgressively(forceRefresh: forceRefresh);
  }

  /// Progressive initialization: load current day first, then remaining days in background.
  Future<void> initializeProgressively({bool forceRefresh = false}) async {
    await _deps.restoreDbIfClosed();
    if (!forceRefresh &&
        (_deps.isLoading() ||
            _deps.isDownloading() ||
            _deps.isParsing() ||
            _deps.initInFlight())) {
      debugLog('EPG: Progressive init skipped (already loading or in flight)');
      return;
    }
    // Only skip when the full guide has actually been parsed (or is parsing).
    // A handful of DB-cached programs from lazy per-channel loads in a prior
    // session must NOT short-circuit the full parse — otherwise the channel
    // index never populates and most channels fail epgId resolution.
    if (!forceRefresh && (_deps.hasParsed() || _deps.isParsing())) {
      debugLog(
          'EPG: Progressive init skipped (hasParsed=${_deps.hasParsed()}, hasPrograms=${_deps.hasLoadedPrograms()}, isParsing=${_deps.isParsing()}, channels=${_deps.programsByChannelKeyCount()})');
      return;
    }
    if (forceRefresh && _lastForceRefreshRequested != null) {
      final since = DateTime.now().difference(_lastForceRefreshRequested!);
      if (since < _forceRefreshCooldown &&
          _deps.hasLoadedPrograms() &&
          _deps.hasParsed()) {
        debugLog(
            'EPG: Force refresh skipped (cooldown ${since.inSeconds}s, programs loaded)');
        return;
      }
    }

    final now = DateTime.now();
    if (!forceRefresh &&
        _lastInitAttempt != null &&
        now.difference(_lastInitAttempt!).inSeconds < 3) {
      debugLog('EPG: Progressive init skipped (throttled)');
      return;
    }
    _lastInitAttempt = now;
    if (forceRefresh) {
      _lastForceRefreshRequested = now;
    }
    _deps.setInitInFlight(true);

    try {
      debugLog('EPG: Starting progressive EPG initialization...');

      try {
        await _deps.initDb().timeout(const Duration(seconds: 5));
      } catch (e) {
        debugLog('EPG: DB init failed (continuing without DB cache): $e');
        _deps.handleDbError(e);
      }

      final prefs = await SharedPreferences.getInstance();

      final userCacheHours =
          prefs.getInt('epg_cache_duration') ?? EpgFileCache.defaultCacheHours;
      _deps.setCacheDuration(Duration(hours: userCacheHours));
      debugLog('EPG: Using cache duration of $userCacheHours hours');

      final customEpgUrl = prefs.getString('custom_epg_url');
      final storedEpgUrl = prefs.getString('epg_url');
      var epgUrl = customEpgUrl;
      if (epgUrl == null || epgUrl.isEmpty) {
        epgUrl = storedEpgUrl;
      }
      epgUrl = epgUrl?.trim();
      _deps.setEpgUrl(epgUrl);

      final secondaryRaw = prefs.getString('secondary_epg_url')?.trim();
      _deps.setSecondaryEpgUrl(
        secondaryRaw != null && secondaryRaw.isNotEmpty ? secondaryRaw : null,
      );

      if (epgUrl != null && epgUrl.isNotEmpty) {
        final normalized = EpgFileCache.normalizeEpgUrl(epgUrl);
        if (normalized != epgUrl) {
          epgUrl = normalized;
          _deps.setEpgUrl(epgUrl);
          if (customEpgUrl != null && customEpgUrl.isNotEmpty) {
            await prefs.setString('custom_epg_url', normalized);
          } else if (storedEpgUrl != null && storedEpgUrl.isNotEmpty) {
            await prefs.setString('epg_url', normalized);
          }
        }

        final uri = Uri.tryParse(epgUrl);
        final scheme = uri?.scheme ?? '';
        final schemeValid =
            scheme.isNotEmpty && _schemeValidRe.hasMatch(scheme);
        if (uri == null || !schemeValid) {
          _deps.setError('Invalid EPG URL');
          debugLog('EPG: Invalid URL configured: $epgUrl');
          _deps.resetLoadingState();
          _deps.notifyListeners();
          return;
        }
      }

      await _deps.handleCacheUrlChange(
        prefs,
        epgUrl ?? '',
        onUrlChanged: onEpgCacheUrlChanged,
      );
      _deps.syncManualMappingsIdentity();
      await _deps.loadManualMappingsFromPrefs(prefs);
      _deps.applyManualMappingsToService();
      _deps.setEpgFutureHours(_deps.initialFutureHours);
      _deps.setExtendedWindowScheduled(false);
      _deps.setExtendingWindow(false);

      if (epgUrl != null && epgUrl.isNotEmpty) {
        debugLog('EPG: Progressive initialization with URL: $epgUrl');

        await _deps.loadNormalizedMappingFromPrefs();
        await _deps.loadMappingsFromDb();

        await _deps.loadChannelList(
          forceRefresh: forceRefresh,
          allowStaleCache: !forceRefresh,
          currentDayOnly: true,
        );

        unawaited(loadRemainingDaysInBackground());
      } else {
        debugLog('EPG: No URL configured (checked custom_epg_url and epg_url)');
        _deps.setError('No EPG URL configured');
        _deps.resetLoadingState();
        _deps.notifyListeners();
      }

      debugLog(
          'EPG: Progressive init complete - URL: ${_deps.epgUrl()}, Available channels: ${_deps.availableChannelCount()}, Loaded channels: ${_deps.programsByChannelKeyCount()}');
    } catch (e) {
      debugLog('EPG: Progressive initialization error: $e');
      _deps.setError('Failed to initialize EPG service: $e');
      _deps.resetLoadingState();
      _deps.notifyListeners();
    } finally {
      _deps.setInitInFlight(false);
      if (_deps.pendingAllowedRefresh() &&
          _deps.hasAllowedChannels() &&
          !_deps.isLoading() &&
          !_deps.isDownloading() &&
          !_deps.isParsing()) {
        _deps.setPendingAllowedRefresh(false);
        unawaited(initializeProgressively(forceRefresh: false));
      }
    }
  }

  /// Load remaining days in background (non-blocking).
  Future<void> loadRemainingDaysInBackground() async {
    try {
      debugLog('EPG: Loading remaining EPG days in background...');

      await Future.delayed(const Duration(milliseconds: 500));

      if ((_deps.hasLoadedPrograms() &&
              _deps.programsByChannelKeyCount() > 100) ||
          _deps.isLoading() ||
          _deps.isParsing()) {
        debugLog(
            'EPG: Skipping background load - already have ${_deps.programsByChannelKeyCount()} channels (isLoading=${_deps.isLoading()}, isParsing=${_deps.isParsing()})');
        return;
      }

      final start = DateTime.now();
      await _deps.loadChannelList(
        forceRefresh: false,
        allowStaleCache: true,
        fromBackgroundRefresh: true,
        currentDayOnly: false,
      );
      debugLog(
          'EPG: Background EPG load took ${DateTime.now().difference(start).inMilliseconds}ms');

      debugLog('EPG: ✓ Full EPG loaded in background');
      _deps.notifyListeners();
    } catch (e) {
      debugLog('EPG: Background EPG loading error: $e');
    }
  }

  Future<void> onEpgCacheUrlChanged() async {
    await _deps.saveNormalizedMappingToPrefs(null);
    _deps.setNormalizedChannels(null);
    _deps.clearAvailableChannels();
    _deps.resetChannelMatcherIndex();
    _deps.clearInternalMapping();
    _deps.clearProgramsByChannel();
    _deps.invalidateProgramIndexCache();
    _deps.setHasParsed(false);
  }

  Future<void> clearAllData({
    bool clearUrls = true,
    bool clearSavedPlaylists = true,
  }) async {
    _deps.resetLoadingState();
    _deps.setError(null);
    _deps.setHasParsed(false);
    _deps.setEpgUrl(null);
    _deps.setPendingAllowedRefresh(false);
    _deps.setExtendedWindowScheduled(false);
    _deps.setExtendingWindow(false);
    _deps.setLastDownloadTime(null);
    _deps.clearAvailableChannels();
    _deps.clearAttemptedLoads();
    _deps.resetChannelMatcherIndex();
    _deps.clearInternalMapping();
    _deps.setNormalizedChannels(null);

    _deps.clearNormalizeCache();
    _deps.clearManualMappingsStore();
    _deps.clearProgramsByChannel();
    _deps.invalidateProgramIndexCache();
    _deps.clearProgramFailureTracker();
    _deps.resetMatchDiagnostics();
    _deps.notifyListeners();

    try {
      await _deps.clearEpgDb();
    } catch (e) {
      debugLog('EPG: Failed to clear DB cache: $e');
    }

    try {
      await _deps.purgeCacheFiles();
    } catch (e) {
      debugLog('EPG: Failed to delete cache files: $e');
    }

    try {
      final dir = await getApplicationDocumentsDirectory();
      final file =
          File('${dir.path}/${_deps.normalizedMapFileNameForPlaylist()}');
      if (await file.exists()) await file.delete();
      if (_deps.normalizedMapFileNameForPlaylist() !=
          _deps.normalizedMapFileName) {
        final legacy = File('${dir.path}/${_deps.normalizedMapFileName}');
        if (await legacy.exists()) await legacy.delete();
      }
      final displayFile =
          File('${dir.path}/${_deps.displayNamesMapFileNameForPlaylist()}');
      if (await displayFile.exists()) await displayFile.delete();
      if (_deps.displayNamesMapFileNameForPlaylist() !=
          _deps.displayNamesMapFileName) {
        final legacyDisplay =
            File('${dir.path}/${_deps.displayNamesMapFileName}');
        if (await legacyDisplay.exists()) await legacyDisplay.delete();
      }
    } catch (e) {
      debugLog('EPG: Failed to delete normalized mapping file: $e');
    }

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_deps.epgCacheTimeKey);
      await prefs.remove(_deps.epgCacheUrlKey);
      await prefs.remove(_deps.manualMappingsKey);
      final scopedKey = _deps.manualMappingsStorageKey();
      if (scopedKey != _deps.manualMappingsKey) {
        await prefs.remove(scopedKey);
      }
      if (clearUrls) {
        await prefs.remove('custom_epg_url');
        await prefs.remove('epg_url');
        await prefs.remove('secondary_epg_url');
      }

      final keys = prefs.getKeys();
      for (final key in keys) {
        if (key.startsWith('m3u_epg_url_') ||
            key.startsWith('m3u_secondary_epg_') ||
            key.startsWith('xtream_epg_url_') ||
            key.startsWith('xtream_secondary_epg_')) {
          await prefs.remove(key);
        }
      }

      if (clearSavedPlaylists) {
        final playlistsJson = prefs.getString('saved_playlists');
        if (playlistsJson != null && playlistsJson.trim().isNotEmpty) {
          final List<dynamic> decoded = jsonDecode(playlistsJson);
          final updated = decoded.map((entry) {
            final map = Map<String, dynamic>.from(entry as Map);
            map['epgUrl'] = null;
            map['epgUrlSecondary'] = null;
            return map;
          }).toList();
          await prefs.setString('saved_playlists', jsonEncode(updated));
        }
      }
    } catch (e) {
      debugLog('EPG: Failed to clear EPG prefs: $e');
    }
  }
}
