import 'dart:convert';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/incremental_epg_service.dart';
import '../utils/debug_helper.dart';

/// Service for managing cross-playlist EPG mappings
/// Allows sharing mappings between different playlists and users
class CrossPlaylistMappingService extends ChangeNotifier {
  static const String _crossPlaylistMappingsKey = 'epg_cross_playlist_mappings';
  static const String _sharedMappingsKey = 'epg_shared_mappings';
  static const String _mappingHistoryKey = 'epg_mapping_history';

  // Storage for cross-playlist mappings
  final Map<String, CrossPlaylistMapping> _crossPlaylistMappings = {};
  final Map<String, SharedMapping> _sharedMappings = {};
  final List<MappingHistoryEntry> _mappingHistory = [];

  // Configuration
  final int _maxHistoryEntries = 1000;
  final bool _autoSyncEnabled = true;

  // Getters
  Map<String, CrossPlaylistMapping> get crossPlaylistMappings =>
      Map.unmodifiable(_crossPlaylistMappings);
  Map<String, SharedMapping> get sharedMappings =>
      Map.unmodifiable(_sharedMappings);
  List<MappingHistoryEntry> get mappingHistory =>
      List.unmodifiable(_mappingHistory);
  bool get autoSyncEnabled => _autoSyncEnabled;

  /// Initialize the cross-playlist mapping service
  Future<void> initialize() async {
    try {
      await _loadCrossPlaylistMappings();
      await _loadSharedMappings();
      await _loadMappingHistory();

      debugLog(
          'Cross-Playlist Mapping Service initialized: ${_crossPlaylistMappings.length} mappings');
    } catch (e) {
      debugLog('Failed to initialize Cross-Playlist Mapping Service: $e');
    }
  }

  /// Share a mapping across playlists
  Future<void> shareMapping({
    required String sourceChannelId,
    required String sourcePlaylistId,
    required String epgId,
    String? sourceChannelName,
    String? providerId,
    bool makePublic = false,
    String? description,
  }) async {
    try {
      final mappingId = _generateMappingId();
      final timestamp = DateTime.now();

      final sharedMapping = SharedMapping(
        id: mappingId,
        sourceChannelId: sourceChannelId,
        sourceChannelName: sourceChannelName ?? 'Unknown Channel',
        sourcePlaylistId: sourcePlaylistId,
        epgId: epgId,
        providerId: providerId,
        createdAt: timestamp,
        lastUsed: timestamp,
        usageCount: 0,
        isPublic: makePublic,
        description: description,
        confidence: 1.0, // High confidence for user-verified mappings
        tags: _generateTags(sourceChannelName, epgId, providerId),
      );

      _sharedMappings[mappingId] = sharedMapping;

      // Update cross-playlist mappings for all playlists using this EPG
      _updateCrossPlaylistMappings(epgId, sharedMapping);

      // Add to history
      _addToHistory(MappingHistoryEntry(
        action: MappingAction.shared,
        timestamp: timestamp,
        sourceChannelId: sourceChannelId,
        sourcePlaylistId: sourcePlaylistId,
        epgId: epgId,
        details: 'Shared mapping: $sourceChannelName -> $epgId',
      ));

      await _saveSharedMappings();
      await _saveCrossPlaylistMappings();

      debugLog('Shared mapping: $sourceChannelId -> $epgId (ID: $mappingId)');
      notifyListeners();
    } catch (e) {
      debugLog('Failed to share mapping: $e');
    }
  }

