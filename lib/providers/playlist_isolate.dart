import 'dart:io';
import '../services/m3u_parser_service.dart';

/// Isolate entry point for parsing a playlist from bytes
Future<Map<String, dynamic>> parsePlaylistInIsolate(List<int> bytes) async {
  final parser = M3UParserService();
  final result = await parser.parseM3UStream(Stream.value(bytes));
  return {
    'channels': result.channels.map((c) => c.toMap()).toList(),
    'movies': result.movies.map((m) => m.toMap()).toList(),
    'series': result.series.map((s) => s.toMap()).toList(),
    'epgUrl': parser.epgUrl,
  };
}

/// Isolate entry point for parsing a playlist from a file path (memory efficient)
/// This reads the file in chunks and streams it to the parser to avoid OOM
Future<Map<String, dynamic>> parsePlaylistFromFile(String filePath) async {
  final file = File(filePath);
  final parser = M3UParserService();
  
  // Stream the file in chunks to the parser
  final result = await parser.parseM3UStream(file.openRead());
  
  return {
    'channels': result.channels.map((c) => c.toMap()).toList(),
    'movies': result.movies.map((m) => m.toMap()).toList(),
    'series': result.series.map((s) => s.toMap()).toList(),
    'epgUrl': parser.epgUrl,
  };
}
