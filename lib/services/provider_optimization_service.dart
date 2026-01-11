import 'package:flutter/foundation.dart';
import '../models/channel.dart';
import '../services/incremental_epg_service.dart';
import '../services/smart_learning_engine.dart';
import '../services/logo_matching_service.dart';
import '../services/cross_playlist_mapping_service.dart';
import '../utils/debug_helper.dart';

/// Service for provider-specific EPG matching optimization
/// Applies different strategies based on IPTV provider characteristics
class ProviderOptimizationService extends ChangeNotifier {
  final Map<String, ProviderOptimizationConfig> _providerConfigs = {};
  final IncrementalEpgService _incrementalEpgService; // ignore: unused_field
  final SmartLearningEngine _smartLearningEngine;
  final LogoMatchingService _logoMatchingService;
  final CrossPlaylistMappingService _crossPlaylistService;

  // Built-in provider optimizations
  final Map<String, KnownProviderConfig> _knownProviders = {
    'xtream': KnownProviderConfig(
      name: 'Xtream Codes',
      patterns: [
        ProviderPattern(
            type: PatternType.channelId,
            pattern: r'^(\d+)_(\d+)$',
            weight: 0.9),
        ProviderPattern(
            type: PatternType.channelName, pattern: r'^ch(\d+)$', weight: 0.7),
      ],
      optimizationHints: {
        'enableFuzzyMatching': true,
        'confidenceThreshold': 0.6,
        'enableLogoMatching': false,
        'maxRetries': 3,
      },
    ),
    'm3u8': KnownProviderConfig(
      name: 'Standard M3U/M3U8',
      patterns: [
        ProviderPattern(
            type: PatternType.channelId, pattern: r'^(\w+)$', weight: 0.8),
        ProviderPattern(
            type: PatternType.tvgId, pattern: r'^(\w+)$', weight: 0.95),
      ],
      optimizationHints: {
        'enableFuzzyMatching': true,
        'confidenceThreshold': 0.7,
        'enableLogoMatching': true,
        'maxRetries': 2,
      },
    ),
    'stalker': KnownProviderConfig(
      name: 'Stalker Portal',
      patterns: [
        ProviderPattern(
            type: PatternType.channelId, pattern: r'^(\d+)$', weight: 0.9),
        ProviderPattern(
            type: PatternType.channelName, pattern: r'^tv(\d+)$', weight: 0.8),
      ],
      optimizationHints: {
        'enableFuzzyMatching': false,
        'confidenceThreshold': 0.8,
        'enableLogoMatching': true,
        'maxRetries': 2,
      },
    ),
    'ott': KnownProviderConfig(
      name: 'OTT Platforms',
      patterns: [
        ProviderPattern(
            type: PatternType.channelId, pattern: r'^ott_(\w+)$', weight: 0.9),
        ProviderPattern(
            type: PatternType.channelName,
            pattern: r'^channel_(\w+)$',
            weight: 0.7),
      ],
      optimizationHints: {
        'enableFuzzyMatching': true,
        'confidenceThreshold': 0.75,
        'enableLogoMatching': true,
        'maxRetries': 3,
      },
    ),
  };

  // Getters
  Map<String, ProviderOptimizationConfig> get providerConfigs =>
      Map.unmodifiable(_providerConfigs);
  List<String> get supportedProviders => _knownProviders.keys.toList();

  ProviderOptimizationService(
    this._incrementalEpgService,
    this._smartLearningEngine,
    this._logoMatchingService,
    this._crossPlaylistService,
  );

  /// Initialize the provider optimization service
  Future<void> initialize() async {
    try {
      await _loadProviderConfigs();
      _detectKnownProviders();

      debugLog(
          'Provider Optimization Service initialized with ${_providerConfigs.length} provider configs');
    } catch (e) {
      debugLog('Failed to initialize Provider Optimization Service: $e');
    }
  }