  /// Import mappings from another playlist
  Future<List<ImportedMappingResult>> importMappingsFromPlaylist({
    required String sourcePlaylistId,
    List<String>? channelIds,
    bool overwriteExisting = false,
    double minConfidence = 0.7,
  }) async {
    final results = <ImportedMappingResult>[];

    try {
      final sourceMappings = _getMappingsForPlaylist(sourcePlaylistId);

      for (final mapping in sourceMappings) {
        if (channelIds != null &&
            !channelIds.contains(mapping.sourceChannelId)) {
          continue;
        }

        if (mapping.confidence < minConfidence) {
          results.add(ImportedMappingResult(
            channelId: mapping.sourceChannelId,
            epgId: mapping.epgId,
            success: false,
            reason: 'Low confidence (${mapping.confidence.toStringAsFixed(2)})',
          ));
          continue;
        }

        // Check if mapping already exists
        final existingMapping = _findExistingMapping(mapping.sourceChannelId);
        if (existingMapping != null && !overwriteExisting) {
          results.add(ImportedMappingResult(
            channelId: mapping.sourceChannelId,
            epgId: mapping.epgId,
            success: false,
            reason: 'Mapping already exists',
          ));
          continue;
        }

        // Import the mapping
        await _importSingleMapping(mapping, overwriteExisting);

        results.add(ImportedMappingResult(
          channelId: mapping.sourceChannelId,
          epgId: mapping.epgId,
          success: true,
          confidence: mapping.confidence,
        ));

        // Update usage statistics
        mapping.usageCount++;
        // Note: lastUsed is final, would need to recreate mapping to update
        // For now, just update usage count
      }

      await _saveSharedMappings();

      debugLog(
          'Imported ${results.where((r) => r.success).length} mappings from playlist: $sourcePlaylistId');
      notifyListeners();
    } catch (e) {
      debugLog('Failed to import mappings from playlist $sourcePlaylistId: $e');
    }

    return results;
  }

  /// Find compatible mappings for a channel
  Future<List<CompatibleMapping>> findCompatibleMappings({
    required String channelId,
    required String channelName,
    String? providerId,
    String? groupTitle,
    double minConfidence = 0.5,
    int maxResults = 10,
  }) async {
    final compatible = <CompatibleMapping>[];

    try {
      // 1. Find exact matches by channel ID
      for (final mapping in _sharedMappings.values) {
        if (mapping.sourceChannelId == channelId) {
          compatible.add(CompatibleMapping(
            mapping: mapping,
            matchReason: MatchReason.exactChannelId,
            confidence: mapping.confidence,
          ));
        }
      }

      // 2. Find matches by channel name similarity
      final normalizedName = _normalizeForComparison(channelName);
      for (final mapping in _sharedMappings.values) {
        if (mapping.sourceChannelName == channelName) {
          compatible.add(CompatibleMapping(
            mapping: mapping,
            matchReason: MatchReason.exactChannelName,
            confidence: mapping.confidence,
          ));
          continue;
        }

        final normalizedSourceName =
            _normalizeForComparison(mapping.sourceChannelName);
        final nameSimilarity =
            _calculateStringSimilarity(normalizedName, normalizedSourceName);

        if (nameSimilarity >= 0.8) {
          compatible.add(CompatibleMapping(
            mapping: mapping,
            matchReason: MatchReason.similarChannelName,
            confidence: mapping.confidence * nameSimilarity,
          ));
        }
      }

      // 3. Find provider-specific mappings
      if (providerId != null) {
        for (final mapping in _sharedMappings.values) {
          if (mapping.providerId == providerId &&
              _isChannelCompatible(channelName, groupTitle, mapping)) {
            compatible.add(CompatibleMapping(
              mapping: mapping,
              matchReason: MatchReason.sameProvider,
              confidence:
                  mapping.confidence * 0.8, // Slight penalty for indirect match
            ));
          }
        }
      }

      // 4. Find mappings by tags/keywords
      final channelKeywords = _extractKeywords(channelName, groupTitle);
      for (final mapping in _sharedMappings.values) {
        if (mapping.tags.any((tag) => channelKeywords.contains(tag))) {
          compatible.add(CompatibleMapping(
            mapping: mapping,
            matchReason: MatchReason.keywordMatch,
            confidence: mapping.confidence *
                0.7, // Lower confidence for keyword matches
          ));
        }
      }

      // Filter by minimum confidence and sort
      final filtered = compatible
          .where((c) => c.confidence >= minConfidence)
          .toList()
        ..sort((a, b) => b.confidence.compareTo(a.confidence));

      return filtered.take(maxResults).toList();
    } catch (e) {
      debugLog('Error finding compatible mappings: $e');
      return compatible;
    }
  }

