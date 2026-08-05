part of '../smart_learning_engine.dart';

extension SmartLearningHelpers on SmartLearningEngine {
  void _updateProviderPattern(String providerId, UserCorrection correction) {
    if (!_providerPatterns.containsKey(providerId)) {
      _providerPatterns[providerId] = ProviderPattern(
        providerId: providerId,
        channelPatterns: {},
        groupPatterns: {},
        correctionCount: 0,
        averageConfidence: 0.0,
        hasLogoPatterns: false,
      );
    }

    final pattern = _providerPatterns[providerId];
    if (pattern == null) return;

    // Update channel patterns
    final channelKey = _normalizeForPattern(correction.channelName);
    if (!pattern.channelPatterns.containsKey(channelKey)) {
      pattern.channelPatterns[channelKey] = [];
    }
    pattern.channelPatterns[channelKey]?.add(correction.correctedEpgId);

    // Update group patterns
    if (correction.groupTitle != null) {
      final groupKey = _normalizeForPattern(correction.groupTitle!);
      if (!pattern.groupPatterns.containsKey(groupKey)) {
        pattern.groupPatterns[groupKey] = [];
      }
      pattern.groupPatterns[groupKey]?.add(correction.correctedEpgId);
    }

    // Update statistics
    pattern.correctionCount++;
    pattern.averageConfidence =
        (pattern.averageConfidence * (pattern.correctionCount - 1) +
                correction.confidence) /
            pattern.correctionCount;

    _saveProviderPatterns();
  }

  void _updateLearningData(UserCorrection correction) {
    final key =
        '${correction.channelId}_${correction.timestamp.millisecondsSinceEpoch}';
    _learningData[key] = {
      'channelId': correction.channelId,
      'channelName': correction.channelName,
      'correctedEpgId': correction.correctedEpgId,
      'providerId': correction.providerId,
      'groupTitle': correction.groupTitle,
      'confidence': correction.confidence,
    };

    // Limit learning data size
    if (_learningData.length > _maxLearningEntries) {
      final oldestKey = _learningData.keys.first;
      _learningData.remove(oldestKey);
    }
  }

  List<LearningMatchSuggestion> _getProviderMatches(
    ProviderPattern pattern,
    String channelName,
    String? groupTitle,
  ) {
    final suggestions = <LearningMatchSuggestion>[];

    // Check channel name patterns
    final channelKey = _normalizeForPattern(channelName);
    if (pattern.channelPatterns.containsKey(channelKey)) {
      final epgIds = pattern.channelPatterns[channelKey];
      if (epgIds != null) {
        for (final epgId in epgIds) {
          suggestions.add(
            LearningMatchSuggestion(
              epgId: epgId,
              confidence: 0.8,
              source: MatchSource.providerPattern,
              reason: 'Matches provider channel pattern',
            ),
          );
        }
      }
    }

    // Check group patterns
    if (groupTitle != null) {
      final groupKey = _normalizeForPattern(groupTitle);
      if (pattern.groupPatterns.containsKey(groupKey)) {
        final epgIds = pattern.groupPatterns[groupKey];
        if (epgIds != null) {
          for (final epgId in epgIds) {
            suggestions.add(
              LearningMatchSuggestion(
                epgId: epgId,
                confidence: 0.7,
                source: MatchSource.providerPattern,
                reason: 'Matches provider group pattern',
              ),
            );
          }
        }
      }
    }

    return suggestions;
  }

  double _boostConfidenceWithLearning(
    String epgId,
    double baseConfidence,
    String channelId,
    String? providerId,
  ) {
    double boost = 0.0;

    // Check if this EPG ID has been corrected before
    for (final correction in _userCorrections.values) {
      if (correction.correctedEpgId == epgId) {
        boost += 0.1;
        break;
      }
    }

    // Provider-specific boost
    if (providerId != null && _providerPatterns.containsKey(providerId)) {
      final pattern = _providerPatterns[providerId];
      if (pattern != null) {
        final channelKey = _normalizeForPattern(channelId);
        final channelPatterns = pattern.channelPatterns[channelKey];
        if (channelPatterns != null && channelPatterns.contains(epgId)) {
          boost += 0.15;
        }
      }
    }

    return (baseConfidence + boost).clamp(0.0, 1.0);
  }

  List<LearningMatchSuggestion> _findSimilarCorrections(
    String channelName,
    String? providerId,
  ) {
    final suggestions = <LearningMatchSuggestion>[];
    final normalizedName = _normalizeForPattern(channelName);

    for (final correction in _userCorrections.values) {
      // Skip if same channel
      if (correction.channelName == channelName) continue;

      // Skip if different provider (if provider specified)
      if (providerId != null && correction.providerId != providerId) continue;

      final normalizedCorrectionName = _normalizeForPattern(
        correction.channelName,
      );
      final similarity = _calculateStringSimilarity(
        normalizedName,
        normalizedCorrectionName,
      );

      if (similarity > 0.7) {
        suggestions.add(
          LearningMatchSuggestion(
            epgId: correction.correctedEpgId,
            confidence:
                similarity * 0.6, // Lower confidence for inferred matches
            source: MatchSource.similarCorrection,
            reason: 'Similar to previously corrected channel',
          ),
        );
      }
    }

    return suggestions;
  }

