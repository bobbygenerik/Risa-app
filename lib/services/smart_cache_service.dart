import 'dart:async';
import 'dart:math' as math;
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/debug_helper.dart';
import '../utils/hash_utils.dart';
import '../models/program.dart';
import '../models/channel.dart';
import 'local_db_service.dart';

/// Smart caching service with delta updates for EPG data
class SmartCacheService {
  static SmartCacheService? _instance;
  static SmartCacheService get instance => _instance ??= SmartCacheService._();
  
  SmartCacheService._();
  
  bool _initialized = false;
  SharedPreferences? _prefs;
  final LocalDbService _db = LocalDbService.instance;
  static const Duration _channelCacheTtl = Duration(hours: 12);
  static const Duration _epgCacheTtl = Duration(hours: 6);
  static const int _maxChannelLoad = 2000;
  static const int _maxEpgChannelLoad = 120;
  static const int _epgWindowHours = 6;

  static const String _channelsCacheAtKey = 'smart_cache_channels_at';
  static const String _epgCacheAtKey = 'smart_cache_epg_at';
  static const String _channelsSignatureKey = 'smart_cache_channels_sig';
  static const String _channelsCountKey = 'smart_cache_channels_count';
  static const String _epgCountKey = 'smart_cache_epg_count';
  
  /// Initialize smart cache service
  Future<void> initialize() async {
    if (_initialized) return;
    try {
      _prefs ??= await SharedPreferences.getInstance();
      await _db.init();
    } catch (e) {
      debugLog('SmartCache: init failed, continuing without DB/prefs: $e');
    }
    _initialized = true;
    debugLog('SmartCache: Initialized');
  }

  Future<SharedPreferences> _requirePrefs() async {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs!;
  }

