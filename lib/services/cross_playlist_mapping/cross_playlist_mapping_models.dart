part of '../cross_playlist_mapping_service.dart';

/// Data classes for cross-playlist mapping
class CrossPlaylistMapping {
  final String playlistId;
  final String channelId;
  final String epgId;
  final String sourceMappingId;
  final DateTime appliedAt;
  final double confidence;

  CrossPlaylistMapping({
    required this.playlistId,
    required this.channelId,
    required this.epgId,
    required this.sourceMappingId,
    required this.appliedAt,
    required this.confidence,
  });

  Map<String, dynamic> toJson() => {
        'playlistId': playlistId,
        'channelId': channelId,
        'epgId': epgId,
        'sourceMappingId': sourceMappingId,
        'appliedAt': appliedAt.toIso8601String(),
        'confidence': confidence,
      };

  factory CrossPlaylistMapping.fromJson(Map<String, dynamic> json) =>
      CrossPlaylistMapping(
        playlistId: json['playlistId'],
        channelId: json['channelId'],
        epgId: json['epgId'],
        sourceMappingId: json['sourceMappingId'],
        appliedAt: DateTime.parse(json['appliedAt']),
        confidence: json['confidence'],
      );
}

class SharedMapping {
  final String id;
  final String sourceChannelId;
  final String sourceChannelName;
  final String sourcePlaylistId;
  final String epgId;
  final String? providerId;
  final DateTime createdAt;
  final DateTime lastUsed;
  int usageCount;
  final bool isPublic;
  final String? description;
  final double confidence;
  final List<String> tags;

  SharedMapping({
    required this.id,
    required this.sourceChannelId,
    required this.sourceChannelName,
    required this.sourcePlaylistId,
    required this.epgId,
    this.providerId,
    required this.createdAt,
    required this.lastUsed,
    required this.usageCount,
    required this.isPublic,
    this.description,
    required this.confidence,
    required this.tags,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'sourceChannelId': sourceChannelId,
        'sourceChannelName': sourceChannelName,
        'sourcePlaylistId': sourcePlaylistId,
        'epgId': epgId,
        'providerId': providerId,
        'createdAt': createdAt.toIso8601String(),
        'lastUsed': lastUsed.toIso8601String(),
        'usageCount': usageCount,
        'isPublic': isPublic,
        'description': description,
        'confidence': confidence,
        'tags': tags,
      };

  factory SharedMapping.fromJson(Map<String, dynamic> json) => SharedMapping(
        id: json['id'],
        sourceChannelId: json['sourceChannelId'],
        sourceChannelName: json['sourceChannelName'],
        sourcePlaylistId: json['sourcePlaylistId'],
        epgId: json['epgId'],
        providerId: json['providerId'],
        createdAt: DateTime.parse(json['createdAt']),
        lastUsed: DateTime.parse(json['lastUsed']),
        usageCount: json['usageCount'],
        isPublic: json['isPublic'],
        description: json['description'],
        confidence: json['confidence'],
        tags: List<String>.from(json['tags'] ?? []),
      );
}

class MappingHistoryEntry {
  final MappingAction action;
  final DateTime timestamp;
  final String sourceChannelId;
  final String sourcePlaylistId;
  final String epgId;
  final String details;

  MappingHistoryEntry({
    required this.action,
    required this.timestamp,
    required this.sourceChannelId,
    required this.sourcePlaylistId,
    required this.epgId,
    required this.details,
  });

  Map<String, dynamic> toJson() => {
        // Optimize: Use .name instead of .toString().split('.').last to prevent unnecessary string allocations
        'action': action.name,
        'timestamp': timestamp.toIso8601String(),
        'sourceChannelId': sourceChannelId,
        'sourcePlaylistId': sourcePlaylistId,
        'epgId': epgId,
        'details': details,
      };

  factory MappingHistoryEntry.fromJson(Map<String, dynamic> json) =>
      MappingHistoryEntry(
        action: MappingAction.values.firstWhere(
          // Optimize: Use .name to avoid expensive string splitting operations in loops/parsers
          (e) => e.name == json['action'],
          orElse: () => MappingAction.shared,
        ),
        timestamp: DateTime.parse(json['timestamp']),
        sourceChannelId: json['sourceChannelId'],
        sourcePlaylistId: json['sourcePlaylistId'],
        epgId: json['epgId'],
        details: json['details'],
      );
}

class CompatibleMapping {
  final SharedMapping mapping;
  final MatchReason matchReason;
  final double confidence;

  CompatibleMapping({
    required this.mapping,
    required this.matchReason,
    required this.confidence,
  });
}

class ImportedMappingResult {
  final String channelId;
  final String epgId;
  final bool success;
  final String? reason;
  final double? confidence;

  ImportedMappingResult({
    required this.channelId,
    required this.epgId,
    required this.success,
    this.reason,
    this.confidence,
  });
}

enum MappingAction { shared, applied, imported, exported, deleted }

enum MatchReason {
  exactChannelId,
  exactChannelName,
  similarChannelName,
  sameProvider,
  keywordMatch,
}
