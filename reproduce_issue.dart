import 'dart:io';
// ignore_for_file: avoid_print

import 'dart:convert';

Future<void> main() async {
  final url = 'https://opop.pro/epNCvfgjsYe9JC';
  print('Fetching EPG $url...');
  
  final client = HttpClient();
  client.autoUncompress = false; // Mimic Build 8+
  client.badCertificateCallback = (cert, host, port) => true;
  
  try {
    final req = await client.getUrl(Uri.parse(url));
    req.headers.add('User-Agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36');
    req.headers.add('Accept', '*/*');
    req.headers.add('Accept-Encoding', 'gzip, deflate');
    
    final resp = await req.close();
    print('Status: ${resp.statusCode}');
    print('Headers:');
    resp.headers.forEach((k, v) => print('$k: $v'));
    
    final encoding = resp.headers.value('content-encoding')?.toLowerCase() ?? '';
    print('Content-Encoding: $encoding');
    
    // Manual sniff logic from app
    final buffer = <int>[];
    bool checked = false;
    
    await for (final chunk in resp) {
      if (!checked) {
        buffer.addAll(chunk);
        if (buffer.length >= 2) {
          checked = true;
          print('First bytes: ${buffer.sublist(0, buffer.length.clamp(0, 10))}');
          print('Hex: ${buffer.sublist(0, buffer.length.clamp(0, 10)).map((b) => b.toRadixString(16).padLeft(2, "0")).join(" ")}');
          
          
          if (buffer[0] == 0x1f && buffer[1] == 0x8b) {
            print('DETECTED GZIP MAGIC NUMBER');
          } else {
             final text = utf8.decode(buffer, allowMalformed: true);
             print('First chunk text: $text');
             
             // Test Regex
             final regex = RegExp(r'(?:[a-z0-9+\.\-]+)://\S+', caseSensitive: false);
             // Find a URL in the text
             final matches = regex.allMatches(text);
             print('Regex matches found: ${matches.length}');
             for (final m in matches) {
               print('Match: ${m.group(0)}');
             }
             
             // Test exact URL from curl
             final sampleUrl = "https://dragtvplus.lol/live/bobby/09052757/356971.ts";
             print('Sample URL match: ${regex.hasMatch(sampleUrl)}');
          }
          break; // Just check first chunk
        }
      }
    }
  } catch (e) {
    print('Error: $e');
  } finally {
    client.close();
  }
}