  /// Apply a compatible mapping to a channel
  Future<bool> applyCompatibleMapping({
    required String channelId,
    required String playlistId,
    required String mappingId,
    IncrementalEpgService? epgService,
  }) async {
    try {
      final mapping = _sharedMappings[mappingId];
      if (mapping == null) {
        debugLog('Mapping not found: $mappingId');
        return false;
      }

      // Apply the mapping using the EPG service
      if (epgService != null) {
        await epgService.setManualMapping(channelId, mapping.epgId);
      }

      // Update cross-playlist mappings
      final crossMapping = CrossPlaylistMapping(
        playlistId: playlistId,
        channelId: channelId,
        epgId: mapping.epgId,
        sourceMappingId: mappingId,
        appliedAt: DateTime.now(),
        confidence: mapping.confidence,
      );

      _crossPlaylistMappings['${playlistId}_$channelId'] = crossMapping;

      // Add to history
      _addToHistory(MappingHistoryEntry(
        action: MappingAction.applied,
        timestamp: DateTime.now(),
        sourceChannelId: channelId,
        sourcePlaylistId: playlistId,
        epgId: mapping.epgId,
        details:
            'Applied shared mapping: ${mapping.sourceChannelName} -> ${mapping.epgId}',
      ));

      await _saveCrossPlaylistMappings();

      debugLog('Applied compatible mapping: $channelId -> ${mapping.epgId}');
      notifyListeners();

      return true;
    } catch (e) {
      debugLog('Failed to apply compatible mapping: $e');
      return false;
    }
  }

  /// Export all mappings for backup/sharing
  Map<String, dynamic> exportAllMappings() {
    return {
      'version': '1.0',
      'timestamp': DateTime.now().toIso8601String(),
      'crossPlaylistMappings': _crossPlaylistMappings.map(
        (key, value) => MapEntry(key, value.toJson()),
      ),
      'sharedMappings': _sharedMappings.map(
        (key, value) => MapEntry(key, value.toJson()),
      ),
      'mappingHistory': _mappingHistory.map((entry) => entry.toJson()).toList(),
      'statistics': _getExportStatistics(),
    };
  }

  /// Import mappings from backup
  Future<void> importAllMappings(Map<String, dynamic> data) async {
    try {
      if (data['version'] != '1.0') {
        throw Exception('Unsupported export version');
      }

      // Import cross-playlist mappings
      final crossMappingsData =
          Map<String, dynamic>.from(data['crossPlaylistMappings'] ?? {});
      for (final entry in crossMappingsData.entries) {
        _crossPlaylistMappings[entry.key] =
            CrossPlaylistMapping.fromJson(entry.value);
      }

      // Import shared mappings (merge, don't overwrite)
      final sharedMappingsData =
          Map<String, dynamic>.from(data['sharedMappings'] ?? {});
      for (final entry in sharedMappingsData.entries) {
        if (!_sharedMappings.containsKey(entry.key)) {
          _sharedMappings[entry.key] = SharedMapping.fromJson(entry.value);
        }
      }

      // Import history (append, don't overwrite)
      final historyData = List<dynamic>.from(data['mappingHistory'] ?? []);
      for (final entryData in historyData) {
        _mappingHistory.add(MappingHistoryEntry.fromJson(entryData));
      }

      // Trim history if too long
      if (_mappingHistory.length > _maxHistoryEntries) {
        _mappingHistory.removeRange(
            0, _mappingHistory.length - _maxHistoryEntries);
      }

      await _saveCrossPlaylistMappings();
      await _saveSharedMappings();
      await _saveMappingHistory();

      debugLog(
          'Imported mappings: ${_sharedMappings.length} shared, ${_crossPlaylistMappings.length} cross-playlist');
      notifyListeners();
    } catch (e) {
      debugLog('Failed to import mappings: $e');
      rethrow;
    }
  }

  /// Clear all mappings
  Future<void> clearAllMappings() async {
    _crossPlaylistMappings.clear();
    _sharedMappings.clear();
    _mappingHistory.clear();

    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_crossPlaylistMappingsKey);
    await prefs.remove(_sharedMappingsKey);
    await prefs.remove(_mappingHistoryKey);