  /// Check if EPG data has changed
  Future<bool> hasEpgChanged(String epgContent) async {
    final prefs = await _requirePrefs();
    final last = prefs.getInt(_epgCacheAtKey);
    if (last == null) return true;
    final age = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(last));
    return age > _epgCacheTtl;
  }
  
  /// Check if channel data has changed
  Future<bool> hasChannelDataChanged(List<Channel> channels) async {
    final prefs = await _requirePrefs();
    final lastSignature = prefs.getString(_channelsSignatureKey);
    final signature = _channelSignature(channels);
    return lastSignature == null || lastSignature != signature;
  }
  
  /// Cache EPG data
  Future<void> cacheEpgData(Map<String, List<Program>> channelPrograms,
      {bool overwriteDb = true}) async {
    if (channelPrograms.isEmpty) return;
    try {
      if (overwriteDb) {
        await _db.init();
        for (final entry in channelPrograms.entries) {
          final epgId = entry.key;
          if (epgId.isEmpty) continue;
          final programs = entry.value;
          if (programs.isEmpty) continue;
          final maps = programs.map(_programToDb).toList(growable: false);
          await _db.insertPrograms(epgId, maps, clearExisting: true);
        }
      }
      final prefs = await _requirePrefs();
      await prefs.setInt(
          _epgCacheAtKey, DateTime.now().millisecondsSinceEpoch);
      await prefs.setInt(_epgCountKey, channelPrograms.length);
      debugLog('SmartCache: EPG data cached (${channelPrograms.length} channels)');
    } catch (e) {
      debugLog('SmartCache: Failed to cache EPG data: $e');
    }
  }
  
  /// Load cached EPG data
  Future<Map<String, List<Program>>?> loadCachedEpgData() async {
    final prefs = await _requirePrefs();
    final last = prefs.getInt(_epgCacheAtKey);
    if (last == null) return null;
    final age = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(last));
    if (age > _epgCacheTtl) return null;

    try {
      await _db.init();
      final mappings = await _db.getAllMappings();
      if (mappings.isEmpty) return null;
      final now = DateTime.now();
      final startMs = now.subtract(const Duration(hours: 1)).millisecondsSinceEpoch;
      final endMs =
          now.add(const Duration(hours: _epgWindowHours)).millisecondsSinceEpoch;
      final result = <String, List<Program>>{};
      int loaded = 0;
      for (final epgId in mappings.values) {
        if (loaded >= _maxEpgChannelLoad) break;
        if (epgId.isEmpty) continue;
        final rows = await _db.getProgramsForEpgId(
          epgId,
          startMs: startMs,
          endMs: endMs,
          limit: 12,
        );
        if (rows.isEmpty) continue;
        result[epgId] = rows.map(_programFromDb).toList(growable: false);
        loaded++;
      }
      debugLog('SmartCache: Loaded cached EPG for $loaded channels');
      return result.isEmpty ? null : result;
    } catch (e) {
      debugLog('SmartCache: Failed to load cached EPG data: $e');
      return null;
    }
  }
  
  /// Cache channel data
  Future<void> cacheChannelData(List<Channel> channels,
      {bool overwriteDb = true}) async {
    if (channels.isEmpty) return;
    final signature = _channelSignature(channels);
    try {
      final prefs = await _requirePrefs();
      final existingSignature = prefs.getString(_channelsSignatureKey);
      if (existingSignature != null && existingSignature == signature) {
        await prefs.setInt(
            _channelsCacheAtKey, DateTime.now().millisecondsSinceEpoch);
        await prefs.setInt(_channelsCountKey, channels.length);
        return;
      }
      if (overwriteDb) {
        await _db.init();
        await _db.clearChannels();
        await _db.insertChannels(channels.map((c) => c.toMap()).toList());
      }
      await prefs.setInt(
          _channelsCacheAtKey, DateTime.now().millisecondsSinceEpoch);
      await prefs.setString(_channelsSignatureKey, signature);
      await prefs.setInt(_channelsCountKey, channels.length);
      debugLog('SmartCache: Channel data cached (${channels.length} channels)');
    } catch (e) {
      debugLog('SmartCache: Failed to cache channel data: $e');
    }
  }
  
  /// Load cached channel data
  Future<List<Channel>?> loadCachedChannelData() async {
    final prefs = await _requirePrefs();
    final last = prefs.getInt(_channelsCacheAtKey);
    if (last == null) return null;
    final age = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(last));
    if (age > _channelCacheTtl) return null;

    try {
      await _db.init();
      final count = await _db.channelCount();
      if (count == 0) return null;
      final loadCount = count > _maxChannelLoad ? _maxChannelLoad : count;
      final channels = <Channel>[];
      var offset = 0;
      const batchSize = 500;
      while (offset < loadCount) {
        final limit = (loadCount - offset).clamp(0, batchSize);
        final rows = await _db.getChannelsPage(
          offset: offset,
          limit: limit,
        );
        if (rows.isEmpty) break;
        channels.addAll(rows.map((m) => Channel.fromMap(m)));
        offset += rows.length;
      }
      if (count > loadCount) {
        debugLog(
            'SmartCache: Channel cache truncated ($loadCount/$count) for fast load');
      }
      return channels.isEmpty ? null : channels;
    } catch (e) {
      debugLog('SmartCache: Failed to load cached channel data: $e');
      return null;
    }
  }
  
  /// Check if cache is fresh
  Future<bool> isCacheFresh() async {
    final prefs = await _requirePrefs();
    final now = DateTime.now();
    final channelTs = prefs.getInt(_channelsCacheAtKey);
    final epgTs = prefs.getInt(_epgCacheAtKey);
    final channelFresh = channelTs != null &&
        now.difference(DateTime.fromMillisecondsSinceEpoch(channelTs)) <
            _channelCacheTtl;
    final epgFresh = epgTs != null &&
        now.difference(DateTime.fromMillisecondsSinceEpoch(epgTs)) <
            _epgCacheTtl;
    return channelFresh || epgFresh;
  }
  
  /// Clear all cached data
  Future<void> clearCache() async {
    try {
      await _db.init();
      await _db.clearChannels();
      await _db.clearEpg();
      final prefs = await _requirePrefs();
      await prefs.remove(_channelsCacheAtKey);
      await prefs.remove(_epgCacheAtKey);
      await prefs.remove(_channelsSignatureKey);
      await prefs.remove(_channelsCountKey);
      await prefs.remove(_epgCountKey);
    } catch (e) {
      debugLog('SmartCache: Failed to clear cache: $e');
    }
    debugLog('SmartCache: Cache cleared');
  }
  
  /// Get cache statistics
  Future<Map<String, dynamic>> getCacheStats() async {
    final prefs = await _requirePrefs();
    final now = DateTime.now();
    final channelTs = prefs.getInt(_channelsCacheAtKey);
    final epgTs = prefs.getInt(_epgCacheAtKey);
    final channelAgeHours = channelTs == null
        ? -1
        : now
            .difference(DateTime.fromMillisecondsSinceEpoch(channelTs))
            .inHours;
    final epgAgeHours = epgTs == null
        ? -1
        : now.difference(DateTime.fromMillisecondsSinceEpoch(epgTs)).inHours;
    return {
      'epg_cached': epgTs != null,
      'channels_cached': channelTs != null,
      'epg_age_hours': epgAgeHours,
      'channels_age_hours': channelAgeHours,
      'channels_count': prefs.getInt(_channelsCountKey) ?? 0,
      'epg_count': prefs.getInt(_epgCountKey) ?? 0,
      'is_fresh': await isCacheFresh(),
    };
  }

  Future<void> markChannelCacheFresh({
    required int channelCount,
    String? signature,
  }) async {
    if (channelCount <= 0) return;
    try {
      final prefs = await _requirePrefs();
      await prefs.setInt(
          _channelsCacheAtKey, DateTime.now().millisecondsSinceEpoch);
      if (signature != null && signature.isNotEmpty) {
        await prefs.setString(_channelsSignatureKey, signature);
      }
      await prefs.setInt(_channelsCountKey, channelCount);
    } catch (e) {
      debugLog('SmartCache: Failed to mark channel cache fresh: $e');
    }
  }

  String _channelSignature(List<Channel> channels) {
    if (channels.isEmpty) return 'empty';
    final sampleCount = math.min(4, channels.length);
    final buffer = StringBuffer()
      ..write('count:${channels.length}');
    for (var i = 0; i < sampleCount; i++) {
      final c = channels[i];
      buffer
        ..write('|')
        ..write(c.id)
        ..write(':')
        ..write(c.name);
    }
    final last = channels.last;
    buffer
      ..write('|last:')
      ..write(last.id)
      ..write(':')
      ..write(last.name);
    return fnv1aHex(buffer.toString());
  }

  Map<String, dynamic> _programToDb(Program program) {
    return {
      'startTs': program.startTime.millisecondsSinceEpoch,
      'endTs': program.endTime.millisecondsSinceEpoch,
      'title': program.title,
      'description': program.description,
      'imageUrl': program.imageUrl,
    };
  }

  Program _programFromDb(Map<String, dynamic> row) {
    final startTs = row['startTs'] as int? ?? 0;
    final endTs = row['endTs'] as int? ?? 0;
    return Program(
      id: '${row['epgId'] ?? ''}_$startTs',
      channelId: row['epgId'] ?? '',
      title: row['title'] ?? '',
      description: row['description'],
      startTime: DateTime.fromMillisecondsSinceEpoch(startTs),
      endTime: DateTime.fromMillisecondsSinceEpoch(endTs),
      imageUrl: row['imageUrl'],
    );
  }
}
