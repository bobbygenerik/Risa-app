import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../models/channel.dart';
import '../models/content.dart';

part 'm3u/m3u_parser_parse.dart';
part 'm3u/m3u_parser_helpers.dart';

class M3UParseResult {
  final List<Channel> channels;
  final List<Content> movies;
  final List<Content> series;

  const M3UParseResult({
    required this.channels,
    required this.movies,
    required this.series,
  });
}

class M3UParserService {
  String? _epgUrl; // Store EPG URL from M3U header

  // Pre-compiled regex patterns for performance (avoid recreating per-line)

  static final RegExp _epgUrlRegex = RegExp(r'x-tvg-url="([^"]+)"');
  static final RegExp _seriesEpisodeRegex =
      RegExp(r'S\d+E\d+', caseSensitive: false);

  /// Gets the EPG URL extracted from the last parsed M3U
  String? get epgUrl => _epgUrl;

}

