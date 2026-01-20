import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xml/xml_events.dart';
import '../models/program.dart';
import '../models/channel.dart';
import '../utils/debug_helper.dart';
import '../services/http_client_service.dart';
import '../services/local_db_service.dart';
import '../services/smart_cache_service.dart';

/// Optimized EPG service using fast startup and streaming techniques
class OptimizedEpgService extends ChangeNotifier {
  // In-memory cache of loaded programs
  final Map<String, List<Program>> _programs = {};

  // Mapping helpers
  final Map<String, String> _channelIdToEpgId = {};
  final Map<String, String> _normalizedEpgIds = {}; // normalized -> real EPG ID

  bool _isLoading = false;
  bool _isDownloading = false;
  bool _isParsing = false;
  bool _isReady = false;
  String? _epgUrl;
  
  Map<String, List<Program>> get programs => _programs;
  bool get isLoading => _isLoading;
  bool get isReady => _isReady;
  bool get hasEpgUrl => _epgUrl != null && _epgUrl!.isNotEmpty;
  int get loadedChannelCount => _programs.length;
  bool get isDownloading => _isDownloading;
  bool get isParsing => _isParsing;

  // Regex constants for parsing
  static final RegExp _timeParseRe = RegExp(r'^(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})(?:\s*([+-]\d{4}))?');

  /// Load EPG data with fast startup optimizations
  Future<void> loadEpgData(String epgUrl, List<Channel> criticalChannels) async {
    if (_isLoading) return;
    
    _epgUrl = epgUrl;
    if (epgUrl.isEmpty) {
      _isReady = true;
      notifyListeners();
      return;
    }

    _isLoading = true;
    notifyListeners();
    
    try {
      debugLog('OptimizedEpgService: Starting fast EPG load for ${criticalChannels.length} critical channels');
      
      // Initialize DB
      final db = LocalDbService.instance;
      if (!db.isReady) {
        await db.init();
      }
      
      // 1. Check freshness
      final smartCache = SmartCacheService.instance;
      bool isFresh = await smartCache.isCacheFresh();

      // Also check if DB actually has data
      final programCount = await db.programCount();
      if (programCount == 0) {
        isFresh = false;
      }

      if (!isFresh) {
        await _downloadAndParse(epgUrl);
      } else {
        debugLog('OptimizedEpgService: Using fresh DB data ($programCount programs)');
        await _refreshEpgIdMap(db);
      }

      // 2. Load programs for critical channels from DB into memory
      await _loadProgramsForChannels(criticalChannels);
      
      _isReady = true;
      _isLoading = false;
      notifyListeners();
      
      debugLog('OptimizedEpgService: EPG data ready (${_programs.length} channels loaded)');
      
    } catch (e) {
      _isLoading = false;
      _isDownloading = false;
      _isParsing = false;
      notifyListeners();
      debugLog('OptimizedEpgService: Error loading EPG: $e');
    }
  }

  Future<void> _refreshEpgIdMap(LocalDbService db) async {
    final hashes = await db.getEpgChannelHashes();
    _normalizedEpgIds.clear();
    for (final epgId in hashes.keys) {
      _normalizedEpgIds[_normalize(epgId)] = epgId;
    }
  }

