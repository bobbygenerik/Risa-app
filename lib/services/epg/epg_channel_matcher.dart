import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';

typedef EpgMappingResolvedCallback = void Function(
  String channelId,
  String? epgId,
);

typedef NormalizedChannelsGetter = Map<String, List<String>>? Function();

/// Resolves playlist channel IDs to EPG channel IDs via exact and fuzzy matching.
class EpgChannelMatcher {
  EpgChannelMatcher({
    required Set<String> availableChannels,
    required Map<String, String> manualMappings,
    required NormalizedChannelsGetter normalizedChannelsGetter,
    required bool enableDiagnostics,
    required EpgMappingResolvedCallback onMappingResolved,
  })  : _availableChannels = availableChannels,
        _manualMappings = manualMappings,
        _normalizedChannelsGetter = normalizedChannelsGetter,
        _enableDiagnostics = enableDiagnostics,
        _onMappingResolved = onMappingResolved;

  final Set<String> _availableChannels;
  final Map<String, String> _manualMappings;
  final NormalizedChannelsGetter _normalizedChannelsGetter;
  final bool _enableDiagnostics;
  final EpgMappingResolvedCallback _onMappingResolved;

  final Set<String> epgIdsRaw = {};
  final Map<String, String> epgIdsLowerToRaw = {};
  Map<String, List<String>> epgDisplayNamesById = {};
  List<EpgMatchCandidate> matchCandidates = [];

  Map<String, List<String>>? get _normalizedAvailableChannels =>
      _normalizedChannelsGetter();

  void setDisplayNames(Map<String, List<String>> names) {
    epgDisplayNamesById = names;
  }

  void resetIndex() {
    epgIdsRaw.clear();
    epgIdsLowerToRaw.clear();
    epgDisplayNamesById.clear();
    matchCandidates = [];
  }

  void indexEpgIdRaw(String id) {
    final trimmed = id.trim();
    if (trimmed.isEmpty) return;
    epgIdsRaw.add(trimmed);
    epgIdsLowerToRaw.putIfAbsent(trimmed.toLowerCase(), () => trimmed);
  }

  void rebuildEpgIdIndexFromIds(Iterable<String> ids) {
    resetIndex();
    for (final id in ids) {
      indexEpgIdRaw(id);
    }
  }

  void rebuildFuzzyCandidates() {
    final candidates = <EpgMatchCandidate>[];

    if (epgDisplayNamesById.isNotEmpty) {
      for (final entry in epgDisplayNamesById.entries) {
        final epgId = entry.key;
        if (epgId.isEmpty) continue;

        candidates.add(EpgMatchCandidate(
          id: epgId,
          displayName: epgId,
        ));

        for (final name in entry.value) {
          if (name.trim().isNotEmpty) {
            candidates.add(EpgMatchCandidate(
              id: epgId,
              displayName: name,
            ));
          }
        }
      }
    } else if (_availableChannels.isNotEmpty) {
      for (final id in _availableChannels) {
        if (id.isEmpty) continue;
        candidates.add(EpgMatchCandidate(
          id: id,
          displayName: id,
        ));
      }
    } else {
      final normalized = _normalizedAvailableChannels;
      if (normalized != null) {
        for (final entry in normalized.entries) {
          for (final id in entry.value) {
            candidates.add(EpgMatchCandidate(
              id: id,
              displayName: id,
            ));
          }
        }
      }
    }

    matchCandidates = candidates;
    debugLog(
        'EPG: Rebuilt fuzzy match index with ${matchCandidates.length} candidates.');
  }

  String? matchRawEpgId(String channelId) {
    final trimmed = channelId.trim();
    if (trimmed.isEmpty || epgIdsRaw.isEmpty) return null;
    if (epgIdsRaw.contains(trimmed)) return trimmed;
    return epgIdsLowerToRaw[trimmed.toLowerCase()];
  }

  bool hasEpgData(String channelId) {
    return epgIdsRaw.contains(channelId.trim());
  }