  /// Detect and configure provider optimization based on playlist characteristics
  Future<String?> detectAndConfigureProvider(List<Channel> channels) async {
    try {
      // Analyze playlist characteristics
      final characteristics = _analyzePlaylistCharacteristics(channels);

      // Match against known providers
      final matchedProvider = _matchKnownProvider(characteristics);

      if (matchedProvider != null) {
        final config = ProviderOptimizationConfig(
          providerId:
              matchedProvider.config.name.toLowerCase().replaceAll(' ', '_'),
          providerName: matchedProvider.config.name,
          confidence: matchedProvider.matchScore,
          patterns: matchedProvider.config.patterns,
          optimizationHints: matchedProvider.config.optimizationHints,
          isKnown: true,
          detectedAt: DateTime.now(),
        );

        _providerConfigs[config.providerId] = config;
        await _saveProviderConfigs();

        debugLog(
            'Detected provider: ${matchedProvider.config.name} (confidence: ${matchedProvider.matchScore})');
        return config.providerId;
      }

      // If no known provider matched, create custom configuration
      final customConfig = _createCustomConfig(characteristics);
      if (customConfig != null) {
        _providerConfigs[customConfig.providerId] = customConfig;
        await _saveProviderConfigs();

        debugLog('Created custom config for unknown provider');
        return customConfig.providerId;
      }

      return null;
    } catch (e) {
      debugLog('Failed to detect provider configuration: $e');
      return null;
    }
  }

  /// Get optimized matching strategy for a provider
  ProviderMatchingStrategy? getMatchingStrategy(String providerId) {
    final config = _providerConfigs[providerId];
    if (config == null) return null;

    // Get learning-based optimization
    final learningStrategy =
        _smartLearningEngine.getProviderStrategy(providerId);

    // Combine configurations
    return ProviderMatchingStrategy(
      providerId: providerId,
      confidenceThreshold: learningStrategy?.confidenceThreshold ??
          (config.optimizationHints['confidenceThreshold'] as double?) ??
          0.7,
      enableFuzzyMatching: learningStrategy?.enableFuzzyMatching ??
          (config.optimizationHints['enableFuzzyMatching'] as bool?) ??
          true,
      enableLogoMatching: learningStrategy?.enableLogoMatching ??
          (config.optimizationHints['enableLogoMatching'] as bool?) ??
          false,
      maxRetries: config.optimizationHints['maxRetries'] as int? ?? 3,
      patterns: config.patterns,
      preferredMatchingOrder: learningStrategy?.preferredMatchingOrder ?? [],
      customHints: config.optimizationHints,
    );
  }

  /// Apply provider-specific optimization to channel matching
  Future<List<OptimizedMatchResult>> findOptimizedMatches({
    required String providerId,
    required String channelId,
    required String channelName,
    String? groupTitle,
    List<MapEntry<String, double>> baseSuggestions = const [],
  }) async {
    final strategy = getMatchingStrategy(providerId);
    if (strategy == null) {
      debugLog('No optimization strategy found for provider: $providerId');
      return [];
    }

    final results = <OptimizedMatchResult>[];

    try {
      // 1. Apply provider-specific pattern matching
      final patternMatches =
          _applyPatternMatching(strategy, channelId, channelName);
      results.addAll(patternMatches);

      // 2. Apply learning-based improvements
      final learningMatches = _smartLearningEngine.getImprovedSuggestions(
        channelId: channelId,
        channelName: channelName,
        providerId: providerId,
        groupTitle: groupTitle,
        baseSuggestions: baseSuggestions,
        limit: 5,
      );

      for (final match in learningMatches) {
        results.add(OptimizedMatchResult(
          epgId: match.epgId,
          confidence: match.confidence,
          source: MatchSource.learning,
          reason: match.reason,
          originalConfidence: match.originalConfidence,
        ));
      }

      // 3. Apply logo-based matching if enabled
      if (strategy.enableLogoMatching) {
        final logoMatches = await _logoMatchingService.findLogoMatches(
          channelId: channelId,
          channelName: channelName,
          providerId: providerId,
          candidateEpgIds: results.map((r) => r.epgId).toList(),
          similarityThreshold: 0.7,
        );

        for (final match in logoMatches) {
          results.add(OptimizedMatchResult(
            epgId: match.epgId,
            confidence: match.similarity,
            source: MatchSource.logo,
            reason: 'Logo similarity match',
          ));
        }
      }

      // 4. Apply cross-playlist mapping if available
      final compatibleMappings =
          await _crossPlaylistService.findCompatibleMappings(
        channelId: channelId,
        channelName: channelName,
        providerId: providerId,
        groupTitle: groupTitle,
        minConfidence: strategy.confidenceThreshold * 0.8,
      );

      for (final mapping in compatibleMappings) {
        results.add(OptimizedMatchResult(
          epgId: mapping.mapping.epgId,
          confidence: mapping.confidence,
          source: MatchSource.crossPlaylist,
          reason: _getMatchReasonDescription(mapping.matchReason),
        ));
      }

      // 5. Apply confidence boosting based on provider characteristics
      final boostedResults = _applyConfidenceBoosting(results, strategy);

      // 6. Sort and filter results
      final filteredResults = boostedResults
          .where((r) => r.confidence >= strategy.confidenceThreshold)
          .toList()
        ..sort((a, b) => b.confidence.compareTo(a.confidence));

      debugLog(
          'Found ${filteredResults.length} optimized matches for $channelName (provider: $providerId)');
      return filteredResults;
    } catch (e) {
      debugLog('Error in optimized matching for $channelName: $e');
      return results;
    }
  }