    debugLog('Cleared all cross-playlist mappings');
    notifyListeners();
  }

  /// Get mapping statistics
  Map<String, dynamic> getMappingStatistics() {
    return {
      'crossPlaylistMappings': _crossPlaylistMappings.length,
      'sharedMappings': _sharedMappings.length,
      'publicMappings': _sharedMappings.values.where((m) => m.isPublic).length,
      'averageConfidence': _sharedMappings.isNotEmpty
          ? _sharedMappings.values
                  .map((m) => m.confidence)
                  .reduce((a, b) => a + b) /
              _sharedMappings.length
          : 0.0,
      'totalUsage': _sharedMappings.values
          .map((m) => m.usageCount)
          .fold(0, (sum, count) => sum + count),
      'mostUsedMapping': _sharedMappings.isNotEmpty
          ? _sharedMappings.values
              .reduce((a, b) => a.usageCount > b.usageCount ? a : b)
              .epgId
          : null,
      'historyEntries': _mappingHistory.length,
    };
  }

  // Private methods

  String _generateMappingId() {
    return 'mapping_${DateTime.now().millisecondsSinceEpoch}_${_sharedMappings.length}';
  }

  List<String> _generateTags(
      String? channelName, String? epgId, String? providerId) {
    final tags = <String>[];

    if (channelName != null) {
      final normalized = _normalizeForComparison(channelName);
      tags.addAll(_extractKeywords(normalized, null));
    }

    if (epgId != null) {
      tags.add(_normalizeForComparison(epgId));
    }

    if (providerId != null) {
      tags.add(providerId.toLowerCase());
    }

    return tags.toSet().toList(); // Remove duplicates
  }

  void _updateCrossPlaylistMappings(String epgId, SharedMapping sharedMapping) {
    // This would update any cross-playlist mappings that use the same EPG ID
    // Implementation depends on how cross-playlist mappings are structured
  }

  List<SharedMapping> _getMappingsForPlaylist(String playlistId) {
    return _sharedMappings.values
        .where((mapping) => mapping.sourcePlaylistId == playlistId)
        .toList();
  }

  CrossPlaylistMapping? _findExistingMapping(String channelId) {
    for (final mapping in _crossPlaylistMappings.values) {
      if (mapping.channelId == channelId) {
        return mapping;
      }
    }
    return null;
  }

  Future<void> _importSingleMapping(
      SharedMapping mapping, bool overwrite) async {
    final crossMapping = CrossPlaylistMapping(
      playlistId: 'imported', // This would be the current playlist ID
      channelId: mapping.sourceChannelId,
      epgId: mapping.epgId,
      sourceMappingId: mapping.id,
      appliedAt: DateTime.now(),
      confidence: mapping.confidence,
    );

    final key = 'imported_${mapping.sourceChannelId}';
    _crossPlaylistMappings[key] = crossMapping;
  }

  bool _isChannelCompatible(
      String channelName, String? groupTitle, SharedMapping mapping) {
    // Simple compatibility check - can be made more sophisticated
    if (groupTitle != null && mapping.sourceChannelName.contains(groupTitle)) {
      return true;
    }

    final channelKeywords = _extractKeywords(channelName, groupTitle);
    return mapping.tags.any((tag) => channelKeywords.contains(tag));
  }

  String _normalizeForComparison(String input) {
    return input
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]'), '')
        .replaceAll(RegExp(r'(hd|fhd|uhd|4k|sd|uk|us|ca|au)$'), '');
  }

  List<String> _extractKeywords(String? channelName, String? groupTitle) {
    final keywords = <String>[];

    if (channelName != null) {
      final normalized = _normalizeForComparison(channelName);
      keywords.add(normalized);

      // Split into potential keywords
      final parts =
          normalized.split(RegExp(r'[0-9]+')).where((part) => part.length > 2);
      keywords.addAll(parts);
    }

    if (groupTitle != null) {
      final normalizedGroup = _normalizeForComparison(groupTitle);
      keywords.add(normalizedGroup);
    }

    return keywords.where((keyword) => keyword.length > 2).toList();
  }

  double _calculateStringSimilarity(String a, String b) {
    if (a.isEmpty || b.isEmpty) return 0.0;
    if (a == b) return 1.0;

    // Simple similarity calculation - can be improved
    final aChars = a.split('');
    final bChars = b.split('');
    final maxLength = math.max(aChars.length, bChars.length);

    int matches = 0;
    final aUsed = List<bool>.filled(aChars.length, false);
    final bUsed = List<bool>.filled(bChars.length, false);

    for (int i = 0; i < aChars.length; i++) {
      for (int j = 0; j < bChars.length; j++) {
        if (!aUsed[i] && !bUsed[j] && aChars[i] == bChars[j]) {
          matches++;
          aUsed[i] = true;
          bUsed[j] = true;
          break;
        }
      }
    }

    return matches / maxLength;
  }

  void _addToHistory(MappingHistoryEntry entry) {
    _mappingHistory.add(entry);

    // Trim history if too long
    if (_mappingHistory.length > _maxHistoryEntries) {
      _mappingHistory.removeRange(
          0, _mappingHistory.length - _maxHistoryEntries);
    }
  }

  Map<String, dynamic> _getExportStatistics() {
    return {
      'totalMappings': _sharedMappings.length,
      'publicMappings': _sharedMappings.values.where((m) => m.isPublic).length,
      'totalUsage': _sharedMappings.values
          .map((m) => m.usageCount)
          .fold(0, (sum, count) => sum + count),
      'exportDate': DateTime.now().toIso8601String(),
    };
  }

  // Persistence methods
  Future<void> _loadCrossPlaylistMappings() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_crossPlaylistMappingsKey);
    if (data != null) {
      final Map<String, dynamic> decoded = jsonDecode(data);
      _crossPlaylistMappings.clear();
      decoded.forEach((key, value) {
        _crossPlaylistMappings[key] = CrossPlaylistMapping.fromJson(value);
      });
    }
  }

  Future<void> _saveCrossPlaylistMappings() async {
    final prefs = await SharedPreferences.getInstance();
    final data = _crossPlaylistMappings
        .map((key, value) => MapEntry(key, value.toJson()));
    await prefs.setString(_crossPlaylistMappingsKey, jsonEncode(data));
  }

  Future<void> _loadSharedMappings() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_sharedMappingsKey);
    if (data != null) {
      final Map<String, dynamic> decoded = jsonDecode(data);
      _sharedMappings.clear();
      decoded.forEach((key, value) {
        _sharedMappings[key] = SharedMapping.fromJson(value);
      });
    }
  }

  Future<void> _saveSharedMappings() async {
    final prefs = await SharedPreferences.getInstance();
    final data =
        _sharedMappings.map((key, value) => MapEntry(key, value.toJson()));
    await prefs.setString(_sharedMappingsKey, jsonEncode(data));
  }

  Future<void> _loadMappingHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_mappingHistoryKey);
    if (data != null) {
      final List<dynamic> decoded = jsonDecode(data);
      _mappingHistory.clear();
      for (final entryData in decoded) {
        _mappingHistory.add(MappingHistoryEntry.fromJson(entryData));
      }
    }
  }

  Future<void> _saveMappingHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final data = _mappingHistory.map((entry) => entry.toJson()).toList();
    await prefs.setString(_mappingHistoryKey, jsonEncode(data));
  }
}

