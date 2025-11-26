import 'dart:convert';
import '../services/m3u_parser_service.dart';

/// Isolate entry point for parsing a playlist from bytes
Future<Map<String, dynamic>> parsePlaylistInIsolate(List<int> bytes) async {
  final content = utf8.decode(bytes, allowMalformed: true);
  final parser = M3UParserService();
  final result = await parser.parseM3UStream(Stream.value(bytes));
  return {
    'channels': result.channels.map((c) => c.toMap()).toList(),
    'movies': result.movies.map((m) => m.toMap()).toList(),
    'series': result.series.map((s) => s.toMap()).toList(),
    'epgUrl': parser.epgUrl,
  };
}
