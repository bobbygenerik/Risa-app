import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/url_redactor.dart';
import '../models/channel.dart';
import '../utils/hash_utils.dart';

part 'm3u/m3u_parser_channel_list.dart';
part 'm3u/m3u_parser_stream_maps.dart';
part 'm3u/m3u_parser_helpers.dart';
part 'm3u/m3u_parser_utils.dart';


// Top-level function for isolate-based M3U parsing.
Future<Map<String, dynamic>> parseM3UInIsolate(String content) async {
  final parser = M3UParserService();
  final bytes = utf8.encode(content);
  return await parser.parseM3UStreamToMaps(Stream.value(bytes));
}

class M3UParserService {
  String? _epgUrl; // Store EPG URL from M3U header

  // Pre-compiled regex patterns for performance (avoid recreating per-line)

  // Simpler, analyzer-safe regexes to avoid raw-string delimiter issues
  static final RegExp _epgUrlRegex = RegExp(
    r"""(?:url-tvg|x-tvg-url|tvg-url)=["']?([^"']+)""",
    caseSensitive: false,
  );
  static final RegExp _seriesEpisodeRegex =
      RegExp(r'S\d+E\d+', caseSensitive: false);

  /// Gets the EPG URL extracted from the last parsed M3U
  String? get epgUrl => _epgUrl;

  bool _tryCaptureEpgUrl(String line) {
    if (_epgUrl != null) return true;
    final match = _epgUrlRegex.firstMatch(line);
    if (match != null) {
      _epgUrl = match.group(1);
      if (_epgUrl != null) {
        debugLog('M3UParser: Captured EPG URL: ${redactUrl(_epgUrl!)}');
        return true;
      }
    }
    return false;
  }
}
