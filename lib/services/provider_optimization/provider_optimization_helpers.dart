part of '../provider_optimization_service.dart';

extension ProviderOptimizationHelpers on ProviderOptimizationService {
static final RegExp _digitsOnlyRe = RegExp(r'^\d+$');

PlaylistCharacteristics _analyzePlaylistCharacteristics(
    List<Channel> channels) {
  final characteristics = PlaylistCharacteristics();

  for (final channel in channels) {
    // Analyze channel IDs
    final channelId = channel.id;
    characteristics.channelIds.add(channelId);

    // Check for numeric IDs
    if (_digitsOnlyRe.hasMatch(channelId)) {
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

      if (_digitsOnlyRe.hasMatch(tvgId)) {
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

// Cache for compiled regular expressions to avoid recompilation
static final Map<String, RegExp> _patternRegexCache = {};

List<OptimizedMatchResult> _applyPatternMatching(
  ProviderMatchingStrategy strategy,
  String channelId,
  String channelName,
) {
  final results = <OptimizedMatchResult>[];

  for (final pattern in strategy.patterns) {
    try {
      RegExp regex;
      if (_patternRegexCache.containsKey(pattern.pattern)) {
        regex = _patternRegexCache[pattern.pattern]!;
      } else {
        regex = RegExp(pattern.pattern);
        _patternRegexCache[pattern.pattern] = regex;
      }

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
