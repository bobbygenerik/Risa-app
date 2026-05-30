part of 'epg_file_cache.dart';

extension EpgFileCacheStorage on EpgFileCache {
  Future<File> getCacheFile() async {
    final dir = await getTemporaryDirectory();
    return File('${dir.path}/epg_cache.xml.gz');
  }

  Future<File> getCacheBackupFile() async {
    final dir = await getApplicationSupportDirectory();
    return File('${dir.path}/${EpgFileCache.epgCacheBackupFileName}');
  }

  Future<void> purgeCacheFiles() async {
    for (final getter in [getCacheFile, getCacheBackupFile]) {
      try {
        final f = await getter();
        if (await f.exists()) await f.delete();
      } catch (e) {
        debugLog('EPG: cache file purge failed: $e');
      }
    }
  }

  Future<void> restoreCacheFromBackupIfMissing() async {
    try {
      final cacheFile = await getCacheFile();
      if (await cacheFile.exists()) return;
      final backupFile = await getCacheBackupFile();
      if (!await backupFile.exists()) return;
      await backupFile.copy(cacheFile.path);
      debugLog('EPG: Restored cache from backup.');
    } catch (e) {
      debugLog('EPG: Failed to restore cache backup: $e');
    }
  }

  Future<void> backupCacheFile() async {
    try {
      final cacheFile = await getCacheFile();
      if (!await cacheFile.exists()) return;
      final backupFile = await getCacheBackupFile();
      await backupFile.parent.create(recursive: true);
      await cacheFile.copy(backupFile.path);
      debugLog('EPG: Saved cache backup to ${backupFile.path}');
    } catch (e) {
      debugLog('EPG: Failed to backup cache file: $e');
    }
  }

  Future<bool> isCacheValid({bool allowStale = false}) async {
    try {
      final file = await getCacheFile();
      if (!await file.exists()) {
        debugLog('EPG: Cache file does not exist.');
        return false;
      }
      final modified = await file.lastModified();
      final length = await file.length();
      if (length == 0) {
        debugLog('EPG: Cache file is empty.');
        return false;
      }
      final ageMin = DateTime.now().difference(modified).inMinutes;
      final sizeMb = (length / 1024 / 1024).toStringAsFixed(2);
      if (allowStale) {
        debugLog('EPG: Stale cache ok (${ageMin}m, ${sizeMb}MB)');
        return true;
      }
      final isValid = DateTime.now().difference(modified) < cacheDuration;
      debugLog('EPG: Cache ${isValid ? 'valid' : 'stale'} (${ageMin}m, ${sizeMb}MB)');
      return isValid;
    } catch (e) {
      debugLog('EPG: Error checking cache validity: $e');
      return false;
    }
  }

  Future<void> handleCacheUrlChange(
    SharedPreferences prefs,
    String currentUrl, {
    required Future<void> Function() onUrlChanged,
  }) async {
    final cachedUrl = prefs.getString(EpgFileCache.epgCacheUrlKey) ?? '';
    if (currentUrl.isEmpty) return;
    if (cachedUrl.isNotEmpty && cachedUrl != currentUrl) {
      debugLog(
          'EPG: URL changed; clearing cache (old=$cachedUrl, new=$currentUrl)');
      await prefs.remove(EpgFileCache.epgCacheTimeKey);
      await prefs.setString(EpgFileCache.epgCacheUrlKey, currentUrl);
      try {
        final cacheFile = await getCacheFile();
        if (await cacheFile.exists()) await cacheFile.delete();
      } catch (e) {
        debugLog('EPG: Failed to delete cache file: $e');
      }
      await onUrlChanged();
    } else if (cachedUrl.isEmpty) {
      await prefs.setString(EpgFileCache.epgCacheUrlKey, currentUrl);
    }
  }
}
