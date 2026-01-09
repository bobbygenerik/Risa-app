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
      {void Function(int parsedChannels)? onProgress,
      void Function(List<Map<String, dynamic>> chunk)? onChannelsChunk}) async {
    // Cancel previous load if running
    cancelCurrent();
    final token = CancelToken();
    _currentToken = token;

    try {
      final result = await parsePlaylistCancelable(
          url: url,
          onProgress: (count) {
            if (onProgress != null) {
              onProgress(count);
            }
          },
          onChannelsChunk: onChannelsChunk,
          cancelToken: token);

      return result;
    } finally {
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