  Future<void> _downloadAndParse(String url) async {
    _isDownloading = true;
    notifyListeners();

    final cacheFile = await _getCacheFile();

    try {
      debugLog('OptimizedEpgService: Downloading EPG from $url');
      final client = HttpClientService();
      if (!client.isInitialized) client.initialize();

      final request = await client.httpClient.getUrl(Uri.parse(url));
      request.headers.add('Accept-Encoding', 'gzip, deflate');
      final response = await request.close();

      if (response.statusCode != 200) {
        throw Exception('HTTP ${response.statusCode}');
      }

      final fileSink = cacheFile.openWrite();
      await response.pipe(fileSink);

      _isDownloading = false;
      _isParsing = true;
      notifyListeners();

      debugLog('OptimizedEpgService: Parsing EPG XML...');

      // Parse in isolate
      final result = await compute(_parseEpgInIsolate, {
        'filePath': cacheFile.path,
      });

      final programs = result['programs'] as Map<String, List<Program>>;
      final channelIds = result['channelIds'] as List<String>;

      debugLog('OptimizedEpgService: Parsed ${programs.length} channels with programs');

      _normalizedEpgIds.clear();
      for (final id in channelIds) {
        _normalizedEpgIds[_normalize(id)] = id;
      }

      // Bulk insert into DB
      final db = LocalDbService.instance;
      await db.clearPrograms();

      final dbPayload = <String, List<Map<String, dynamic>>>{};
      for (final entry in programs.entries) {
        dbPayload[entry.key] = entry.value.map((p) => {
          'startTs': p.startTime.millisecondsSinceEpoch,
          'endTs': p.endTime.millisecondsSinceEpoch,
          'title': p.title,
          'description': p.description,
          'imageUrl': p.imageUrl,
        }).toList();
      }

      await db.insertAllPrograms(dbPayload);

      final hashes = <String, String>{};
      for (final id in channelIds) {
        hashes[id] = '1';
      }
      await db.upsertEpgChannelHashes(hashes);

      // Mark as fresh in SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('smart_cache_epg_at', DateTime.now().millisecondsSinceEpoch);
      await prefs.setInt('smart_cache_epg_count', programs.length);

      _isParsing = false;

    } catch (e) {
      _isDownloading = false;
      _isParsing = false;
      rethrow;
    }
  }

  Future<void> _loadProgramsForChannels(List<Channel> channels) async {
    final db = LocalDbService.instance;
    final epgIdsToLoad = <String>{};

    for (final channel in channels) {
      final epgId = _resolveEpgId(channel);
      if (epgId != null) {
        _channelIdToEpgId[channel.id] = epgId;
        epgIdsToLoad.add(epgId);
      }
    }

    if (epgIdsToLoad.isEmpty) return;

    final dbPrograms = await db.getAllProgramsByChannel(
      epgIds: epgIdsToLoad.toList(),
      pastHours: 12,
      futureHours: 24,
    );

    for (final entry in dbPrograms.entries) {
      final epgId = entry.key;
      final rows = entry.value;

      _programs[epgId] = rows.map((row) => Program(
        id: '${epgId}_${row['startTs']}',
        channelId: epgId,
        title: row['title'] ?? '',
        description: row['description'],
        startTime: DateTime.fromMillisecondsSinceEpoch(row['startTs']),
        endTime: DateTime.fromMillisecondsSinceEpoch(row['endTs']),
        imageUrl: row['imageUrl'],
      )).toList();
    }
  }

  String? _resolveEpgId(Channel channel) {
    if (channel.tvgId != null && channel.tvgId!.isNotEmpty) {
      if (_normalizedEpgIds.containsValue(channel.tvgId)) {
        return channel.tvgId;
      }
      final normalizedTvg = _normalize(channel.tvgId!);
      if (_normalizedEpgIds.containsKey(normalizedTvg)) {
        return _normalizedEpgIds[normalizedTvg];
      }
    }

    final normalizedName = _normalize(channel.name);
    if (_normalizedEpgIds.containsKey(normalizedName)) {
      return _normalizedEpgIds[normalizedName];
    }

    return null;
  }

  Future<File> _getCacheFile() async {
    final dir = await getTemporaryDirectory();
    return File('${dir.path}/optimized_epg_cache.xml');
  }

  static String _normalize(String input) {
    return input.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  }

  // ---- Static Isolate Methods ----

