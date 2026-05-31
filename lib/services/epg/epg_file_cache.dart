import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:iptv_player/services/smart_cache_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'epg_file_cache_body_io.dart';
part 'epg_file_cache_storage.dart';
part 'epg_file_cache_download.dart';
part 'epg_file_cache_secondary.dart';

/// On-disk EPG XML cache: download, gzip storage, backup, and validity.
class EpgFileCache {
  static const String epgCacheTimeKey = 'epg_cache_time';
  static const String epgCacheUrlKey = 'epg_cache_url';
  static const String epgCacheBackupFileName = 'epg_cache_backup.xml.gz';
  static const int defaultCacheHours = 6;

  static final RegExp _httpSchemeRe =
      RegExp(r'https?://', caseSensitive: false);

  Duration cacheDuration = const Duration(hours: defaultCacheHours);

  static String normalizeEpgUrl(String input) {
    var url = input.trim().replaceAll('\uFEFF', '');
    while (url.startsWith('"') || url.startsWith("'")) {
      url = url.substring(1);
    }
    while (url.endsWith('"') || url.endsWith("'")) {
      url = url.substring(0, url.length - 1);
    }
    final httpIndex = url.indexOf(_httpSchemeRe);
    if (httpIndex > 0) url = url.substring(httpIndex);
    if (url.startsWith('//')) url = 'https:$url';
    if (!url.contains('://')) url = 'https://$url';
    return url;
  }

  static bool looksLikeGzip(List<int> bytes) =>
      bytes.length >= 2 && bytes[0] == 0x1f && bytes[1] == 0x8b;

  static Future<String> readDecodedPrefix(File file,
      {int maxBytes = 16384}) async {
    final buffer = <int>[];
    final stream = file.openRead();
    final decoded = file.path.toLowerCase().endsWith('.gz')
        ? stream.transform(gzip.decoder)
        : stream;
    await for (final chunk in decoded) {
      buffer.addAll(chunk);
      if (buffer.length >= maxBytes) break;
    }
    return utf8.decode(buffer, allowMalformed: true).trimLeft().toLowerCase();
  }
}
