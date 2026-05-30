import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/epg/epg_channel_matcher.dart';
import 'package:iptv_player/services/epg/epg_program_failure_tracker.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// Resolves playlist channels to EPG programs and current/next airings.
class EpgProgramQuery {
  EpgProgramQuery({
    required EpgProgramQueryDeps deps,
    EpgProgramFailureTracker? failureTracker,
  })  : _deps = deps,
        _failures = failureTracker ?? EpgProgramFailureTracker();

  final EpgProgramQueryDeps _deps;
  final EpgProgramFailureTracker _failures;

  final Map<String, int> _lastProgramIndexByChannel = {};
  final Set<String> _loggedTimeMismatch = {};

  EpgProgramFailureTracker get failureTracker => _failures;

  void invalidateIndexCache() => _lastProgramIndexByChannel.clear();

  List<Program> getProgramsForChannel(String channelId,
      {String? channelName, String? groupTitle}) {
    var epgId = _deps.internalToEpgIdMapping[channelId] ??
        _deps.channelMatcher.findBestEpgId(channelId, channelName,
            allowLoose: false);
    if (epgId == null && channelName != null && channelName.trim().isNotEmpty) {
      epgId = _deps.channelMatcher.findBestEpgId(channelId, channelName,
          allowLoose: true);
    }
    if (epgId != null) {
      return _deps.programsByChannel[epgId] ?? [];
    }

    if (_deps.programsByChannel.containsKey(channelId)) {
      _deps.cacheResolvedMapping(channelId, channelId);
      return _deps.programsByChannel[channelId] ?? [];
    }

    if (!_deps.isParsing() &&
        !_deps.isLoading() &&
        _deps.allowedChannelIdsNormalized().isNotEmpty) {
      _failures.maybeLogMissingPrograms(
        channelId,
        channelName: channelName,
        programChannelCount: _deps.programsByChannel.length,
      );
    }
    return [];
  }

  void applyProgramSnapshot(
    Map<String, List<Program>> snapshot, {
    bool overrideExisting = false,
  }) {
    if (snapshot.isEmpty) return;
    var changed = false;
    for (final entry in snapshot.entries) {
      final epgId = entry.key;
      if (epgId.isEmpty) continue;
      final programs = entry.value;
      if (programs.isEmpty) continue;
      if (!overrideExisting && _deps.programsByChannel.containsKey(epgId)) {
        continue;
      }
      _deps.programsByChannel[epgId] = programs;
      _deps.registerAvailableChannel(epgId);
      final normalized = _deps.normalize(epgId);
      if (normalized.isNotEmpty) {
        _deps.addNormalizedChannel(normalized, epgId);
      }
      changed = true;
    }
    if (changed && !_deps.isParsing() && !_deps.isLoading()) {
      _deps.notifyListeners();
    }
  }

  bool hasProgramsForChannel(String channelId,
      {String? channelName, String? groupTitle}) {
    var epgId = _deps.internalToEpgIdMapping[channelId];
    if (epgId == null && channelName != null && channelName.trim().isNotEmpty) {
      epgId = _deps.channelMatcher.findBestEpgId(channelId, channelName,
          allowLoose: true);
    }
    if (epgId == null && channelId.isNotEmpty) {
      epgId = _deps.channelMatcher.findBestEpgId(channelId, channelName,
          allowLoose: false);
    }
    if (epgId != null) {
      final programs = _deps.programsByChannel[epgId];
      if (programs != null && programs.isNotEmpty) {
        _failures.clearFailures(channelId);
        return true;
      }
      _failures.maybeLogMissingPrograms(
        channelId,
        epgId: epgId,
        programChannelCount: _deps.programsByChannel.length,
      );
      return false;
    }

    final directPrograms = _deps.programsByChannel[channelId];
    if (directPrograms != null && directPrograms.isNotEmpty) {
      _deps.cacheResolvedMapping(channelId, channelId);
      _failures.clearFailures(channelId);
      return true;
    }

    _failures.maybeLogMissingEpgId(
      channelId,
      channelName,
      availableChannelCount: _deps.availableChannelCount(),
      normalizedChannelCount: _deps.normalizedChannelCount(),
      programChannelCount: _deps.programsByChannel.length,
    );
    return false;
  }

  Program? getCurrentProgram(String channelId,
      {String? channelName, String? groupTitle}) {
    var epgId = _deps.internalToEpgIdMapping[channelId];
    epgId ??= _deps.channelMatcher.findBestEpgId(
      channelId,
      channelName,
      allowLoose: true,
    );

    if (epgId == null) {
      _failures.maybeLogMissingEpgId(
        channelId,
        channelName,
        availableChannelCount: _deps.availableChannelCount(),
        normalizedChannelCount: _deps.normalizedChannelCount(),
        programChannelCount: _deps.programsByChannel.length,
      );
      _failures.recordFailure(channelId);
      return null;
    }

    _deps.cacheResolvedMapping(channelId, epgId);

    var programs = _deps.programsByChannel[epgId];
    if (programs == null || programs.isEmpty) {
      programs = _deps.programsByChannel[channelId];
    }
    if (programs == null || programs.isEmpty) {
      _failures.maybeLogMissingPrograms(
        channelId,
        epgId: epgId,
        programChannelCount: _deps.programsByChannel.length,
      );
      _failures.recordFailure(channelId);
      return null;
    }

    _failures.clearFailures(channelId);
    return findCurrentOrNextProgram(epgId, programs, DateTime.now());
  }