  static Future<Map<String, dynamic>> _parseEpgInIsolate(Map<String, dynamic> args) async {
    final filePath = args['filePath'] as String;
    final file = File(filePath);
    if (!await file.exists()) {
      return {'programs': <String, List<Program>>{}, 'channelIds': <String>[]};
    }

    final programs = <String, List<Program>>{};
    final channelIds = <String>{};

    // Efficient streaming parsing
    final stream = file.openRead().transform(utf8.decoder);
    final events = stream.toXmlEvents().withParentEvents();

    final elements = events.selectSubtreeEvents((event) =>
      event.name == 'programme' || event.name == 'channel'
    );

    await for (final subtree in elements) {
       if (subtree.isEmpty) continue;
       final start = subtree.first;
       if (start is! XmlStartElementEvent) continue;

       if (start.name == 'channel') {
          final id = start.attributes.firstWhere((a) => a.name == 'id', orElse: () => XmlEventAttribute('id', '', XmlAttributeType.DOUBLE_QUOTE)).value;
          if (id.isNotEmpty) channelIds.add(id);
       } else if (start.name == 'programme') {
          final channelId = start.attributes.firstWhere((a) => a.name == 'channel', orElse: () => XmlEventAttribute('channel', '', XmlAttributeType.DOUBLE_QUOTE)).value;
          final startStr = start.attributes.firstWhere((a) => a.name == 'start', orElse: () => XmlEventAttribute('start', '', XmlAttributeType.DOUBLE_QUOTE)).value;
          final stopStr = start.attributes.firstWhere((a) => a.name == 'stop', orElse: () => XmlEventAttribute('stop', '', XmlAttributeType.DOUBLE_QUOTE)).value;

          if (channelId.isNotEmpty && startStr.isNotEmpty && stopStr.isNotEmpty) {
            channelIds.add(channelId);

            String title = 'Unknown';
            String? description;
            String? imageUrl;

            for (final e in subtree) {
              if (e is XmlStartElementEvent) {
                if (e.name == 'title') {
                   final idx = subtree.indexOf(e);
                   if (idx + 1 < subtree.length) {
                     final next = subtree[idx+1];
                     if (next is XmlTextEvent) title = next.value;
                   }
                } else if (e.name == 'desc') {
                   final idx = subtree.indexOf(e);
                   if (idx + 1 < subtree.length) {
                     final next = subtree[idx+1];
                     if (next is XmlTextEvent) description = next.value;
                   }
                } else if (e.name == 'icon') {
                   imageUrl = e.attributes.firstWhere((a) => a.name == 'src', orElse: () => XmlEventAttribute('src', '', XmlAttributeType.DOUBLE_QUOTE)).value;
                }
              }
            }

            final startTime = _staticParseTime(startStr);
            final endTime = _staticParseTime(stopStr);

            programs.putIfAbsent(channelId, () => []).add(Program(
              id: '${channelId}_${startTime.millisecondsSinceEpoch}',
              channelId: channelId,
              title: title,
              description: description,
              startTime: startTime,
              endTime: endTime,
              imageUrl: imageUrl,
            ));
          }
       }
    }

    return {
      'programs': programs,
      'channelIds': channelIds.toList(),
    };
  }

  static DateTime _staticParseTime(String timeStr) {
    try {
      final trimmed = timeStr.trim();
      final m = _timeParseRe.firstMatch(trimmed);
      if (m == null) return DateTime.now();

      final g1 = m.group(1);
      final g2 = m.group(2);
      final g3 = m.group(3);
      final g4 = m.group(4);
      final g5 = m.group(5);
      final g6 = m.group(6);

      if (g1 == null || g2 == null || g3 == null || g4 == null || g5 == null || g6 == null) {
        return DateTime.now();
      }

      final year = int.parse(g1);
      final month = int.parse(g2);
      final day = int.parse(g3);
      final hour = int.parse(g4);
      final minute = int.parse(g5);
      final second = int.parse(g6);

      DateTime dt = DateTime.utc(year, month, day, hour, minute, second);

      final offset = m.group(7);
      if (offset != null && offset.length == 5) {
        final sign = offset.startsWith('+') ? 1 : -1;
        final offH = int.tryParse(offset.substring(1, 3)) ?? 0;
        final offM = int.tryParse(offset.substring(3, 5)) ?? 0;
        final delta = Duration(hours: offH, minutes: offM);
        dt = dt.subtract(sign == 1 ? delta : -delta);
      }

      return dt.toLocal();
    } catch (e) {
      return DateTime.now();
    }
  }

