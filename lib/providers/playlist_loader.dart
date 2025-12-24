import 'dart:async';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:iptv_player/providers/playlist_isolate.dart';

/// PlaylistLoader: downloads playlist to a temp file (streaming), then
/// parses it in a spawned isolate with progress and cancellation support.
class PlaylistLoader {
  CancelToken? _currentToken;

  /// Load playlist from URL, streaming to temporary file to avoid OOM.
  /// onProgress receives parsed channel counts as they arrive from parser.
  Future<Map<String, dynamic>> loadFromUrl(String url,
      {void Function(int parsedChannels)? onProgress}) async {
    // Cancel previous load if running
    cancelCurrent();
    final token = CancelToken();
    _currentToken = token;

    final tmpDir = Directory.systemTemp;
    final tmpFile = File(p.join(tmpDir.path,
        'risa_playlist_${DateTime.now().millisecondsSinceEpoch}.m3u'));
    final client = HttpClient();
    try {
      final req = await client.getUrl(Uri.parse(url));
      final resp = await req.close();
      if (resp.statusCode != 200) throw Exception('HTTP ${resp.statusCode}');

      final sink = tmpFile.openWrite();
      int totalBytes = 0;
      await for (final chunk in resp) {
        if (token.isCancelled) {
          await sink.close();
          try {
            await tmpFile.delete();
          } catch (_) {}
          throw Exception('Cancelled');
        }
        totalBytes += chunk.length;
        sink.add(chunk);
        // Yield periodically
        if (totalBytes % (1024 * 64) == 0) {
          await Future.delayed(Duration(milliseconds: 1));
        }
      }
      await sink.close();

      // Parse file in isolate with progress forwarding
      final result = await parsePlaylistCancelable(
          filePath: tmpFile.path,
          onProgress: (count) {
            if (onProgress != null) {
              onProgress(count);
            }
          },
          cancelToken: token);

      // Clean up temporary file
      try {
        await tmpFile.delete();
      } catch (_) {}

      return result;
    } finally {
      client.close(force: true);
      if (_currentToken == token) {
        _currentToken = null;
      }
    }
  }

  /// Cancel any currently running load
  void cancelCurrent() {
    try {
      _currentToken?.cancel();
    } catch (_) {}
    _currentToken = null;
  }
}