  Program? getProgramForChannel(String channelId,
      {String? channelName, String? groupTitle}) {
    final epgId = _deps.internalToEpgIdMapping[channelId] ??
        _deps.channelMatcher.findBestEpgId(channelId, channelName);
    if (epgId != null) {
      _deps.cacheResolvedMapping(channelId, epgId);
      var programs = getProgramsForChannel(epgId, channelName: channelName);

      if (programs.isEmpty) {
        _deps.loadProgramsFromDb(epgId);
        programs = getProgramsForChannel(epgId, channelName: channelName);
      }

      return findCurrentOrNextProgram(epgId, programs, DateTime.now());
    }

    return getCurrentProgram(channelId, channelName: channelName);
  }

  Future<Program?> getProgramForChannelAsync(String channelId,
      {String? channelName}) async {
    final epgId = _deps.internalToEpgIdMapping[channelId] ??
        _deps.channelMatcher.findBestEpgId(channelId, channelName);
    if (epgId != null) {
      _deps.cacheResolvedMapping(channelId, epgId);
      var programs = getProgramsForChannel(epgId, channelName: channelName);
      if (programs.isEmpty) {
        await _deps.loadProgramsFromDb(epgId);
        programs = getProgramsForChannel(epgId, channelName: channelName);
      }
      return findCurrentOrNextProgram(epgId, programs, DateTime.now());
    }
    await _deps.loadMappingsFromDb();
    return null;
  }

  Program? findCurrentOrNextProgram(
      String epgId, List<Program> programs, DateTime now) {
    if (programs.isEmpty) return null;
    final cachedIndex = _lastProgramIndexByChannel[epgId];
    if (cachedIndex != null &&
        cachedIndex >= 0 &&
        cachedIndex < programs.length) {
      final cachedProgram = programs[cachedIndex];
      if (now.isAfter(cachedProgram.startTime) &&
          now.isBefore(cachedProgram.endTime)) {
        return cachedProgram;
      }
    }

    Program? nextProgram;
    int nextIndex = -1;
    for (int i = 0; i < programs.length; i++) {
      final program = programs[i];
      if (now.isAfter(program.startTime) && now.isBefore(program.endTime)) {
        _lastProgramIndexByChannel[epgId] = i;
        return program;
      }
      if (nextProgram == null && program.startTime.isAfter(now)) {
        nextProgram = program;
        nextIndex = i;
      }
    }

    if (nextProgram != null) {
      _lastProgramIndexByChannel[epgId] = nextIndex;
    }

    if (nextProgram == null && !_loggedTimeMismatch.contains(epgId)) {
      _loggedTimeMismatch.add(epgId);
      if (_loggedTimeMismatch.length <= 10) {
        final first = programs.first;
        final last = programs.last;
        debugLog(
          'EPG: TIME MISMATCH epgId="$epgId" '
          'now=${now.toIso8601String()} '
          'programs=${programs.length} '
          'first="${first.title}" ${first.startTime.toIso8601String()}..${first.endTime.toIso8601String()} '
          'last="${last.title}" ${last.startTime.toIso8601String()}..${last.endTime.toIso8601String()}',
        );
      }
    }

    if (nextProgram != null) return nextProgram;

    Program? mostRecent;
    for (final program in programs) {
      if (program.endTime.isBefore(now)) {
        if (mostRecent == null || program.endTime.isAfter(mostRecent.endTime)) {
          mostRecent = program;
        }
      }
    }
    return mostRecent;
  }
}

class EpgProgramQueryDeps {
  const EpgProgramQueryDeps({
    required this.channelMatcher,
    required this.internalToEpgIdMapping,
    required this.programsByChannel,
    required this.allowedChannelIdsNormalized,
    required this.normalizedChannelCount,
    required this.isParsing,
    required this.isLoading,
    required this.availableChannelCount,
    required this.cacheResolvedMapping,
    required this.normalize,
    required this.registerAvailableChannel,
    required this.addNormalizedChannel,
    required this.notifyListeners,
    required this.loadProgramsFromDb,
    required this.loadMappingsFromDb,
  });

  final EpgChannelMatcher channelMatcher;
  final Map<String, String?> internalToEpgIdMapping;
  final Map<String, List<Program>> programsByChannel;
  final Set<String> Function() allowedChannelIdsNormalized;
  final int Function() normalizedChannelCount;
  final bool Function() isParsing;
  final bool Function() isLoading;
  final int Function() availableChannelCount;
  final String? Function(String channelId, String? epgId) cacheResolvedMapping;
  final String Function(String text) normalize;
  final void Function(String epgId) registerAvailableChannel;
  final void Function(String normalized, String epgId) addNormalizedChannel;
  final void Function() notifyListeners;
  final Future<void> Function(String epgId) loadProgramsFromDb;
  final Future<void> Function() loadMappingsFromDb;
}