  // ---- Helper / Public Methods ----
  
  /// Get current program for channel
  Program? getCurrentProgram(
    String channelId, {
    String? channelName,
    String? groupTitle,
  }) {
    final epgId = _channelIdToEpgId[channelId] ?? (channelName != null ? _normalizedEpgIds[_normalize(channelName)] : null);

    if (epgId != null) {
      final channelPrograms = _programs[epgId];
      if (channelPrograms != null && channelPrograms.isNotEmpty) {
        final now = DateTime.now();
        for (final p in channelPrograms) {
          if (now.isAfter(p.startTime) && now.isBefore(p.endTime)) {
            return p;
          }
        }
      }
    }

    final directPrograms = _programs[channelId];
    if (directPrograms != null) {
       final now = DateTime.now();
        for (final p in directPrograms) {
          if (now.isAfter(p.startTime) && now.isBefore(p.endTime)) {
            return p;
          }
        }
    }

    return null;
  }
  
  /// Check if channel has programs
  bool hasProgramsForChannel(
    String channelId, {
    String? channelName,
    String? groupTitle,
  }) {
    final epgId = _channelIdToEpgId[channelId] ?? (channelName != null ? _normalizedEpgIds[_normalize(channelName)] : null);
    if (epgId != null && _programs.containsKey(epgId) && _programs[epgId]!.isNotEmpty) {
      return true;
    }
    return _programs.containsKey(channelId) && _programs[channelId]!.isNotEmpty;
  }
  
  /// Ensure channel is loaded
  Future<void> ensureChannelLoaded(
    String channelId, {
    String? channelName,
  }) async {
    if (hasProgramsForChannel(channelId, channelName: channelName)) return;

    if (!_channelIdToEpgId.containsKey(channelId)) {
        final channel = Channel(id: channelId, name: channelName ?? '', url: '');
        final epgId = _resolveEpgId(channel);
        if (epgId != null) {
          _channelIdToEpgId[channelId] = epgId;
        }
    }

    final epgId = _channelIdToEpgId[channelId];
    if (epgId != null) {
      await _loadProgramsForChannels([Channel(id: channelId, name: channelName ?? '', url: '', tvgId: epgId)]);
      notifyListeners();
    }
  }
  
  /// Ensure channels are loaded in batch
  Future<void> ensureChannelsLoadedBatch(
    List<String> channelIds, {
    List<String>? channelNames,
  }) async {
    final channelsToLoad = <Channel>[];
    for (int i=0; i<channelIds.length; i++) {
      final id = channelIds[i];
      final name = (channelNames != null && i < channelNames.length) ? channelNames[i] : '';
      if (!hasProgramsForChannel(id, channelName: name)) {
        channelsToLoad.add(Channel(id: id, name: name, url: ''));
      }
    }

    if (channelsToLoad.isNotEmpty) {
      await _loadProgramsForChannels(channelsToLoad);
      notifyListeners();
    }
  }
  
  /// Check if channel should be hidden
  bool shouldHideChannel(
    String channelId, {
    String? channelName,
  }) {
    return false;
  }
  
  /// Get EPG channel IDs
  List<String> getEpgChannelIds() {
    return _programs.keys.toList();
  }
  
  /// Get channel preview
  String? getChannelPreview(String channelId) {
    final currentProgram = getCurrentProgram(channelId);
    return currentProgram?.title;
  }
  
  /// Get suggested matches for channel
  List<MapEntry<String, double>> getSuggestedMatches(
    String channelId,
    String channelName, {
    int limit = 10,
  }) {
    return [];
  }
  
  /// Manual mapping methods (placeholder implementations)
  String? getManualMapping(String channelId) => null;
  Future<void> setManualMapping(String channelId, String epgChannelId) async {}
  Future<void> removeManualMapping(String channelId) async {}
  bool hasManualMapping(String channelId) => false;
}