  double _getLearningBoost(String epgId, String? providerId) {
    double boost = 0.0;

    // Count how many times this EPG ID has been used in corrections
    int usageCount = 0;
    for (final correction in _userCorrections.values) {
      if (correction.correctedEpgId == epgId) {
        usageCount++;
      }
    }

    // More usage = higher boost (but diminishing returns)
    boost += (usageCount * 0.05).clamp(0.0, 0.3);

    return boost;
  }

  double _getPatternBoost(
    ProviderPattern pattern,
    String channelName,
    String epgId,
  ) {
    final channelKey = _normalizeForPattern(channelName);
    final channelPatterns = pattern.channelPatterns[channelKey];
    if (channelPatterns != null && channelPatterns.contains(epgId)) {
      return 0.2;
    }
    return 0.0;
  }

  List<String> _getPreferredMatchingOrder(ProviderPattern pattern) {
    // Return EPG IDs sorted by frequency in corrections
    final epgFrequency = <String, int>{};

    for (final corrections in pattern.channelPatterns.values) {
      for (final epgId in corrections) {
        epgFrequency[epgId] = (epgFrequency[epgId] ?? 0) + 1;
      }
    }

    final sortedEntries = epgFrequency.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return sortedEntries.map((e) => e.key).toList();
  }

  static final RegExp _nonAlphanumericRe = RegExp(r'[^a-z0-9]');
  static final RegExp _qualitySuffixRe = RegExp(
    r'(hd|fhd|uhd|4k|sd|uk|us|ca|au)$',
  );

  String _normalizeForPattern(String input) {
    return input
        .toLowerCase()
        .replaceAll(_nonAlphanumericRe, '')
        .replaceAll(_qualitySuffixRe, '');
  }

  double _calculateStringSimilarity(String a, String b) {
    if (a.isEmpty || b.isEmpty) return 0.0;
    if (a == b) return 1.0;

    // ⚡ Bolt: Performance Optimization
    // Replaced `.split('')` object allocations with zero-allocation `.codeUnitAt()` integer comparisons.
    // Also eliminated the outer-loop `aUsed` tracking array, as the loop index `i` inherently advances on each iteration,
    // making outer tracking redundant since the inner loop immediately `break`s on a match.
    final aLen = a.length;
    final bLen = b.length;
    final maxLength = math.max(aLen, bLen);

    int matches = 0;
    final bUsed = List<bool>.filled(bLen, false);

    // Find character matches
    for (int i = 0; i < aLen; i++) {
      final aCode = a.codeUnitAt(i);
      for (int j = 0; j < bLen; j++) {
        if (!bUsed[j] && aCode == b.codeUnitAt(j)) {
          matches++;
          bUsed[j] = true;
          break;
        }
      }
    }

    return matches / maxLength;
  }

  Map<String, dynamic> _getStatistics() {
    // ⚡ Bolt: Performance Optimization
    // Consolidated multiple O(n) iterable operations (.map, .reduce) into single `for` loops.
    // This avoids creating intermediate iterables, closures, and multiple passes,
    // reducing time complexity from O(3n) to O(n) and saving memory allocations.
    double totalConfidence = 0.0;
    for (final correction in _userCorrections.values) {
      totalConfidence += correction.confidence;
    }

    String? mostCorrectedProvider;
    int maxCorrections = -1;
    for (final entry in _providerPatterns.entries) {
      if (entry.value.correctionCount > maxCorrections) {
        maxCorrections = entry.value.correctionCount;
        mostCorrectedProvider = entry.key;
      }
    }

    return {
      'totalCorrections': _userCorrections.length,
      'totalProviderPatterns': _providerPatterns.length,
      'totalLearningEntries': _learningData.length,
      'averageCorrectionConfidence': _userCorrections.isNotEmpty
          ? totalConfidence / _userCorrections.length
          : 0.0,
      'mostCorrectedProvider': mostCorrectedProvider,
    };
  }

// Persistence methods
  Future<void> _loadLearningData() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(SmartLearningEngine._learningDataKey);
    if (data != null) {
      _learningData.clear();
      _learningData.addAll(Map<String, dynamic>.from(jsonDecode(data)));
    }
  }

  Future<void> _saveLearningData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        SmartLearningEngine._learningDataKey, jsonEncode(_learningData));
  }

  Future<void> _loadProviderPatterns() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(SmartLearningEngine._providerPatternsKey);
    if (data != null) {
      final Map<String, dynamic> decoded = jsonDecode(data);
      _providerPatterns.clear();
      decoded.forEach((key, value) {
        _providerPatterns[key] = ProviderPattern.fromJson(value);
      });
    }
  }

  Future<void> _saveProviderPatterns() async {
    final prefs = await SharedPreferences.getInstance();
    final data = _providerPatterns.map(
      (key, value) => MapEntry(key, value.toJson()),
    );
    await prefs.setString(
        SmartLearningEngine._providerPatternsKey, jsonEncode(data));
  }

  Future<void> _loadUserCorrections() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(SmartLearningEngine._userCorrectionsKey);
    if (data != null) {
      final Map<String, dynamic> decoded = jsonDecode(data);
      _userCorrections.clear();
      decoded.forEach((key, value) {
        _userCorrections[key] = UserCorrection.fromJson(value);
      });
    }
  }

  Future<void> _saveUserCorrections() async {
    final prefs = await SharedPreferences.getInstance();
    final data = _userCorrections.map(
      (key, value) => MapEntry(key, value.toJson()),
    );
    await prefs.setString(
        SmartLearningEngine._userCorrectionsKey, jsonEncode(data));
  }
}
