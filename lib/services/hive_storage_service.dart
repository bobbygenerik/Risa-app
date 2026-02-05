import 'dart:async';
import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Hive-based storage service for efficient large data storage.
/// 
/// This service provides a high-performance alternative to SharedPreferences
/// for storing large amounts of structured data like playlists, EPG mappings,
/// and channel information.
/// 
/// Benefits over SharedPreferences:
/// - Binary storage format (faster read/write)
/// - Lazy loading (only loads data when accessed)
/// - Type safety with Hive adapters
/// - Better performance for large datasets
/// - Encrypted boxes support
class HiveStorageService {
  static final HiveStorageService _instance = HiveStorageService._internal();
  static HiveStorageService get instance => _instance;

  HiveStorageService._internal();

  bool _initialized = false;
  final Map<String, Box<dynamic>> _boxes = {};

  /// Box names for different data types
  static const String _playlistsBox = 'playlists';
  static const String _epgMappingsBox = 'epg_mappings';
  static const String _channelCacheBox = 'channel_cache';
  static const String _settingsBox = 'settings';
  static const String _metadataBox = 'metadata';

  /// Initialize Hive and open required boxes
  Future<void> initialize() async {
    if (_initialized) return;

    try {
      // Initialize Hive with app documents directory
      final appDocDir = await getApplicationDocumentsDirectory();
      await Hive.initFlutter(appDocDir.path);

      // Open all required boxes
      await _openBox(_playlistsBox);
      await _openBox(_epgMappingsBox);
      await _openBox(_channelCacheBox);
      await _openBox(_settingsBox);
      await _openBox(_metadataBox);

      _initialized = true;
      debugLog('HiveStorageService: Initialized successfully');
    } catch (e) {
      debugLog('HiveStorageService: Initialization failed: $e');
      rethrow;
    }
  }

  /// Open a Hive box with error handling
  Future<Box<dynamic>> _openBox(String name) async {
    if (_boxes.containsKey(name)) {
      return _boxes[name]!;
    }

    try {
      final box = await Hive.openBox(name);
      _boxes[name] = box;
      return box;
    } catch (e) {
      debugLog('HiveStorageService: Failed to open box $name: $e');
      // Try to delete corrupted box and recreate
      await Hive.deleteBoxFromDisk(name);
      final box = await Hive.openBox(name);
      _boxes[name] = box;
      return box;
    }
  }

  /// Get a box by name
  Box<dynamic>? _getBox(String name) {
    return _boxes[name];
  }

  // ==================== PLAYLIST OPERATIONS ====================

  /// Save playlist data efficiently
  Future<void> savePlaylist(String playlistId, Map<String, dynamic> data) async {
    final box = _getBox(_playlistsBox);
    if (box == null) throw StateError('Hive not initialized');

    // Store as JSON string for compatibility
    final jsonString = jsonEncode(data);
    await box.put(playlistId, jsonString);
    
    // Update metadata
    await _updateMetadata('last_playlist_update', DateTime.now().millisecondsSinceEpoch);
  }

  /// Load playlist data
  Map<String, dynamic>? loadPlaylist(String playlistId) {
    final box = _getBox(_playlistsBox);
    if (box == null) return null;

    final data = box.get(playlistId);
    if (data == null) return null;

    try {
      return jsonDecode(data as String) as Map<String, dynamic>;
    } catch (e) {
      debugLog('HiveStorageService: Failed to decode playlist $playlistId: $e');
      return null;
    }
  }

  /// Get all saved playlist IDs
  List<String> getSavedPlaylistIds() {
    final box = _getBox(_playlistsBox);
    if (box == null) return [];

    return box.keys.cast<String>().toList();
  }

  /// Delete a playlist
  Future<void> deletePlaylist(String playlistId) async {
    final box = _getBox(_playlistsBox);
    if (box == null) return;

    await box.delete(playlistId);
  }

  /// Clear all playlists
  Future<void> clearAllPlaylists() async {
    final box = _getBox(_playlistsBox);
    if (box == null) return;

    await box.clear();
  }

  // ==================== EPG MAPPINGS OPERATIONS ====================

  /// Save EPG channel mappings in bulk
  Future<void> saveEpgMappings(Map<String, String> mappings) async {
    final box = _getBox(_epgMappingsBox);
    if (box == null) throw StateError('Hive not initialized');

    // Use batch operations for better performance
    final batch = <String, String>{};
    for (final entry in mappings.entries) {
      batch[entry.key] = entry.value;
    }

    await box.putAll(batch);
  }

  /// Get a single EPG mapping
  String? getEpgMapping(String channelId) {
    final box = _getBox(_epgMappingsBox);
    if (box == null) return null;

    return box.get(channelId) as String?;
  }

  /// Get all EPG mappings
  Map<String, String> getAllEpgMappings() {
    final box = _getBox(_epgMappingsBox);
    if (box == null) return {};

    final result = <String, String>{};
    for (final key in box.keys) {
      final value = box.get(key);
      if (value != null) {
        result[key as String] = value as String;
      }
    }
    return result;
  }

  /// Delete an EPG mapping
  Future<void> deleteEpgMapping(String channelId) async {
    final box = _getBox(_epgMappingsBox);
    if (box == null) return;

    await box.delete(channelId);
  }

  /// Clear all EPG mappings
  Future<void> clearAllEpgMappings() async {
    final box = _getBox(_epgMappingsBox);
    if (box == null) return;

    await box.clear();
  }

