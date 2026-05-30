import 'dart:io';

import 'package:iptv_player/utils/debug_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Constants and helpers for file-based playlist disk cache.
class ChannelPlaylistCache {
  ChannelPlaylistCache._();

  static const String fileName = 'playlist_cache.m3u';
  static const String filePathPrefsKey = 'cached_playlist_file';
  static const int version = 3;
  static const String versionPrefsKey = 'playlist_cache_version';
  static const String timestampPrefsKey = 'cache_timestamp';
  static const String legacyStringCacheKey = 'cached_playlist';
}

/// Clear both SharedPreferences and file-based playlist cache.
Future<void> clearPlaylistCache() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove(ChannelPlaylistCache.legacyStringCacheKey);
  await prefs.remove(ChannelPlaylistCache.timestampPrefsKey);
  await prefs.remove(ChannelPlaylistCache.versionPrefsKey);

  final cacheFilePath =
      prefs.getString(ChannelPlaylistCache.filePathPrefsKey);
  if (cacheFilePath != null) {
    final file = File(cacheFilePath);
    if (await file.exists()) {
      await file.delete();
    }
    await prefs.remove(ChannelPlaylistCache.filePathPrefsKey);
  }

  debugLog('ChannelProvider: Playlist cache cleared');
}

int playlistCacheVersion(SharedPreferences prefs) =>
    prefs.getInt(ChannelPlaylistCache.versionPrefsKey) ?? 0;

bool isPlaylistCacheVersionStale(SharedPreferences prefs) =>
    playlistCacheVersion(prefs) != ChannelPlaylistCache.version;

String? playlistCacheFilePath(SharedPreferences prefs) =>
    prefs.getString(ChannelPlaylistCache.filePathPrefsKey);

Future<void> persistPlaylistCacheJson({
  required Directory dir,
  required String jsonString,
  required SharedPreferences prefs,
}) async {
  final now = DateTime.now().millisecondsSinceEpoch;
  final cacheFile = File('${dir.path}/${ChannelPlaylistCache.fileName}');
  await cacheFile.writeAsString(jsonString);
  await prefs.setString(ChannelPlaylistCache.filePathPrefsKey, cacheFile.path);
  await prefs.setInt(ChannelPlaylistCache.timestampPrefsKey, now);
  await prefs.setInt(ChannelPlaylistCache.versionPrefsKey, ChannelPlaylistCache.version);
  debugLog('ChannelProvider: Correctly persisted file cache to disk.');
}

Future<void> persistPlaylistCacheFromTempFile({
  required File tempFile,
  required Directory dir,
  required SharedPreferences prefs,
  required int totalBytes,
}) async {
  if (!await tempFile.exists()) return;

  final now = DateTime.now().millisecondsSinceEpoch;
  final cacheFile = File('${dir.path}/${ChannelPlaylistCache.fileName}');
  if (await cacheFile.exists()) {
    await cacheFile.delete();
  }
  await tempFile.rename(cacheFile.path);
  await prefs.setString(ChannelPlaylistCache.filePathPrefsKey, cacheFile.path);
  await prefs.setInt(ChannelPlaylistCache.timestampPrefsKey, now);
  await prefs.setInt(ChannelPlaylistCache.versionPrefsKey, ChannelPlaylistCache.version);
  await prefs.remove(ChannelPlaylistCache.legacyStringCacheKey);
  debugLog(
      'ChannelProvider: Playlist cached to file (${cacheFile.path}, $totalBytes bytes)');
}