/// Data classes for cross-playlist mapping
class CrossPlaylistMapping {
  final String playlistId;
  final String channelId;
  final String epgId;
  final String sourceMappingId;
  final DateTime appliedAt;
  final double confidence;

  CrossPlaylistMapping({
    required this.playlistId,
    required this.channelId,
    required this.epgId,
    required this.sourceMappingId,
    required this.appliedAt,
    required this.confidence,
  });

  Map<String, dynamic> toJson() => {
        'playlistId': playlistId,
        'channelId': channelId,
        'epgId': epgId,
        'sourceMappingId': sourceMappingId,
        'appliedAt': appliedAt.toIso8601String(),
        'confidence': confidence,
      };

  factory CrossPlaylistMapping.fromJson(Map<String, dynamic> json) =>
      CrossPlaylistMapping(
        playlistId: json['playlistId'],
        channelId: json['channelId'],
        epgId: json['epgId'],
        sourceMappingId: json['sourceMappingId'],
        appliedAt: DateTime.parse(json['appliedAt']),
        confidence: json['confidence'],
      );
}

class SharedMapping {
  final String id;
  final String sourceChannelId;
  final String sourceChannelName;
  final String sourcePlaylistId;
  final String epgId;
  final String? providerId;
  final DateTime createdAt;
  final DateTime lastUsed;
  int usageCount;
  final bool isPublic;
  final String? description;
  final double confidence;
  final List<String> tags;

