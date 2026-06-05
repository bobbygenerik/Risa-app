part of 'epg_file_cache.dart';

extension EpgFileCacheSecondary on EpgFileCache {
  static const String secondaryCacheTimeKey = 'epg_cache_secondary_time';
  static const String secondaryCacheUrlKey = 'epg_cache_secondary_url';

  Future<File> getSecondaryCacheFile() async {
    final dir = await getTemporaryDirectory();
    return File('${dir.path}/epg_cache_secondary.xml.gz');
  }

  Future<bool> isSecondaryCacheValid({bool allowStale = false}) async {
    try {
      final file = await getSecondaryCacheFile();
      if (!await file.exists()) return false;
      final length = await file.length();
      if (length == 0) return false;
      if (allowStale) return true;
      final modified = await file.lastModified();
      return DateTime.now().difference(modified) < cacheDuration;
    } catch (e) {
      debugLog('EPG: Secondary cache validity check failed: $e');
      return false;
    }
  }

  Future<void> purgeSecondaryCacheFiles() async {
    try {
      final file = await getSecondaryCacheFile();
      if (await file.exists()) await file.delete();
    } catch (e) {
      debugLog('EPG: Secondary cache purge failed: $e');
    }
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(secondaryCacheTimeKey);
      await prefs.remove(secondaryCacheUrlKey);
    } catch (e) {
      debugLog('EPG: Secondary cache prefs purge failed: $e');
    }
  }

  Future<DateTime?> downloadSecondaryIfNeeded({
    required String? epgUrl,
    required bool forceRefresh,
    DateTime? lastDownloadTime,
  }) async {
    if (epgUrl == null || epgUrl.isEmpty) {
      debugLog('EPG: Secondary download skipped (no URL).');
      return lastDownloadTime;
    }

    final normalizedUrl = EpgFileCache.normalizeEpgUrl(epgUrl);
    final prefs = await SharedPreferences.getInstance();
    final cachedUrl = prefs.getString(secondaryCacheUrlKey) ?? '';
    if (cachedUrl.isNotEmpty && cachedUrl != normalizedUrl) {
      debugLog('EPG: Secondary URL changed; clearing secondary cache.');
      await purgeSecondaryCacheFiles();
    }

    if (!forceRefresh) {
      if (await isSecondaryCacheValid(allowStale: false)) {
        debugLog('EPG: Secondary cache valid, skipping download.');
        return lastDownloadTime;
      }
      if (lastDownloadTime != null) {
        final elapsed = DateTime.now().difference(lastDownloadTime);
        if (elapsed.inSeconds < 30) {
          return lastDownloadTime;
        }
      }
    }

    debugLog('EPG: Downloading secondary EPG...');
    final downloadStart = DateTime.now();
    // dragtvplus-style providers behind Cloudflare return intermittent 5xx
    // (520) and occasional HTML error bodies. A single miss must not blank US
    // locals for the whole session, so retry transient failures with backoff
    // while still failing fast on permanent errors (4xx auth/not-found).
    const maxAttempts = 3;
    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 90)
      ..autoUncompress = false
      ..badCertificateCallback = (cert, host, port) => true;

    try {
      for (var attempt = 1; attempt <= maxAttempts; attempt++) {
        if (attempt > 1) {
          await Future.delayed(Duration(seconds: 2 * (attempt - 1)));
          debugLog('EPG: Secondary download retry $attempt/$maxAttempts...');
        }
        try {
          final request = await client.getUrl(Uri.parse(normalizedUrl));
          request.headers.set(
            'User-Agent',
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
          );
          request.headers.add('Accept-Encoding', 'gzip, deflate');
          final response = await request.close();
          if (response.statusCode != 200) {
            await response.drain<void>().catchError((_) {});
            debugLog(
                'EPG: Secondary fetch failed: HTTP ${response.statusCode}');
            // 5xx is transient (Cloudflare 520 etc.); 4xx is permanent.
            if (response.statusCode >= 500 && attempt < maxAttempts) continue;
            return lastDownloadTime;
          }

          final file = await getSecondaryCacheFile();
          final streamError = await _writeEpgResponseToFile(
            response: response,
            file: file,
            epgUrl: normalizedUrl,
            contentLength: response.contentLength,
            onProgress: (_, {label}) {},
          );
          if (streamError != null) {
            debugLog('EPG: Secondary download body error: $streamError');
            if (await file.exists()) await file.delete();
            // A 200 with an HTML/empty body is usually a transient edge error.
            if (attempt < maxAttempts) continue;
            return lastDownloadTime;
          }

          final validationError = await _epgValidateDownloadedFile(file);
          if (validationError != null) {
            debugLog('EPG: Secondary validation failed: $validationError');
            if (await file.exists()) await file.delete();
            if (attempt < maxAttempts) continue;
            return lastDownloadTime;
          }

          final now = DateTime.now();
          await prefs.setString(secondaryCacheTimeKey, now.toIso8601String());
          await prefs.setString(secondaryCacheUrlKey, normalizedUrl);
          debugLog(
              'EPG: Secondary download complete (${(await file.length()) ~/ 1024} KB, ${DateTime.now().difference(downloadStart).inMilliseconds}ms)');
          return now;
        } catch (e) {
          debugLog('EPG: Secondary download attempt $attempt failed: $e');
          if (attempt < maxAttempts) continue;
          return lastDownloadTime;
        }
      }
      return lastDownloadTime;
    } finally {
      client.close();
    }
  }
}
