part of '../cross_playlist_mapping_service.dart';

extension CrossPlaylistMappingLogic on CrossPlaylistMappingService {
  Future<void> initialize() async {
    try {
      await _loadCrossPlaylistMappings();
      await _loadSharedMappings();
      await _loadMappingHistory();

      debugLog(
        'Cross-Playlist Mapping Service initialized: ${_crossPlaylistMappings.length} mappings',
      );
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
      _addToHistory(
        MappingHistoryEntry(
          action: MappingAction.shared,
          timestamp: timestamp,
          sourceChannelId: sourceChannelId,
          sourcePlaylistId: sourcePlaylistId,
          epgId: epgId,
          details: 'Shared mapping: $sourceChannelName -> $epgId',
        ),
      );

      await _saveSharedMappings();
      await _saveCrossPlaylistMappings();

      debugLog('Shared mapping: $sourceChannelId -> $epgId (ID: $mappingId)');
      _notifyMappingChange();
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
          results.add(
            ImportedMappingResult(
              channelId: mapping.sourceChannelId,
              epgId: mapping.epgId,
              success: false,
              reason:
                  'Low confidence (${mapping.confidence.toStringAsFixed(2)})',
            ),
          );
          continue;
        }

        // Check if mapping already exists
        final existingMapping = _findExistingMapping(mapping.sourceChannelId);
        if (existingMapping != null && !overwriteExisting) {
          results.add(
            ImportedMappingResult(
              channelId: mapping.sourceChannelId,
              epgId: mapping.epgId,
              success: false,
              reason: 'Mapping already exists',
            ),
          );
          continue;
        }

        // Import the mapping
        await _importSingleMapping(mapping, overwriteExisting);

        results.add(
          ImportedMappingResult(
            channelId: mapping.sourceChannelId,
            epgId: mapping.epgId,
            success: true,
            confidence: mapping.confidence,
          ),
        );

        // Update usage statistics
        mapping.usageCount++;
        // Note: lastUsed is final, would need to recreate mapping to update
        // For now, just update usage count
      }

      await _saveSharedMappings();

      debugLog(
        'Imported ${results.where((r) => r.success).length} mappings from playlist: $sourcePlaylistId',
      );
      _notifyMappingChange();
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
          compatible.add(
            CompatibleMapping(
              mapping: mapping,
              matchReason: MatchReason.exactChannelId,
              confidence: mapping.confidence,
            ),
          );
        }
      }

      // 2. Find matches by channel name similarity
      final normalizedName = _normalizeForComparison(channelName);
      for (final mapping in _sharedMappings.values) {
        if (mapping.sourceChannelName == channelName) {
          compatible.add(
            CompatibleMapping(
              mapping: mapping,
              matchReason: MatchReason.exactChannelName,
              confidence: mapping.confidence,
            ),
          );
          continue;
        }

        final normalizedSourceName = _normalizeForComparison(
          mapping.sourceChannelName,
        );
        final nameSimilarity = _calculateStringSimilarity(
          normalizedName,
          normalizedSourceName,
        );

        if (nameSimilarity >= 0.8) {
          compatible.add(
            CompatibleMapping(
              mapping: mapping,
              matchReason: MatchReason.similarChannelName,
              confidence: mapping.confidence * nameSimilarity,
            ),
          );
        }
      }

      // 3. Find provider-specific mappings
      if (providerId != null) {
        for (final mapping in _sharedMappings.values) {
          if (mapping.providerId == providerId &&
              _isChannelCompatible(channelName, groupTitle, mapping)) {
            compatible.add(
              CompatibleMapping(
                mapping: mapping,
                matchReason: MatchReason.sameProvider,
                confidence: mapping.confidence *
                    0.8, // Slight penalty for indirect match
              ),
            );
          }
        }
      }

      // 4. Find mappings by tags/keywords
      final channelKeywords = _extractKeywords(channelName, groupTitle);
      for (final mapping in _sharedMappings.values) {
        if (mapping.tags.any((tag) => channelKeywords.contains(tag))) {
          compatible.add(
            CompatibleMapping(
              mapping: mapping,
              matchReason: MatchReason.keywordMatch,
              confidence: mapping.confidence *
                  0.7, // Lower confidence for keyword matches
            ),
          );
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
      _addToHistory(
        MappingHistoryEntry(
          action: MappingAction.applied,
          timestamp: DateTime.now(),
          sourceChannelId: channelId,
          sourcePlaylistId: playlistId,
          epgId: mapping.epgId,
          details:
              'Applied shared mapping: ${mapping.sourceChannelName} -> ${mapping.epgId}',
        ),
      );

      await _saveCrossPlaylistMappings();

      debugLog('Applied compatible mapping: $channelId -> ${mapping.epgId}');
      _notifyMappingChange();

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
      final crossMappingsData = Map<String, dynamic>.from(
        data['crossPlaylistMappings'] ?? {},
      );
      for (final entry in crossMappingsData.entries) {
        _crossPlaylistMappings[entry.key] = CrossPlaylistMapping.fromJson(
          entry.value,
        );
      }

      // Import shared mappings (merge, don't overwrite)
      final sharedMappingsData = Map<String, dynamic>.from(
        data['sharedMappings'] ?? {},
      );
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
          0,
          _mappingHistory.length - _maxHistoryEntries,
        );
      }

      await _saveCrossPlaylistMappings();
      await _saveSharedMappings();
      await _saveMappingHistory();

      debugLog(
        'Imported mappings: ${_sharedMappings.length} shared, ${_crossPlaylistMappings.length} cross-playlist',
      );
      _notifyMappingChange();
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
    await prefs.remove(CrossPlaylistMappingService._crossPlaylistMappingsKey);
    await prefs.remove(CrossPlaylistMappingService._sharedMappingsKey);
    await prefs.remove(CrossPlaylistMappingService._mappingHistoryKey);

    debugLog('Cleared all cross-playlist mappings');
    _notifyMappingChange();
  }

  /// Get mapping statistics
  Map<String, dynamic> getMappingStatistics() {
    // ⚡ Bolt: Performance Optimization
    // Replaced multiple O(n) iterable operations (.where, .map, .reduce, .fold)
    // with a single manual `for` loop. This avoids multiple passes over the collection,
    // eliminates intermediate allocations, and reduces function invocation overhead.
    // Impact: Changes O(4n) time complexity and O(n) space complexity to O(n) time and O(1) space.
    double totalConfidence = 0.0;
    int totalUsage = 0;
    int publicMappings = 0;
    SharedMapping? mostUsed;

    for (final mapping in _sharedMappings.values) {
      if (mapping.isPublic) {
        publicMappings++;
      }
      totalConfidence += mapping.confidence;
      totalUsage += mapping.usageCount;
      if (mostUsed == null || mapping.usageCount > mostUsed.usageCount) {
        mostUsed = mapping;
      }
    }

    return {
      'crossPlaylistMappings': _crossPlaylistMappings.length,
      'sharedMappings': _sharedMappings.length,
      'publicMappings': publicMappings,
      'averageConfidence': _sharedMappings.isNotEmpty
          ? totalConfidence / _sharedMappings.length
          : 0.0,
      'totalUsage': totalUsage,
      'mostUsedMapping': mostUsed?.epgId,
      'historyEntries': _mappingHistory.length,
    };
  }
}
