part of '../cross_playlist_mapping_service.dart';

extension CrossPlaylistMappingHelpers on CrossPlaylistMappingService {
  String _generateMappingId() {
    return 'mapping_${DateTime.now().millisecondsSinceEpoch}_${_sharedMappings.length}';
  }

  List<String> _generateTags(
    String? channelName,
    String? epgId,
    String? providerId,
  ) {
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
    SharedMapping mapping,
    bool overwrite,
  ) async {
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
    String channelName,
    String? groupTitle,
    SharedMapping mapping,
  ) {
    // Simple compatibility check - can be made more sophisticated
    if (groupTitle != null && mapping.sourceChannelName.contains(groupTitle)) {
      return true;
    }

    final channelKeywords = _extractKeywords(channelName, groupTitle);
    return mapping.tags.any((tag) => channelKeywords.contains(tag));
  }

  static final RegExp _nonAlphanumericRe = RegExp(r'[^a-z0-9]');
  static final RegExp _qualitySuffixRe = RegExp(
    r'(hd|fhd|uhd|4k|sd|uk|us|ca|au)$',
  );
  static final RegExp _numberSplitRe = RegExp(r'[0-9]+');

  String _normalizeForComparison(String input) {
    return input
        .toLowerCase()
        .replaceAll(_nonAlphanumericRe, '')
        .replaceAll(_qualitySuffixRe, '');
  }

  List<String> _extractKeywords(String? channelName, String? groupTitle) {
    final keywords = <String>[];

    if (channelName != null) {
      final normalized = _normalizeForComparison(channelName);
      if (normalized.length > 2) {
        keywords.add(normalized);
      }

      // Split into potential keywords
      final parts = normalized.split(_numberSplitRe);
      for (final part in parts) {
        if (part.length > 2) {
          keywords.add(part);
        }
      }
    }

    if (groupTitle != null) {
      final normalizedGroup = _normalizeForComparison(groupTitle);
      if (normalizedGroup.length > 2) {
        keywords.add(normalizedGroup);
      }
    }

    return keywords;
  }

  double _calculateStringSimilarity(String a, String b) {
    if (a.isEmpty || b.isEmpty) return 0.0;
    if (a == b) return 1.0;

    // Simple similarity calculation - can be improved
    // OPTIMIZATION: Avoid .split('') to prevent string allocation and GC pressure.
    // Use zero-allocation integer comparisons (.codeUnitAt) instead.
    // The aUsed array is omitted since the inner loop breaks on match, inherently advancing the outer loop without reuse.
    final aLen = a.length;
    final bLen = b.length;
    final maxLength = math.max(aLen, bLen);

    int matches = 0;
    final bUsed = List<bool>.filled(bLen, false);

    for (int i = 0; i < aLen; i++) {
      final aCodeUnit = a.codeUnitAt(i);
      for (int j = 0; j < bLen; j++) {
        if (!bUsed[j] && aCodeUnit == b.codeUnitAt(j)) {
          matches++;
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
        0,
        _mappingHistory.length - _maxHistoryEntries,
      );
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
    final data = prefs.getString(
      CrossPlaylistMappingService._crossPlaylistMappingsKey,
    );
    if (data != null) {
      final Map<String, dynamic> decoded =
          await compute(jsonDecode, data) as Map<String, dynamic>;
      _crossPlaylistMappings.clear();
      decoded.forEach((key, value) {
        _crossPlaylistMappings[key] = CrossPlaylistMapping.fromJson(value);
      });
    }
  }

  Future<void> _saveCrossPlaylistMappings() async {
    final prefs = await SharedPreferences.getInstance();
    final data = _crossPlaylistMappings.map(
      (key, value) => MapEntry(key, value.toJson()),
    );
    await prefs.setString(
      CrossPlaylistMappingService._crossPlaylistMappingsKey,
      jsonEncode(data),
    );
  }

  Future<void> _loadSharedMappings() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(CrossPlaylistMappingService._sharedMappingsKey);
    if (data != null) {
      final Map<String, dynamic> decoded =
          await compute(jsonDecode, data) as Map<String, dynamic>;
      _sharedMappings.clear();
      decoded.forEach((key, value) {
        _sharedMappings[key] = SharedMapping.fromJson(value);
      });
    }
  }

  Future<void> _saveSharedMappings() async {
    final prefs = await SharedPreferences.getInstance();
    final data = _sharedMappings.map(
      (key, value) => MapEntry(key, value.toJson()),
    );
    await prefs.setString(
      CrossPlaylistMappingService._sharedMappingsKey,
      jsonEncode(data),
    );
  }

  Future<void> _loadMappingHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(
      CrossPlaylistMappingService._mappingHistoryKey,
    );
    if (data != null) {
      final List<dynamic> decoded =
          await compute(jsonDecode, data) as List<dynamic>;
      _mappingHistory.clear();
      for (final entryData in decoded) {
        _mappingHistory.add(MappingHistoryEntry.fromJson(entryData));
      }
    }
  }

  Future<void> _saveMappingHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final data = _mappingHistory.map((entry) => entry.toJson()).toList();
    await prefs.setString(
      CrossPlaylistMappingService._mappingHistoryKey,
      jsonEncode(data),
    );
  }
}
