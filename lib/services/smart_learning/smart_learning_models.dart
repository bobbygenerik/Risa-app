part of '../smart_learning_engine.dart';

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
        channelPatterns: Map<String, List<String>>.from(
          json['channelPatterns']?.map(
                (k, v) => MapEntry(k, List<String>.from(v)),
              ) ??
              {},
        ),
        groupPatterns: Map<String, List<String>>.from(
          json['groupPatterns']?.map(
                (k, v) => MapEntry(k, List<String>.from(v)),
              ) ??
              {},
        ),
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