  SharedMapping({
    required this.id,
    required this.sourceChannelId,
    required this.sourceChannelName,
    required this.sourcePlaylistId,
    required this.epgId,
    this.providerId,
    required this.createdAt,
    required this.lastUsed,
    required this.usageCount,
    required this.isPublic,
    this.description,
    required this.confidence,
    required this.tags,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'sourceChannelId': sourceChannelId,
        'sourceChannelName': sourceChannelName,
        'sourcePlaylistId': sourcePlaylistId,
        'epgId': epgId,
        'providerId': providerId,
        'createdAt': createdAt.toIso8601String(),
        'lastUsed': lastUsed.toIso8601String(),
        'usageCount': usageCount,
        'isPublic': isPublic,
        'description': description,
        'confidence': confidence,
        'tags': tags,
      };

  factory SharedMapping.fromJson(Map<String, dynamic> json) => SharedMapping(
        id: json['id'],
        sourceChannelId: json['sourceChannelId'],
        sourceChannelName: json['sourceChannelName'],
        sourcePlaylistId: json['sourcePlaylistId'],
        epgId: json['epgId'],
        providerId: json['providerId'],
        createdAt: DateTime.parse(json['createdAt']),
        lastUsed: DateTime.parse(json['lastUsed']),
        usageCount: json['usageCount'],
        isPublic: json['isPublic'],
        description: json['description'],
        confidence: json['confidence'],
        tags: List<String>.from(json['tags'] ?? []),
      );
}

class MappingHistoryEntry {
  final MappingAction action;
  final DateTime timestamp;
  final String sourceChannelId;
  final String sourcePlaylistId;
  final String epgId;
  final String details;

  MappingHistoryEntry({
    required this.action,
    required this.timestamp,
    required this.sourceChannelId,
    required this.sourcePlaylistId,
    required this.epgId,
    required this.details,
  });

  Map<String, dynamic> toJson() => {
        'action': action.toString().split('.').last,
        'timestamp': timestamp.toIso8601String(),
        'sourceChannelId': sourceChannelId,
        'sourcePlaylistId': sourcePlaylistId,
        'epgId': epgId,
        'details': details,
      };

  factory MappingHistoryEntry.fromJson(Map<String, dynamic> json) =>
      MappingHistoryEntry(
        action: MappingAction.values.firstWhere(
          (e) => e.toString().split('.').last == json['action'],
          orElse: () => MappingAction.shared,
        ),
        timestamp: DateTime.parse(json['timestamp']),
        sourceChannelId: json['sourceChannelId'],
        sourcePlaylistId: json['sourcePlaylistId'],
        epgId: json['epgId'],
        details: json['details'],
      );
}

class CompatibleMapping {
  final SharedMapping mapping;
  final MatchReason matchReason;
  final double confidence;

  CompatibleMapping({
    required this.mapping,
    required this.matchReason,
    required this.confidence,
  });
}

class ImportedMappingResult {
  final String channelId;
  final String epgId;
  final bool success;
  final String? reason;
  final double? confidence;

  ImportedMappingResult({
    required this.channelId,
    required this.epgId,
    required this.success,
    this.reason,
    this.confidence,
  });
}

enum MappingAction {
  shared,
  applied,
  imported,
  exported,
  deleted,
}

enum MatchReason {
  exactChannelId,
  exactChannelName,
  similarChannelName,
  sameProvider,
  keywordMatch,
}
