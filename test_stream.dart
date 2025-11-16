// ignore_for_file: avoid_print, dangling_library_doc_comments
/// Test script to validate video URL format and network connectivity
import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  // Test URLs from M3U playlist
  final testUrls = [
    'http://xapi-ie.cc:80/bobbygenerik/@Ollivander1218/1', // Sample channel URL format
  ];

  print('=== IPTV Stream URL Validator ===\n');

  for (final url in testUrls) {
    print('Testing URL: $url');
    
    try {
      // Test HTTP HEAD request
      print('  → Sending HEAD request...');
      final response = await http.head(
        Uri.parse(url),
        headers: {
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36',
        },
      ).timeout(const Duration(seconds: 10));
      
      print('  ✓ Status: ${response.statusCode}');
      print('  ✓ Content-Type: ${response.headers['content-type']}');
      print('  ✓ Content-Length: ${response.headers['content-length']}');
      
      if (response.statusCode == 200) {
        // Try to fetch first few bytes
        print('  → Fetching first 1KB...');
        final request = await HttpClient().getUrl(Uri.parse(url));
        request.headers.set('User-Agent', 'Mozilla/5.0');
        final streamResponse = await request.close();
        
        final bytes = await streamResponse.take(1024).toList();
        final totalBytes = bytes.fold<int>(0, (sum, list) => sum + list.length);
        print('  ✓ Received $totalBytes bytes');
        print('  ✓ Stream appears valid!\n');
      } else {
        print('  ✗ Error: HTTP ${response.statusCode}\n');
      }
    } catch (e) {
      print('  ✗ Error: $e\n');
    }
  }

  print('=== Testing Complete ===');
  print('\nNext steps:');
  print('1. If URLs are valid, issue is in video_player initialization');
  print('2. If URLs fail, check M3U parser URL extraction');
  print('3. Check console logs during actual playback attempt');
}