  // ==================== CHANNEL CACHE OPERATIONS ====================

  /// Save channel data with TTL (time-to-live)
  Future<void> saveChannelCache(String channelId, Map<String, dynamic> data, 
      {Duration? ttl}) async {
    final box = _getBox(_channelCacheBox);
    if (box == null) throw StateError('Hive not initialized');

    final cacheEntry = {
      'data': data,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'ttl': ttl?.inMilliseconds,
    };

    await box.put(channelId, jsonEncode(cacheEntry));
  }

  /// Load channel cache if not expired
  Map<String, dynamic>? loadChannelCache(String channelId) {
    final box = _getBox(_channelCacheBox);
    if (box == null) return null;

    final data = box.get(channelId);
    if (data == null) return null;

    try {
      final cacheEntry = jsonDecode(data as String) as Map<String, dynamic>;
      final timestamp = cacheEntry['timestamp'] as int;
      final ttl = cacheEntry['ttl'] as int?;

      // Check if cache is expired
      if (ttl != null) {
        final age = DateTime.now().millisecondsSinceEpoch - timestamp;
        if (age > ttl) {
          // Cache expired, delete it
          box.delete(channelId);
          return null;
        }
      }

      return cacheEntry['data'] as Map<String, dynamic>;
    } catch (e) {
      debugLog('HiveStorageService: Failed to decode channel cache $channelId: $e');
      return null;
    }
  }

  /// Clear expired channel cache entries
  Future<int> clearExpiredChannelCache() async {
    final box = _getBox(_channelCacheBox);
    if (box == null) return 0;

    int cleared = 0;
    final now = DateTime.now().millisecondsSinceEpoch;

    for (final key in box.keys.toList()) {
      final data = box.get(key);
      if (data == null) continue;

      try {
        final cacheEntry = jsonDecode(data as String) as Map<String, dynamic>;
        final ttl = cacheEntry['ttl'] as int?;
        
        if (ttl != null) {
          final timestamp = cacheEntry['timestamp'] as int;
          if (now - timestamp > ttl) {
            await box.delete(key);
            cleared++;
          }
        }
      } catch (e) {
        // Invalid entry, delete it
        await box.delete(key);
        cleared++;
      }
    }

    return cleared;
  }

  // ==================== SETTINGS OPERATIONS ====================

  /// Save a setting value
  Future<void> saveSetting<T>(String key, T value) async {
    final box = _getBox(_settingsBox);
    if (box == null) throw StateError('Hive not initialized');

    await box.put(key, value);
  }

  /// Load a setting value
  T? loadSetting<T>(String key, {T? defaultValue}) {
    final box = _getBox(_settingsBox);
    if (box == null) return defaultValue;

    final value = box.get(key);
    if (value == null) return defaultValue;
    
    if (value is T) return value;
    return defaultValue;
  }

  /// Delete a setting
  Future<void> deleteSetting(String key) async {
    final box = _getBox(_settingsBox);
    if (box == null) return;

    await box.delete(key);
  }

  // ==================== METADATA OPERATIONS ====================

  /// Update metadata timestamp
  Future<void> _updateMetadata(String key, int timestamp) async {
    final box = _getBox(_metadataBox);
    if (box == null) return;

    await box.put(key, timestamp);
  }

  /// Get metadata timestamp
  int? getMetadata(String key) {
    final box = _getBox(_metadataBox);
    if (box == null) return null;

    return box.get(key) as int?;
  }

  // ==================== BULK OPERATIONS ====================

  /// Perform a batch write operation for better performance
  Future<void> batchWrite(String boxName, Map<String, dynamic> data) async {
    final box = _getBox(boxName);
    if (box == null) throw StateError('Hive not initialized');

    // Convert all values to JSON strings for consistency
    final batch = <String, String>{};
    for (final entry in data.entries) {
      batch[entry.key] = jsonEncode(entry.value);
    }

    await box.putAll(batch);
  }

  /// Get storage statistics
  Map<String, dynamic> getStorageStats() {
    final stats = <String, dynamic>{};
    
    for (final entry in _boxes.entries) {
      final box = entry.value;
      stats[entry.key] = {
        'entries': box.length,
        'keys': box.keys.take(10).toList(), // Sample of keys
      };
    }

    return stats;
  }

  /// Compact all boxes to reclaim disk space
  Future<void> compactAll() async {
    for (final box in _boxes.values) {
      await box.compact();
    }
    debugLog('HiveStorageService: All boxes compacted');
  }

  /// Close all boxes and cleanup
  Future<void> dispose() async {
    for (final box in _boxes.values) {
      await box.close();
    }
    _boxes.clear();
    _initialized = false;
    debugLog('HiveStorageService: Disposed');
  }

  /// Clear all data (nuclear option)
  Future<void> clearAll() async {
    for (final box in _boxes.values) {
      await box.clear();
    }
    debugLog('HiveStorageService: All data cleared');
  }
}

/// Extension for easier Hive usage with JSON data
extension HiveJsonExtension on Box<dynamic> {
  /// Put a JSON-encodable object
  Future<void> putJson(String key, Map<String, dynamic> value) async {
    await put(key, jsonEncode(value));
  }

  /// Get a JSON-decoded object
  Map<String, dynamic>? getJson(String key) {
    final data = get(key);
    if (data == null) return null;
    
    try {
      return jsonDecode(data as String) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }
}
