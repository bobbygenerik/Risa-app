part of 'epg_file_cache.dart';

Future<String?> _epgValidateDownloadedFile(File file) async {
  try {
    final prefix = await EpgFileCache.readDecodedPrefix(file, maxBytes: 16384);
    if (!prefix.startsWith('<')) {
      return 'EPG response does not start with XML';
    }
    if (prefix.startsWith('<!doctype html') || prefix.startsWith('<html')) {
      return 'EPG unavailable from provider';
    }
    if (!prefix.contains('<tv')) {
      return 'EPG does not appear to be XMLTV (missing <tv)';
    }
    return null;
  } catch (e) {
    debugLog('EPG: Post-download content check failed: $e');
    return 'EPG content validation failed';
  }
}

extension EpgFileCacheDownload on EpgFileCache {
  Future<DateTime?> downloadIfNeeded({
    required String? epgUrl,
    required bool forceRefresh,
    required bool hasLoadedPrograms,
    DateTime? lastDownloadTime,
    required bool isDownloading,
    required void Function(bool) setDownloading,
    required void Function(String?) setError,
    required void Function(double progress, {String? label}) onProgress,
    required void Function() notifyListeners,
    required void Function() onNoUrlConfigured,
  }) async {
    if (epgUrl == null || epgUrl.isEmpty) {
      debugLog('EPG: Download skipped, no EPG URL configured.');
      onNoUrlConfigured();
      return lastDownloadTime;
    }

    await restoreCacheFromBackupIfMissing();

    if (forceRefresh) {
      debugLog('EPG: Force refresh - clearing cache timestamp');
      try {
        final prefs = await SharedPreferences.getInstance();
        await prefs.remove(EpgFileCache.epgCacheTimeKey);
        await SmartCacheService.instance.clearCache(forceRefresh: true);
      } catch (e) {
        debugLog('EPG: Failed to clear cache timestamp: $e');
      }
    }

    if (!forceRefresh && lastDownloadTime != null) {
      final elapsed = DateTime.now().difference(lastDownloadTime);
      if (elapsed.inSeconds < 30) {
        final cacheFile = await getCacheFile();
        if (await cacheFile.exists() && await cacheFile.length() > 0) {
          debugLog(
              'EPG: Skipping download - just downloaded ${elapsed.inSeconds}s ago.');
          return lastDownloadTime;
        }
      }
    }

    if (!forceRefresh) {
      if (await isCacheValid(allowStale: true) && hasLoadedPrograms) {
        debugLog('EPG: Using existing cached data for immediate load.');
        return lastDownloadTime;
      }
      if (await isCacheValid(allowStale: false)) {
        debugLog('EPG: Using valid cached file, skipping download.');
        return lastDownloadTime;
      }
    }

    if (isDownloading) {
      debugLog('EPG: Download already in progress.');
      return lastDownloadTime;
    }

    setDownloading(true);
    setError(null);
    notifyListeners();
    onProgress(0.05, label: 'Downloading EPG');
    debugLog('EPG: Starting EPG download from $epgUrl...');
    final downloadStart = DateTime.now();

    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 60)
      ..autoUncompress = false
      ..badCertificateCallback = (cert, host, port) => true;

    var updatedLastDownload = lastDownloadTime;

    try {
      final request = await client.getUrl(Uri.parse(epgUrl));
      request.headers.set('User-Agent',
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36');
      request.headers.add('Accept-Encoding', 'gzip, deflate');

      final response = await request.close();

      if (response.statusCode != 200) {
        final err = 'EPG fetch failed: HTTP ${response.statusCode}';
        setError(err);
        debugLog('EPG: $err');
        final cf = await getCacheFile();
        if (await cf.exists()) await cf.delete();
        return updatedLastDownload;
      }

      final contentTypeHeader =
          response.headers.value('content-type')?.toLowerCase();
      final isXml =
          contentTypeHeader != null && contentTypeHeader.contains('xml');
      final isGzip = contentTypeHeader != null &&
          (contentTypeHeader.contains('gzip') ||
              contentTypeHeader.contains('application/x-gzip'));
      final isAttachment = contentTypeHeader?.contains('attachment') ?? false;
      final isOctetStream =
          contentTypeHeader?.contains('application/octet-stream') ?? false;
      if (!isXml && !isGzip && !isAttachment && !isOctetStream) {
        final err =
            'EPG response is not XML (Content-Type: ${contentTypeHeader ?? 'unknown'})';
        setError(err);
        throw Exception(err);
      }

      final file = await getCacheFile();
      final streamError = await _writeEpgResponseToFile(
        response: response,
        file: file,
        epgUrl: epgUrl,
        contentLength: response.contentLength,
        onProgress: onProgress,
      );
      if (streamError != null) {
        setError(streamError);
        return updatedLastDownload;
      }

      final fileSize = await file.length();
      debugLog(
          'EPG: Download complete (${(fileSize / 1024).toStringAsFixed(2)} KB, ${DateTime.now().difference(downloadStart).inMilliseconds}ms)');
      if (fileSize < 100) {
        setError('Downloaded EPG file is too small');
        if (await file.exists()) await file.delete();
        return updatedLastDownload;
      }

      final validationError = await _epgValidateDownloadedFile(file);
      if (validationError != null) {
        setError(validationError);
        if (await file.exists()) await file.delete();
        return updatedLastDownload;
      }
      updatedLastDownload = DateTime.now();
    } catch (e) {
      debugLog('EPG: Download failed: $e');
      setError('Download failed: $e');
      try {
        final f = await getCacheFile();
        if (await f.exists()) await f.delete();
      } catch (e) {
        debugLog('EPG: final cache file cleanup failed: $e');
      }
    } finally {
      debugLog(
          'EPG: Download flow total ${DateTime.now().difference(downloadStart).inMilliseconds}ms');
      client.close();
      setDownloading(false);
      notifyListeners();
    }

    return updatedLastDownload;
  }
}
