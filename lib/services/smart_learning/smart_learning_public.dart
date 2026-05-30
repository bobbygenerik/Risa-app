part of '../smart_learning_engine.dart';

extension SmartLearningPublic on SmartLearningEngine {
Future<void> initialize() async {
  try {
    await _loadLearningData();
    await _loadProviderPatterns();
    await _loadUserCorrections();
    debugLog(
      'Smart Learning Engine initialized: ${_learningData.length} entries, ${_userCorrections.length} corrections',
    );
  } catch (e) {
    debugLog('Failed to initialize Smart Learning Engine: $e');
  }
}

/// Learn from a user correction (when they manually map a channel)
Future<void> learnFromCorrection({
  required String channelId,
  required String channelName,
  required String originalEpgId,
  required String correctedEpgId,
  String? providerId,
  String? groupTitle,
}) async {
  if (originalEpgId == correctedEpgId) return; // No correction made

  try {
    final correction = UserCorrection(
      channelId: channelId,
      channelName: channelName,
      originalEpgId: originalEpgId,
      correctedEpgId: correctedEpgId,
      timestamp: DateTime.now(),
      providerId: providerId,
      groupTitle: groupTitle,
      confidence: _calculateCorrectionConfidence(
        originalEpgId,
        correctedEpgId,
      ),
    );

    _userCorrections[channelId] = correction;

    // Learn provider patterns
    if (providerId != null) {
      _updateProviderPattern(providerId, correction);
    }

    // Update learning data
    _updateLearningData(correction);

    await _saveUserCorrections();
    await _saveLearningData();

    debugLog(
      'Learned from correction: $channelId -> $correctedEpgId (was $originalEpgId)',
    );
    _notifyLearningChange();
  } catch (e) {
    debugLog('Failed to learn from correction: $e');
  }
}

/// Get improved match suggestions based on learning
List<LearningMatchSuggestion> getImprovedSuggestions({
  required String channelId,
  required String channelName,
  String? providerId,
  String? groupTitle,
  List<MapEntry<String, double>> baseSuggestions = const [],
  int limit = 5,
}) {
  final suggestions = <LearningMatchSuggestion>[];

  // 1. Check for exact user corrections
  if (_userCorrections.containsKey(channelId)) {
    final correction = _userCorrections[channelId];
    if (correction != null) {
      suggestions.add(
        LearningMatchSuggestion(
          epgId: correction.correctedEpgId,
          confidence: 1.0,
          source: MatchSource.userCorrection,
          reason: 'Previously corrected by user',
        ),
      );
    }
  }

  // 2. Check provider-specific patterns
  if (providerId != null && _providerPatterns.containsKey(providerId)) {
    final pattern = _providerPatterns[providerId];
    if (pattern != null) {
      final providerMatches = _getProviderMatches(
        pattern,
        channelName,
        groupTitle,
      );
      suggestions.addAll(providerMatches);
    }
  }

  // 3. Apply learning-based confidence boost to base suggestions
  for (final baseSuggestion in baseSuggestions) {
    final boostedConfidence = _boostConfidenceWithLearning(
      baseSuggestion.key,
      baseSuggestion.value,
      channelId,
      providerId,
    );

    if (boostedConfidence > baseSuggestion.value) {
      suggestions.add(
        LearningMatchSuggestion(
          epgId: baseSuggestion.key,
          confidence: boostedConfidence,
          source: MatchSource.boostedBase,
          originalConfidence: baseSuggestion.value,
          reason: 'Confidence boosted by learning',
        ),
      );
    }
  }

  // 4. Find similar corrections
  final similarCorrections = _findSimilarCorrections(channelName, providerId);
  suggestions.addAll(similarCorrections);

  // Sort by confidence and remove duplicates
  final uniqueSuggestions = <String, LearningMatchSuggestion>{};
  for (final suggestion in suggestions) {
    final existing = uniqueSuggestions[suggestion.epgId];
    if (existing == null || suggestion.confidence > existing.confidence) {
      uniqueSuggestions[suggestion.epgId] = suggestion;
    }
  }

  final sortedSuggestions = uniqueSuggestions.values.toList()
    ..sort((a, b) => b.confidence.compareTo(a.confidence));

  return sortedSuggestions.take(limit).toList();
}

/// Calculate confidence score for a potential match
double calculateMatchConfidence({
  required String channelId,
  required String channelName,
  required String epgId,
  String? providerId,
  String? groupTitle,
}) {
  double confidence = 0.5; // Base confidence

  // Boost for user corrections
  if (_userCorrections.containsKey(channelId)) {
    final correction = _userCorrections[channelId];
    if (correction != null) {
      if (correction.correctedEpgId == epgId) {
        confidence = 1.0;
      } else {
        confidence *= 0.1; // Penalize different from user correction
      }
    }
  }

  // Boost for provider patterns
  if (providerId != null && _providerPatterns.containsKey(providerId)) {
    final pattern = _providerPatterns[providerId];
    if (pattern != null) {
      final patternBoost = _getPatternBoost(pattern, channelName, epgId);
      confidence = (confidence + patternBoost).clamp(0.0, 1.0);
    }
  }

  // Learning-based adjustments
  final learningBoost = _getLearningBoost(epgId, providerId);
  confidence = (confidence + learningBoost).clamp(0.0, 1.0);

  return confidence;
}

/// Get provider optimization strategy
ProviderOptimizationStrategy? getProviderStrategy(String providerId) {
  final pattern = _providerPatterns[providerId];
  if (pattern == null) return null;

  return ProviderOptimizationStrategy(
    providerId: providerId,
    confidenceThreshold: pattern.averageConfidence > 0.8 ? 0.6 : 0.7,
    enableFuzzyMatching: pattern.correctionCount > 10,
    enableLogoMatching: pattern.hasLogoPatterns,
    preferredMatchingOrder: _getPreferredMatchingOrder(pattern),
  );
}

/// Export learning data for backup/sharing
Map<String, dynamic> exportLearningData() {
  return {
    'version': '1.0',
    'timestamp': DateTime.now().toIso8601String(),
    'learningData': _learningData,
    'providerPatterns': _providerPatterns.map(
      (key, value) => MapEntry(key, value.toJson()),
    ),
    'userCorrections': _userCorrections.map(
      (key, value) => MapEntry(key, value.toJson()),
    ),
    'statistics': _getStatistics(),
  };
}

/// Import learning data from backup
Future<void> importLearningData(Map<String, dynamic> data) async {
  try {
    if (data['version'] != '1.0') {
      throw Exception('Unsupported learning data version');
    }

    // Merge with existing data
    _learningData.addAll(
      Map<String, dynamic>.from(data['learningData'] ?? {}),
    );

    final importedPatterns = Map<String, dynamic>.from(
      data['providerPatterns'] ?? {},
    );
    for (final entry in importedPatterns.entries) {
      _providerPatterns[entry.key] = ProviderPattern.fromJson(entry.value);
    }

    final importedCorrections = Map<String, dynamic>.from(
      data['userCorrections'] ?? {},
    );
    for (final entry in importedCorrections.entries) {
      _userCorrections[entry.key] = UserCorrection.fromJson(entry.value);
    }

    await _saveLearningData();
    await _saveProviderPatterns();
    await _saveUserCorrections();

    debugLog(
      'Imported learning data: ${_userCorrections.length} corrections, ${_providerPatterns.length} patterns',
    );
    _notifyLearningChange();
  } catch (e) {
    debugLog('Failed to import learning data: $e');
    rethrow;
  }
}

/// Clear all learning data
Future<void> clearLearningData() async {
  _learningData.clear();
  _providerPatterns.clear();
  _userCorrections.clear();

  final prefs = await SharedPreferences.getInstance();
  await prefs.remove(SmartLearningEngine._learningDataKey);
  await prefs.remove(SmartLearningEngine._providerPatternsKey);
  await prefs.remove(SmartLearningEngine._userCorrectionsKey);

  debugLog('Cleared all learning data');
  _notifyLearningChange();
}

// Private methods

double _calculateCorrectionConfidence(String original, String corrected) {
  // Simple heuristic: longer corrections are more significant
  final lengthDiff = (corrected.length - original.length).abs();
  return (1.0 / (1.0 + lengthDiff * 0.1)).clamp(0.1, 1.0);
}
}
