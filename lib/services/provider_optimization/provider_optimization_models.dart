part of '../provider_optimization_service.dart';

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
        'type': type
            .name, // Bolt: Optimized enum serialization by avoiding .split('.').last
        'pattern': pattern,
        'weight': weight,
      };

  factory ProviderPattern.fromJson(Map<String, dynamic> json) =>
      ProviderPattern(
        type: PatternType.values.firstWhere(
          (e) =>
              e.name ==
              json[
                  'type'], // Bolt: Optimized enum deserialization by avoiding .split('.').last
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