  String? findBestEpgId(
    String channelId,
    String? channelName, {
    bool allowLoose = true,
  }) {
    final manual = _manualMappings[channelId];
    if (manual != null && manual.isNotEmpty) {
      return manual;
    }

    final rawMatch = matchRawEpgId(channelId);
    if (rawMatch != null) {
      return _cacheResolvedMapping(channelId, rawMatch);
    }

    final normalized = _normalizedAvailableChannels;
    if (normalized != null) {
      final normId = EPGMatchingUtils.normalizeChannelName(channelId);
      if (normId.isNotEmpty && normalized.containsKey(normId)) {
        return _cacheResolvedMapping(channelId, normalized[normId]!.first);
      }
    }

    final searchName = channelName?.trim() ?? '';
    if (searchName.isNotEmpty) {
      final rawNameMatch = matchRawEpgId(searchName);
      if (rawNameMatch != null) {
        return _cacheResolvedMapping(channelId, rawNameMatch);
      }

      if (normalized != null) {
        final normSearchName =
            EPGMatchingUtils.normalizeChannelName(searchName);
        if (normSearchName.isNotEmpty &&
            normalized.containsKey(normSearchName)) {
          return _cacheResolvedMapping(
              channelId, normalized[normSearchName]!.first);
        }
      }
    }

    if (!allowLoose) return null;
    if (searchName.isEmpty) return null;
    if (matchCandidates.isEmpty) return null;

    final searchNameNorm = EPGMatchingUtils.normalizeChannelName(searchName);
    if (searchNameNorm.isEmpty) return null;

    final searchTokens = EPGMatchingUtils.tokenize(searchName);

    double bestScore = 0.0;
    EpgMatchCandidate? bestCandidate;

    for (final candidate in matchCandidates) {
      final score = EPGMatchingUtils.calculateMatchScore(
        searchName,
        candidate,
        playlistTokens: searchTokens,
        playlistNormalizedName: searchNameNorm,
      );

      if (score > bestScore) {
        bestScore = score;
        bestCandidate = candidate;
        if (bestScore >= 99.0) break;
      }
    }

    if (bestCandidate != null && bestScore >= 65.0) {
      if (_enableDiagnostics && bestScore < 85.0) {
        debugLog(
            'EPG: Fuzzy Match "$searchName" -> "${bestCandidate.displayName}" (Score: ${bestScore.toStringAsFixed(1)})');
      }
      return _cacheResolvedMapping(channelId, bestCandidate.id);
    }

    return null;
  }

  List<MapEntry<String, double>> getSuggestedMatches(
    String? channelName, {
    int limit = 10,
  }) {
    if (matchCandidates.isEmpty ||
        channelName == null ||
        channelName.isEmpty) {
      return [];
    }

    final searchTokens = EPGMatchingUtils.tokenize(channelName);
    final results = <MapEntry<String, double>>[];

    for (final candidate in matchCandidates) {
      final score = EPGMatchingUtils.calculateMatchScore(
        channelName,
        candidate,
        playlistTokens: searchTokens,
      );
      if (score > 30.0) {
        results.add(MapEntry(candidate.id, score));
      }
    }

    results.sort((a, b) => b.value.compareTo(a.value));
    return results.take(limit).toList();
  }

  int estimateMatchesFast(
    List<Map<String, dynamic>> channelMaps, {
    required int internalMappingCount,
  }) {
    if (_availableChannels.isEmpty && matchCandidates.isEmpty) {
      return internalMappingCount;
    }

    var matched = 0;
    final sample =
        channelMaps.length > 500 ? channelMaps.take(500) : channelMaps;

    for (final map in sample) {
      final tvgId = (map['tvgId'] as String?) ?? '';
      final id = (map['id'] as String?) ?? '';
      final name = (map['name'] as String?) ?? '';

      final primary = tvgId.trim().isNotEmpty ? tvgId : id;
      if (primary.isNotEmpty && matchRawEpgId(primary) != null) {
        matched++;
        continue;
      }

      if (name.isNotEmpty && matchCandidates.isNotEmpty) {
        final searchTokens = EPGMatchingUtils.tokenize(name);
        var found = false;
        for (final candidate in matchCandidates) {
          final score = EPGMatchingUtils.calculateMatchScore(name, candidate,
              playlistTokens: searchTokens);
          if (score >= 65.0) {
            found = true;
            break;
          }
        }
        if (found) {
          matched++;
        }
      }
    }

    if (channelMaps.length > 500) {
      return (matched * (channelMaps.length / 500)).round();
    }
    return matched;
  }

  String? _cacheResolvedMapping(String channelId, String? epgId) {
    _onMappingResolved(channelId, epgId);
    return epgId;
  }
}
