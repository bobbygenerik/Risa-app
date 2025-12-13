import 'dart:io';
import 'package:xml/xml.dart';
import 'package:http/http.dart' as http;

/// Simple EPG diagnostic tool to debug channel matching issues
void main(List<String> args) async {
  if (args.isEmpty) {
    print('Usage: dart debug_epg_matching.dart <epg_url> [m3u_url]');
    print('Example: dart debug_epg_matching.dart https://example.com/epg.xml https://example.com/playlist.m3u');
    exit(1);
  }

  final epgUrl = args[0];
  final m3uUrl = args.length > 1 ? args[1] : null;

  print('🔍 EPG Diagnostic Tool');
  print('EPG URL: $epgUrl');
  if (m3uUrl != null) print('M3U URL: $m3uUrl');
  print('');

  // Download and analyze EPG
  print('📡 Downloading EPG...');
  try {
    final epgResponse = await http.get(Uri.parse(epgUrl));
    if (epgResponse.statusCode != 200) {
      print('❌ EPG download failed: HTTP ${epgResponse.statusCode}');
      exit(1);
    }

    final epgSize = (epgResponse.bodyBytes.length / 1024 / 1024).toStringAsFixed(2);
    print('✅ EPG downloaded: $epgSize MB');

    // Parse EPG
    print('📊 Parsing EPG XML...');
    final document = XmlDocument.parse(epgResponse.body);
    final programmes = document.findAllElements('programme');
    
    // Extract unique channel IDs
    final channelIds = <String>{};
    for (final programme in programmes) {
      final channelId = programme.getAttribute('channel');
      if (channelId != null && channelId.isNotEmpty) {
        channelIds.add(channelId);
      }
    }

    print('✅ Found ${programmes.length} programmes for ${channelIds.length} channels');
    print('');

    // Show sample EPG channel IDs
    print('📺 Sample EPG Channel IDs (first 20):');
    final sortedChannelIds = channelIds.toList()..sort();
    for (int i = 0; i < 20 && i < sortedChannelIds.length; i++) {
      print('  ${i + 1}. "${sortedChannelIds[i]}"');
    }
    print('');

    // If M3U URL provided, compare with M3U channel IDs
    if (m3uUrl != null) {
      print('📡 Downloading M3U playlist...');
      final m3uResponse = await http.get(Uri.parse(m3uUrl));
      if (m3uResponse.statusCode != 200) {
        print('❌ M3U download failed: HTTP ${m3uResponse.statusCode}');
        exit(1);
      }

      print('✅ M3U downloaded');
      print('📊 Parsing M3U playlist...');

      final m3uLines = m3uResponse.body.split('\n');
      final m3uChannelIds = <String>{};
      final m3uChannelNames = <String>[];

      for (final line in m3uLines) {
        if (line.startsWith('#EXTINF:')) {
          // Extract tvg-id
          final tvgIdMatch = RegExp(r'tvg-id="([^"]*)"').firstMatch(line);
          if (tvgIdMatch != null && tvgIdMatch.group(1)!.isNotEmpty) {
            m3uChannelIds.add(tvgIdMatch.group(1)!);
          }

          // Extract channel name
          final nameMatch = RegExp(r',(.+)$').firstMatch(line);
          if (nameMatch != null) {
            m3uChannelNames.add(nameMatch.group(1)!.trim());
          }
        }
      }

      print('✅ Found ${m3uChannelIds.length} M3U channels with tvg-id');
      print('');

      // Show sample M3U channel IDs
      print('📺 Sample M3U Channel IDs (first 20):');
      final sortedM3uIds = m3uChannelIds.toList()..sort();
      for (int i = 0; i < 20 && i < sortedM3uIds.length; i++) {
        print('  ${i + 1}. "${sortedM3uIds[i]}"');
      }
      print('');

      // Find exact matches
      final exactMatches = m3uChannelIds.intersection(channelIds);
      print('🎯 Exact Matches: ${exactMatches.length}/${m3uChannelIds.length}');
      if (exactMatches.isNotEmpty) {
        print('Sample exact matches:');
        for (final match in exactMatches.take(10)) {
          print('  ✅ "$match"');
        }
      }
      print('');

      // Find case-insensitive matches
      final lowerEpgIds = channelIds.map((id) => id.toLowerCase()).toSet();
      final lowerM3uIds = m3uChannelIds.map((id) => id.toLowerCase()).toSet();
      final caseInsensitiveMatches = lowerM3uIds.intersection(lowerEpgIds);
      print('🎯 Case-Insensitive Matches: ${caseInsensitiveMatches.length}/${m3uChannelIds.length}');
      print('');

      // Show unmatched channels
      final unmatched = m3uChannelIds.where((id) => !channelIds.contains(id)).toList();
      if (unmatched.isNotEmpty) {
        print('❌ Unmatched M3U Channel IDs (first 10):');
        for (int i = 0; i < 10 && i < unmatched.length; i++) {
          print('  ${i + 1}. "${unmatched[i]}"');
        }
        print('');
      }

      // Analysis and recommendations
      print('💡 Analysis & Recommendations:');
      if (exactMatches.isEmpty && caseInsensitiveMatches.isEmpty) {
        print('  ❌ No matches found! This indicates:');
        print('     • EPG and M3U use completely different channel ID schemes');
        print('     • You may need a different EPG source that matches your M3U');
        print('     • Manual channel mapping may be required');
      } else if (exactMatches.length < m3uChannelIds.length * 0.5) {
        print('  ⚠️  Low match rate. Consider:');
        print('     • Using fuzzy matching (app should handle this)');
        print('     • Manual mapping for important channels');
        print('     • Finding a better-matched EPG source');
      } else {
        print('  ✅ Good match rate! EPG should work well.');
      }
    }

    print('');
    print('🔧 Troubleshooting Tips:');
    print('  1. Ensure your M3U has tvg-id attributes that match EPG channel IDs');
    print('  2. Try different EPG sources that match your IPTV provider');
    print('  3. Use the app\'s manual EPG mapping feature for important channels');
    print('  4. Check if your IPTV provider offers their own EPG URL');

  } catch (e) {
    print('❌ Error: $e');
    exit(1);
  }
}