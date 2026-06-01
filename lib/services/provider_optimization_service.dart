import 'package:flutter/foundation.dart';
import '../models/channel.dart';
import '../services/incremental_epg_service.dart';
import '../services/smart_learning_engine.dart';
import '../services/logo_matching_service.dart';
import '../services/cross_playlist_mapping_service.dart';
import '../utils/debug_helper.dart';

/// Service for provider-specific EPG matching optimization
/// Applies different strategies based on IPTV provider characteristics
part 'provider_optimization/provider_optimization_helpers.dart';
part 'provider_optimization/provider_optimization_models.dart';

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
          ? _calculateAverageConfidence()
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

  double _calculateAverageConfidence() {
    double sum = 0.0;
    for (final config in _providerConfigs.values) {
      sum += config.confidence;
    }
    return sum / _providerConfigs.length;
  }

  // Private methods

}