  /// Configure custom optimization for a provider
  Future<void> configureCustomOptimization({
    required String providerId,
    required String providerName,
    List<ProviderPattern>? patterns,
    Map<String, dynamic>? optimizationHints,
    double confidence = 1.0,
  }) async {
    final config = ProviderOptimizationConfig(
      providerId: providerId,
      providerName: providerName,
      confidence: confidence,
      patterns: patterns ?? [],
      optimizationHints: optimizationHints ?? {},
      isKnown: false,
      detectedAt: DateTime.now(),
      customConfiguration: true,
    );

    _providerConfigs[providerId] = config;
    await _saveProviderConfigs();

    debugLog('Configured custom optimization for provider: $providerName');
    notifyListeners();
  }

  /// Get provider statistics
  Map<String, dynamic> getProviderStatistics() {
    return {
      'totalProviders': _providerConfigs.length,
      'knownProviders': _providerConfigs.values.where((c) => c.isKnown).length,
      'customProviders':
          _providerConfigs.values.where((c) => c.customConfiguration).length,
      'averageConfidence': _providerConfigs.isNotEmpty
          ? _providerConfigs.values
                  .map((c) => c.confidence)
                  .reduce((a, b) => a + b) /
              _providerConfigs.length
          : 0.0,
      'supportedProviderTypes': _knownProviders.keys.toList(),
    };
  }

  /// Export provider configurations
  Map<String, dynamic> exportProviderConfigurations() {
    return {
      'version': '1.0',
      'timestamp': DateTime.now().toIso8601String(),
      'configs':
          _providerConfigs.map((key, value) => MapEntry(key, value.toJson())),
      'statistics': getProviderStatistics(),
    };
  }

  /// Import provider configurations
  Future<void> importProviderConfigurations(Map<String, dynamic> data) async {
    try {
      if (data['version'] != '1.0') {
        throw Exception('Unsupported configuration version');
      }

      final configsData = Map<String, dynamic>.from(data['configs'] ?? {});
      for (final entry in configsData.entries) {
        _providerConfigs[entry.key] =
            ProviderOptimizationConfig.fromJson(entry.value);
      }

      await _saveProviderConfigs();

      debugLog('Imported ${_providerConfigs.length} provider configurations');
      notifyListeners();
    } catch (e) {
      debugLog('Failed to import provider configurations: $e');
      rethrow;
    }
  }

  /// Clear all provider configurations
  Future<void> clearConfigurations() async {
    _providerConfigs.clear();
    await _saveProviderConfigs();
    debugLog('Cleared all provider configurations');
    notifyListeners();
  }

  // Private methods

