// Check EPG configuration in SharedPreferences
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  print('=== EPG CONFIGURATION CHECK ===');
  
  try {
    final prefs = await SharedPreferences.getInstance();
    
    // Check EPG URLs
    final epgUrl = prefs.getString('epg_url');
    final customEpgUrl = prefs.getString('custom_epg_url');
    final secondaryEpgUrl = prefs.getString('secondary_epg_url');
    
    print('Primary EPG URL: ${epgUrl ?? "NOT SET"}');
    print('Custom EPG URL: ${customEpgUrl ?? "NOT SET"}');
    print('Secondary EPG URL: ${secondaryEpgUrl ?? "NOT SET"}');
    
    // Check cache timestamps
    final cacheTime = prefs.getString('epg_cache_time');
    final secondaryCacheTime = prefs.getString('epg_secondary_cache_time');
    
    print('\\nCache timestamps:');
    print('Primary cache time: ${cacheTime ?? "NOT SET"}');
    print('Secondary cache time: ${secondaryCacheTime ?? "NOT SET"}');
    
    // Check playlist URL (EPG might be embedded)
    final playlistUrl = prefs.getString('playlist_url');
    print('\\nPlaylist URL: ${playlistUrl ?? "NOT SET"}');
    
    // Check if cache files exist
    print('\\nChecking cache files...');
    final homeDir = Platform.environment['HOME'] ?? '/home/devuser';
    final cacheDir = '$homeDir/.local/share/com.risa.app/documents';
    
    final primaryCacheFile = File('$cacheDir/epg_cache.xml');
    final secondaryCacheFile = File('$cacheDir/epg_cache_secondary.xml');
    
    print('Primary cache file exists: ${await primaryCacheFile.exists()}');
    if (await primaryCacheFile.exists()) {
      final size = await primaryCacheFile.length();
      print('  Size: ${(size / 1024 / 1024).toStringAsFixed(2)} MB');
    }
    
    print('Secondary cache file exists: ${await secondaryCacheFile.exists()}');
    if (await secondaryCacheFile.exists()) {
      final size = await secondaryCacheFile.length();
      print('  Size: ${(size / 1024 / 1024).toStringAsFixed(2)} MB');
    }
    
  } catch (e) {
    print('Error checking EPG configuration: $e');
  }
}