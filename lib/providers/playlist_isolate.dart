import 'dart:io';
import '../services/m3u_parser_service.dart';

/// Isolate entry point for parsing a playlist from bytes
Future<Map<String, dynamic>> parsePlaylistInIsolate(List<int> bytes) async {
  final parser = M3UParserService();
  // Use optimized map-based parsing (avoids Channel/Content object creation)
  return parser.parseM3UStreamToMaps(Stream.value(bytes));
}

/// Isolate entry point for parsing a playlist from a file path (memory efficient)
/// This reads the file in chunks and streams it to the parser to avoid OOM
Future<Map<String, dynamic>> parsePlaylistFromFile(String filePath) async {
  final file = File(filePath);
  final parser = M3UParserService();
  
  // Use optimized map-based parsing (avoids Channel/Content object creation)
  return parser.parseM3UStreamToMaps(file.openRead());
}
