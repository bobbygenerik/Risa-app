part of '../epg_mapping_screen.dart';

class ChannelMappingEntry {
  final Channel channel;
  final String? currentMapping;
  final bool hasEpgData;
  final double confidence;
  final List<MapEntry<String, double>> suggestedMatches;

  ChannelMappingEntry({
    required this.channel,
    required this.currentMapping,
    required this.hasEpgData,
    required this.confidence,
    required this.suggestedMatches,
  });
}

enum MatchFilter { all, matched, unmatched, lowConfidence }