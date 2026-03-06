import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'dart:math' as math;
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/debug_helper.dart';

/// Smart Learning Engine that improves EPG matching accuracy over time
/// by learning from user corrections and provider-specific patterns
class SmartLearningEngine extends ChangeNotifier {
  static const String _learningDataKey = 'epg_smart_learning_data';
  static const String _providerPatternsKey = 'epg_provider_patterns';
  static const String _userCorrectionsKey = 'epg_user_corrections';

  // Learning data storage
  final Map<String, dynamic> _learningData = {};
  final Map<String, ProviderPattern> _providerPatterns = {};
  final Map<String, UserCorrection> _userCorrections = {};

  // Configuration
  int get _maxLearningEntries => 10000;

  // Getters
  Map<String, ProviderPattern> get providerPatterns =>
      Map.unmodifiable(_providerPatterns);
  Map<String, UserCorrection> get userCorrections =>
      Map.unmodifiable(_userCorrections);
  int get totalLearningEntries => _learningData.length;
  int get totalCorrections => _userCorrections.length;

  /// Initialize the learning engine
  Future<void> initialize() async {
    try {
      await _loadLearningData();
      await _loadProviderPatterns();
      await _loadUserCorrections();
      debugLog(
          'Smart Learning Engine initialized: ${_learningData.length} entries, ${_userCorrections.length} corrections');
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
        confidence:
            _calculateCorrectionConfidence(originalEpgId, correctedEpgId),
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
          'Learned from correction: $channelId -> $correctedEpgId (was $originalEpgId)');
      notifyListeners();
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
        suggestions.add(LearningMatchSuggestion(
          epgId: correction.correctedEpgId,
          confidence: 1.0,
          source: MatchSource.userCorrection,
          reason: 'Previously corrected by user',
        ));
      }
    }

    // 2. Check provider-specific patterns
    if (providerId != null && _providerPatterns.containsKey(providerId)) {
      final pattern = _providerPatterns[providerId];
      if (pattern != null) {
        final providerMatches =
            _getProviderMatches(pattern, channelName, groupTitle);
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
        suggestions.add(LearningMatchSuggestion(
          epgId: baseSuggestion.key,
          confidence: boostedConfidence,
          source: MatchSource.boostedBase,
          originalConfidence: baseSuggestion.value,
          reason: 'Confidence boosted by learning',
        ));
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
      _learningData
          .addAll(Map<String, dynamic>.from(data['learningData'] ?? {}));

      final importedPatterns =
          Map<String, dynamic>.from(data['providerPatterns'] ?? {});
      for (final entry in importedPatterns.entries) {
        _providerPatterns[entry.key] = ProviderPattern.fromJson(entry.value);
      }

      final importedCorrections =
          Map<String, dynamic>.from(data['userCorrections'] ?? {});
      for (final entry in importedCorrections.entries) {
        _userCorrections[entry.key] = UserCorrection.fromJson(entry.value);
      }

      await _saveLearningData();
      await _saveProviderPatterns();
      await _saveUserCorrections();

      debugLog(
          'Imported learning data: ${_userCorrections.length} corrections, ${_providerPatterns.length} patterns');
      notifyListeners();
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
    await prefs.remove(_learningDataKey);
    await prefs.remove(_providerPatternsKey);
    await prefs.remove(_userCorrectionsKey);

    debugLog('Cleared all learning data');
    notifyListeners();
  }

  // Private methods

  double _calculateCorrectionConfidence(String original, String corrected) {
    // Simple heuristic: longer corrections are more significant
    final lengthDiff = (corrected.length - original.length).abs();
    return (1.0 / (1.0 + lengthDiff * 0.1)).clamp(0.1, 1.0);
  }

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
      ProviderPattern pattern, String channelName, String? groupTitle) {
    final suggestions = <LearningMatchSuggestion>[];

    // Check channel name patterns
    final channelKey = _normalizeForPattern(channelName);
    if (pattern.channelPatterns.containsKey(channelKey)) {
      final epgIds = pattern.channelPatterns[channelKey];
      if (epgIds != null) {
        for (final epgId in epgIds) {
          suggestions.add(LearningMatchSuggestion(
            epgId: epgId,
            confidence: 0.8,
            source: MatchSource.providerPattern,
            reason: 'Matches provider channel pattern',
          ));
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
            suggestions.add(LearningMatchSuggestion(
              epgId: epgId,
              confidence: 0.7,
              source: MatchSource.providerPattern,
              reason: 'Matches provider group pattern',
            ));
          }
        }
      }
    }

    return suggestions;
  }

  double _boostConfidenceWithLearning(String epgId, double baseConfidence,
      String channelId, String? providerId) {
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
      String channelName, String? providerId) {
    final suggestions = <LearningMatchSuggestion>[];
    final normalizedName = _normalizeForPattern(channelName);

    for (final correction in _userCorrections.values) {
      // Skip if same channel
      if (correction.channelName == channelName) continue;

      // Skip if different provider (if provider specified)
      if (providerId != null && correction.providerId != providerId) continue;

      final normalizedCorrectionName =
          _normalizeForPattern(correction.channelName);
      final similarity =
          _calculateStringSimilarity(normalizedName, normalizedCorrectionName);

      if (similarity > 0.7) {
        suggestions.add(LearningMatchSuggestion(
          epgId: correction.correctedEpgId,
          confidence: similarity * 0.6, // Lower confidence for inferred matches
          source: MatchSource.similarCorrection,
          reason: 'Similar to previously corrected channel',
        ));
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
      ProviderPattern pattern, String channelName, String epgId) {
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
  static final RegExp _qualitySuffixRe = RegExp(r'(hd|fhd|uhd|4k|sd|uk|us|ca|au)$');

  String _normalizeForPattern(String input) {
    return input
        .toLowerCase()
        .replaceAll(_nonAlphanumericRe, '')
        .replaceAll(_qualitySuffixRe, '');
  }

  double _calculateStringSimilarity(String a, String b) {
    if (a.isEmpty || b.isEmpty) return 0.0;
    if (a == b) return 1.0;

    final aChars = a.split('');
    final bChars = b.split('');
    final maxLength = math.max(aChars.length, bChars.length);

    int matches = 0;
    final aUsed = List<bool>.filled(aChars.length, false);
    final bUsed = List<bool>.filled(bChars.length, false);

    // Find character matches
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

  Map<String, dynamic> _getStatistics() {
    return {
      'totalCorrections': _userCorrections.length,
      'totalProviderPatterns': _providerPatterns.length,
      'totalLearningEntries': _learningData.length,
      'averageCorrectionConfidence': _userCorrections.isNotEmpty
          ? _userCorrections.values
                  .map((c) => c.confidence)
                  .reduce((a, b) => a + b) /
              _userCorrections.length
          : 0.0,
      'mostCorrectedProvider': _providerPatterns.isNotEmpty
          ? _providerPatterns.entries
              .reduce((a, b) =>
                  a.value.correctionCount > b.value.correctionCount ? a : b)
              .key
          : null,
    };
  }

  // Persistence methods
  Future<void> _loadLearningData() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_learningDataKey);
    if (data != null) {
      _learningData.clear();
      _learningData.addAll(Map<String, dynamic>.from(jsonDecode(data)));
    }
  }

  Future<void> _saveLearningData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_learningDataKey, jsonEncode(_learningData));
  }

  Future<void> _loadProviderPatterns() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_providerPatternsKey);
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
    final data =
        _providerPatterns.map((key, value) => MapEntry(key, value.toJson()));
    await prefs.setString(_providerPatternsKey, jsonEncode(data));
  }

  Future<void> _loadUserCorrections() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_userCorrectionsKey);
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
    final data =
        _userCorrections.map((key, value) => MapEntry(key, value.toJson()));
    await prefs.setString(_userCorrectionsKey, jsonEncode(data));
  }
}