  PlaylistCharacteristics _analyzePlaylistCharacteristics(
      List<Channel> channels) {
    final characteristics = PlaylistCharacteristics();

    for (final channel in channels) {
      // Analyze channel IDs
      final channelId = channel.id;
      characteristics.channelIds.add(channelId);

      // Check for numeric IDs
      if (RegExp(r'^\d+$').hasMatch(channelId)) {
        characteristics.numericIdCount++;
      }

      // Check for patterns
      if (channelId.contains('_')) {
        characteristics.underscorePatternCount++;
      }

      if (channelId.startsWith('ch')) {
        characteristics.chPrefixCount++;
      }

      // Analyze tvg-ids
      final tvgId = channel.tvgId;
      if (tvgId != null) {
        characteristics.tvgIds.add(tvgId);

        if (RegExp(r'^\d+$').hasMatch(tvgId)) {
          characteristics.numericTvgIdCount++;
        }
      }

      // Analyze channel names
      final channelName = channel.name;
      characteristics.channelNames.add(channelName);

      // Check for common patterns
      if (channelName.toLowerCase().contains('hd')) {
        characteristics.hdChannelsCount++;
      }

      if (channelName.toLowerCase().contains('4k')) {
        characteristics.fourKChannelsCount++;
      }

      // Analyze groups
      final groupTitle = channel.groupTitle;
      if (groupTitle != null) {
        characteristics.groups.add(groupTitle);
      }
    }

    // Calculate ratios
    final totalChannels = channels.length;
    characteristics.numericIdRatio =
        characteristics.numericIdCount / totalChannels;
    characteristics.underscorePatternRatio =
        characteristics.underscorePatternCount / totalChannels;
    characteristics.chPrefixRatio =
        characteristics.chPrefixCount / totalChannels;
    characteristics.hdChannelRatio =
        characteristics.hdChannelsCount / totalChannels;
    characteristics.fourKChannelRatio =
        characteristics.fourKChannelsCount / totalChannels;

    return characteristics;
  }

  KnownProviderMatch? _matchKnownProvider(
      PlaylistCharacteristics characteristics) {
    KnownProviderMatch? bestMatch;
    double bestScore = 0.0;

    for (final provider in _knownProviders.entries) {
      final score =
          _calculateProviderMatchScore(provider.value, characteristics);

      if (score > bestScore && score > 0.5) {
        // Minimum threshold
        bestScore = score;
        bestMatch = KnownProviderMatch(
          config: provider.value,
          matchScore: score,
        );
      }
    }

    return bestMatch;
  }

  double _calculateProviderMatchScore(
      KnownProviderConfig config, PlaylistCharacteristics characteristics) {
    double score = 0.0;

    // Check numeric ID patterns
    if (config.name.contains('Xtream') &&
        characteristics.numericIdRatio > 0.8) {
      score += 0.4;
    }

    // Check for underscore patterns
    if (config.name.contains('Xtream') &&
        characteristics.underscorePatternRatio > 0.5) {
      score += 0.3;
    }

    // Check for ch prefix
    if (config.name.contains('Xtream') && characteristics.chPrefixRatio > 0.3) {
      score += 0.2;
    }

    // Check standard M3U patterns
    if (config.name.contains('M3U') && characteristics.numericIdRatio < 0.5) {
      score += 0.3;
    }

    // Check Stalker patterns
    if (config.name.contains('Stalker') &&
        characteristics.numericIdRatio > 0.9) {
      score += 0.4;
    }

    // Check OTT patterns
    if (config.name.contains('OTT') &&
        characteristics.underscorePatternRatio > 0.3) {
      score += 0.3;
    }

    return score.clamp(0.0, 1.0);
  }

  ProviderOptimizationConfig? _createCustomConfig(
      PlaylistCharacteristics characteristics) {
    // Analyze characteristics to create custom configuration
    final patterns = <ProviderPattern>[];
    final hints = <String, dynamic>{};

    // Determine if fuzzy matching should be enabled
    if (characteristics.numericIdRatio < 0.5) {
      hints['enableFuzzyMatching'] = true;
      hints['confidenceThreshold'] = 0.6;
    } else {
      hints['enableFuzzyMatching'] = false;
      hints['confidenceThreshold'] = 0.8;
    }

    // Enable logo matching for non-numeric providers
    if (characteristics.numericIdRatio < 0.7) {
      hints['enableLogoMatching'] = true;
    }

    // Add patterns based on characteristics
    if (characteristics.underscorePatternRatio > 0.3) {
      patterns.add(ProviderPattern(
        type: PatternType.channelId,
        pattern: r'^(\w+)_(\w+)$',
        weight: 0.8,
      ));
    }

    if (characteristics.chPrefixRatio > 0.2) {
      patterns.add(ProviderPattern(
        type: PatternType.channelName,
        pattern: r'^ch(\d+)$',
        weight: 0.7,
      ));
    }

    // Only create config if we have meaningful patterns or hints
    if (patterns.isNotEmpty || hints.isNotEmpty) {
      return ProviderOptimizationConfig(
        providerId: 'custom_${DateTime.now().millisecondsSinceEpoch}',
        providerName: 'Custom Provider',
        confidence: 0.5, // Lower confidence for custom configs
        patterns: patterns,
        optimizationHints: hints,
        isKnown: false,
        detectedAt: DateTime.now(),
        customConfiguration: true,
      );
    }

    return null;
  }

