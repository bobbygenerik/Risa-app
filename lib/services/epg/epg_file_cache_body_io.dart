part of 'epg_file_cache.dart';

enum _EpgBodyCheck { xml, empty, notXml, html, rawGzip }

_EpgBodyCheck _classifyEpgBody(
  List<int> buffer, {
  required bool isGzipHeader,
  required bool isGzipExt,
  required bool isDeflateHeader,
}) {
  if (!isGzipHeader &&
      !isGzipExt &&
      !isDeflateHeader &&
      EpgFileCache.looksLikeGzip(buffer)) {
    return _EpgBodyCheck.rawGzip;
  }
  final preview =
      utf8.decode(buffer, allowMalformed: true).trimLeft().toLowerCase();
  if (preview.isEmpty) return _EpgBodyCheck.empty;
  if (!preview.startsWith('<')) return _EpgBodyCheck.notXml;
  if (preview.startsWith('<!doctype html') || preview.startsWith('<html')) {
    return _EpgBodyCheck.html;
  }
  return _EpgBodyCheck.xml;
}

String? _epgBodyCheckError(_EpgBodyCheck check) => switch (check) {
      _EpgBodyCheck.empty => 'EPG response body is empty or unreadable',
      _EpgBodyCheck.notXml => 'EPG response does not start with XML',
      _EpgBodyCheck.html => 'EPG unavailable from provider',
      _ => null,
    };

Future<String?> _writeEpgResponseToFile({
  required HttpClientResponse response,
  required File file,
  required String epgUrl,
  required int contentLength,
  required void Function(double progress, {String? label}) onProgress,
}) async {
  final encHeader =
      response.headers.value('content-encoding')?.toLowerCase() ?? '';
  final isGzipHeader = encHeader.contains('gzip');
  final isDeflateHeader =
      encHeader.contains('deflate') || encHeader.contains('zlib');

  // Strip query parameters without allocating a list of strings
  final qIdx = epgUrl.indexOf('?');
  final baseEpgUrl = qIdx != -1 ? epgUrl.substring(0, qIdx) : epgUrl;
  final isGzipExt = baseEpgUrl.toLowerCase().endsWith('.gz');

  final sink = file.openWrite();
  ByteConversionSink? gzipSink;
  String? streamError;
  var writeRawGzip = false;
  var received = 0;

  Future<void> deletePartialFile() async {
    try {
      if (await file.exists()) await file.delete();
    } catch (e) {
      debugLog('EPG: partial file cleanup failed: $e');
    }
  }

  void writeCheckedBuffer(_EpgBodyCheck check, List<int> buffer) {
    if (check == _EpgBodyCheck.rawGzip) {
      writeRawGzip = true;
      sink.add(buffer);
      return;
    }
    gzipSink ??= gzip.encoder.startChunkedConversion(sink);
    gzipSink!.add(buffer);
  }

  void failBodyCheck(_EpgBodyCheck check) {
    streamError = _epgBodyCheckError(check);
    if (check == _EpgBodyCheck.html) {
      debugLog('EPG: Provider returned HTML error page');
    } else {
      debugLog('EPG: $streamError');
    }
  }

  try {
    Stream<List<int>> stream = response;
    if (isGzipHeader || isGzipExt) {
      stream = stream.transform(gzip.decoder);
    } else if (isDeflateHeader) {
      stream = stream.transform(zlib.decoder);
    }

    final firstBuffer = <int>[];
    var headerChecked = false;
    const requiredInspectBytes = 4096;

    late StreamSubscription<List<int>> sub;
    sub = stream.listen((data) {
      try {
        if (streamError != null) return;
        if (!headerChecked) {
          firstBuffer.addAll(data);
          if (firstBuffer.length >= requiredInspectBytes) {
            final check = _classifyEpgBody(
              firstBuffer,
              isGzipHeader: isGzipHeader,
              isGzipExt: isGzipExt,
              isDeflateHeader: isDeflateHeader,
            );
            if (check == _EpgBodyCheck.rawGzip || check == _EpgBodyCheck.xml) {
              writeCheckedBuffer(check, firstBuffer);
              headerChecked = true;
            } else {
              failBodyCheck(check);
              sub.cancel();
              sink.close();
              deletePartialFile();
            }
          }
        } else if (writeRawGzip) {
          sink.add(data);
        } else {
          gzipSink ??= gzip.encoder.startChunkedConversion(sink);
          gzipSink!.add(data);
        }

        received += data.length;
        final mb = received / (1024 * 1024);
        if (contentLength > 0 &&
            !isGzipHeader &&
            !isGzipExt &&
            !isDeflateHeader) {
          onProgress(
            0.05 + (0.25 * (received / contentLength).clamp(0.0, 1.0)),
            label: 'Downloading EPG (${mb.toStringAsFixed(1)} MB)',
          );
        } else if (received > 0) {
          // Gzip/chunked responses often omit Content-Length; show bytes received.
          final pseudo = (mb / 40).clamp(0.0, 0.24);
          onProgress(
            0.05 + pseudo,
            label: 'Downloading EPG (${mb.toStringAsFixed(1)} MB)',
          );
        }
      } catch (e) {
        debugLog('EPG: Stream chunk handling error: $e');
        try {
          sink.close();
        } catch (_) {}
        deletePartialFile();
      }
    }, onDone: () async {
      if (streamError != null) return;
      if (!headerChecked) {
        final check = _classifyEpgBody(
          firstBuffer,
          isGzipHeader: isGzipHeader,
          isGzipExt: isGzipExt,
          isDeflateHeader: isDeflateHeader,
        );
        if (check == _EpgBodyCheck.rawGzip) {
          writeRawGzip = true;
          sink.add(firstBuffer);
          await sink.close();
          return;
        }
        if (check != _EpgBodyCheck.xml) {
          failBodyCheck(check);
          await sink.close();
          await deletePartialFile();
          return;
        }
        writeCheckedBuffer(check, firstBuffer);
        headerChecked = true;
      }
      if (writeRawGzip) {
        await sink.close();
      } else {
        gzipSink ??= gzip.encoder.startChunkedConversion(sink);
        gzipSink!.close();
        await sink.close();
      }
    });
    await sub.asFuture();
    return streamError;
  } catch (e) {
    debugLog('EPG: Error during download/decompression/check: $e');
    await deletePartialFile();
    return 'EPG download failed: $e';
  }
}