/// Data classes for smart learning
class UserCorrection {
  final String channelId;
  final String channelName;
  final String originalEpgId;
  final String correctedEpgId;
  final DateTime timestamp;
  final String? providerId;
  final String? groupTitle;
  final double confidence;

  UserCorrection({
    required this.channelId,
    required this.channelName,
    required this.originalEpgId,
    required this.correctedEpgId,
    required this.timestamp,
    this.providerId,
    this.groupTitle,
    required this.confidence,
  });

  Map<String, dynamic> toJson() => {
        'channelId': channelId,
        'channelName': channelName,
        'originalEpgId': originalEpgId,
        'correctedEpgId': correctedEpgId,
        'timestamp': timestamp.toIso8601String(),
        'providerId': providerId,
        'groupTitle': groupTitle,
        'confidence': confidence,
      };

  factory UserCorrection.fromJson(Map<String, dynamic> json) => UserCorrection(
        channelId: json['channelId'],
        channelName: json['channelName'],
        originalEpgId: json['originalEpgId'],
        correctedEpgId: json['correctedEpgId'],
        timestamp: DateTime.parse(json['timestamp']),
        providerId: json['providerId'],
        groupTitle: json['groupTitle'],
        confidence: json['confidence'],
      );
}

class ProviderPattern {
  final String providerId;
  final Map<String, List<String>> channelPatterns;
  final Map<String, List<String>> groupPatterns;
  int correctionCount;
  double averageConfidence;
  bool hasLogoPatterns;

  ProviderPattern({
    required this.providerId,
    required this.channelPatterns,
    required this.groupPatterns,
    required this.correctionCount,
    required this.averageConfidence,
    required this.hasLogoPatterns,
  });

  Map<String, dynamic> toJson() => {
        'providerId': providerId,
        'channelPatterns': channelPatterns,
        'groupPatterns': groupPatterns,
        'correctionCount': correctionCount,
        'averageConfidence': averageConfidence,
        'hasLogoPatterns': hasLogoPatterns,
      };

  factory ProviderPattern.fromJson(Map<String, dynamic> json) =>
      ProviderPattern(
        providerId: json['providerId'],
        channelPatterns: Map<String, List<String>>.from(json['channelPatterns']
                ?.map((k, v) => MapEntry(k, List<String>.from(v))) ??
            {}),
        groupPatterns: Map<String, List<String>>.from(json['groupPatterns']
                ?.map((k, v) => MapEntry(k, List<String>.from(v))) ??
            {}),
        correctionCount: json['correctionCount'],
        averageConfidence: json['averageConfidence'],
        hasLogoPatterns: json['hasLogoPatterns'],
      );
}

class LearningMatchSuggestion {
  final String epgId;
  final double confidence;
  final MatchSource source;
  final String reason;
  final double? originalConfidence;

  LearningMatchSuggestion({
    required this.epgId,
    required this.confidence,
    required this.source,
    required this.reason,
    this.originalConfidence,
  });
}

enum MatchSource {
  userCorrection,
  providerPattern,
  boostedBase,
  similarCorrection,
}

class ProviderOptimizationStrategy {
  final String providerId;
  final double confidenceThreshold;
  final bool enableFuzzyMatching;
  final bool enableLogoMatching;
  final List<String> preferredMatchingOrder;

  ProviderOptimizationStrategy({
    required this.providerId,
    required this.confidenceThreshold,
    required this.enableFuzzyMatching,
    required this.enableLogoMatching,
    required this.preferredMatchingOrder,
  });
}