  List<OptimizedMatchResult> _applyPatternMatching(
    ProviderMatchingStrategy strategy,
    String channelId,
    String channelName,
  ) {
    final results = <OptimizedMatchResult>[];

    for (final pattern in strategy.patterns) {
      try {
        final regex = RegExp(pattern.pattern);

        // Try matching against channel ID
        final idMatch = regex.firstMatch(channelId);
        if (idMatch != null) {
          results.add(OptimizedMatchResult(
            epgId: channelId,
            confidence: pattern.weight,
            source: MatchSource.pattern,
            reason: 'Pattern match on channel ID (${pattern.type.toString()})',
          ));
        }

        // Try matching against channel name
        final nameMatch = regex.firstMatch(channelName);
        if (nameMatch != null) {
          results.add(OptimizedMatchResult(
            epgId: channelName,
            confidence: pattern.weight *
                0.8, // Slightly lower confidence for name matches
            source: MatchSource.pattern,
            reason:
                'Pattern match on channel name (${pattern.type.toString()})',
          ));
        }
      } catch (e) {
        debugLog('Error applying pattern ${pattern.pattern}: $e');
      }
    }

    return results;
  }

  List<OptimizedMatchResult> _applyConfidenceBoosting(
    List<OptimizedMatchResult> results,
    ProviderMatchingStrategy strategy,
  ) {
    // Apply provider-specific confidence adjustments
    return results.map((result) {
      double boostedConfidence = result.confidence;

      // Boost confidence based on source
      switch (result.source) {
        case MatchSource.pattern:
          boostedConfidence *= 1.1; // 10% boost for pattern matches
          break;
        case MatchSource.learning:
          boostedConfidence *= 1.05; // 5% boost for learning-based matches
          break;
        case MatchSource.logo:
          boostedConfidence *=
              1.0; // No boost for logo matches (already confident)
          break;
        case MatchSource.crossPlaylist:
          boostedConfidence *= 1.15; // 15% boost for cross-playlist matches
          break;
      }

      // Apply provider-specific adjustments
      if (strategy.providerId.contains('xtream')) {
        // Xtream providers benefit from higher confidence thresholds
        boostedConfidence *= 0.95;
      } else if (strategy.providerId.contains('m3u')) {
        // Standard M3U providers can use higher confidence
        boostedConfidence *= 1.05;
      }

      return result.copyWith(confidence: boostedConfidence.clamp(0.0, 1.0));
    }).toList();
  }

  String _getMatchReasonDescription(MatchReason reason) {
    switch (reason) {
      case MatchReason.exactChannelId:
        return 'Exact channel ID match';
      case MatchReason.exactChannelName:
        return 'Exact channel name match';
      case MatchReason.similarChannelName:
        return 'Similar channel name';
      case MatchReason.sameProvider:
        return 'Same provider mapping';
      case MatchReason.keywordMatch:
        return 'Keyword match';
    }
  }

  void _detectKnownProviders() {
    // This method can be expanded to automatically detect providers
    // based on known patterns or API endpoints
    debugLog('Detected ${_knownProviders.length} known provider types');
  }

  // Persistence methods
  Future<void> _loadProviderConfigs() async {
    // Implementation would load from SharedPreferences or database
    // For now, using in-memory storage
  }

  Future<void> _saveProviderConfigs() async {
    // Implementation would save to SharedPreferences or database
    // For now, using in-memory storage
  }
}

/// Data classes for provider optimization
class ProviderOptimizationConfig {
  final String providerId;
  final String providerName;
  final double confidence;
  final List<ProviderPattern> patterns;
  final Map<String, dynamic> optimizationHints;
  final bool isKnown;
  final DateTime detectedAt;
  final bool customConfiguration;

  ProviderOptimizationConfig({
    required this.providerId,
    required this.providerName,
    required this.confidence,
    required this.patterns,
    required this.optimizationHints,
    required this.isKnown,
    required this.detectedAt,
    this.customConfiguration = false,
  });

  Map<String, dynamic> toJson() => {
        'providerId': providerId,
        'providerName': providerName,
        'confidence': confidence,
        'patterns': patterns.map((p) => p.toJson()).toList(),
        'optimizationHints': optimizationHints,
        'isKnown': isKnown,
        'detectedAt': detectedAt.toIso8601String(),
        'customConfiguration': customConfiguration,
      };

  factory ProviderOptimizationConfig.fromJson(Map<String, dynamic> json) =>
      ProviderOptimizationConfig(
        providerId: json['providerId'],
        providerName: json['providerName'],
        confidence: json['confidence'],
        patterns: (json['patterns'] as List)
            .map((p) => ProviderPattern.fromJson(p))
            .toList(),
        optimizationHints:
            Map<String, dynamic>.from(json['optimizationHints'] ?? {}),
        isKnown: json['isKnown'],
        detectedAt: DateTime.parse(json['detectedAt']),
        customConfiguration: json['customConfiguration'] ?? false,
      );
}

class KnownProviderConfig {
  final String name;
  final List<ProviderPattern> patterns;
  final Map<String, dynamic> optimizationHints;

  KnownProviderConfig({
    required this.name,
    required this.patterns,
    required this.optimizationHints,
  });
}

class KnownProviderMatch {
  final KnownProviderConfig config;
  final double matchScore;

  KnownProviderMatch({
    required this.config,
    required this.matchScore,
  });
}

class ProviderPattern {
  final PatternType type;
  final String pattern;
  final double weight;

  ProviderPattern({
    required this.type,
    required this.pattern,
    required this.weight,
  });

  Map<String, dynamic> toJson() => {
        'type': type.toString().split('.').last,
        'pattern': pattern,
        'weight': weight,
      };

  factory ProviderPattern.fromJson(Map<String, dynamic> json) =>
      ProviderPattern(
        type: PatternType.values.firstWhere(
          (e) => e.toString().split('.').last == json['type'],
          orElse: () => PatternType.channelId,
        ),
        pattern: json['pattern'],
        weight: json['weight'],
      );
}

class ProviderMatchingStrategy {
  final String providerId;
  final double confidenceThreshold;
  final bool enableFuzzyMatching;
  final bool enableLogoMatching;
  final int maxRetries;
  final List<ProviderPattern> patterns;
  final List<String> preferredMatchingOrder;
  final Map<String, dynamic> customHints;

  ProviderMatchingStrategy({
    required this.providerId,
    required this.confidenceThreshold,
    required this.enableFuzzyMatching,
    required this.enableLogoMatching,
    required this.maxRetries,
    required this.patterns,
    required this.preferredMatchingOrder,
    required this.customHints,
  });
}

class OptimizedMatchResult {
  final String epgId;
  final double confidence;
  final MatchSource source;
  final String reason;
  final double? originalConfidence;

  OptimizedMatchResult({
    required this.epgId,
    required this.confidence,
    required this.source,
    required this.reason,
    this.originalConfidence,
  });

  OptimizedMatchResult copyWith({
    String? epgId,
    double? confidence,
    MatchSource? source,
    String? reason,
    double? originalConfidence,
  }) {
    return OptimizedMatchResult(
      epgId: epgId ?? this.epgId,
      confidence: confidence ?? this.confidence,
      source: source ?? this.source,
      reason: reason ?? this.reason,
      originalConfidence: originalConfidence ?? this.originalConfidence,
    );
  }
}

class PlaylistCharacteristics {
  final Set<String> channelIds = {};
  final Set<String> tvgIds = {};
  final Set<String> channelNames = {};
  final Set<String> groups = {};

  int numericIdCount = 0;
  int underscorePatternCount = 0;
  int chPrefixCount = 0;
  int hdChannelsCount = 0;
  int fourKChannelsCount = 0;
  int numericTvgIdCount = 0;

  double numericIdRatio = 0.0;
  double underscorePatternRatio = 0.0;
  double chPrefixRatio = 0.0;
  double hdChannelRatio = 0.0;
  double fourKChannelRatio = 0.0;
}

enum PatternType {
  channelId,
  tvgId,
  channelName,
  groupTitle,
}

enum MatchSource {
  pattern,
  learning,
  logo,
  crossPlaylist,
}
