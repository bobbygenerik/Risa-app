import 'package:iptv_player/utils/debug_helper.dart';

/// Tracks per-channel lookup failures and one-shot diagnostic logs.
class EpgProgramFailureTracker {
  static const int failureThreshold = 3;

  final Map<String, int> _channelFailureCounts = {};
  final Set<String> _loggedMissingEpgIds = {};
  final Set<String> _loggedMissingProgramChannels = {};

  int failureCount(String channelId) => _channelFailureCounts[channelId] ?? 0;

  bool shouldHide(String channelId) =>
      failureCount(channelId) >= failureThreshold;

  void recordFailure(String channelId) {
    if (channelId.isEmpty) return;
    _channelFailureCounts[channelId] =
        (_channelFailureCounts[channelId] ?? 0) + 1;
  }

  void clearFailures(String channelId) {
    if (channelId.isEmpty) return;
    _channelFailureCounts.remove(channelId);
    _loggedMissingEpgIds.remove(channelId);
    _loggedMissingProgramChannels.remove(channelId);
  }

  void maybeLogMissingEpgId(
    String channelId,
    String? channelName, {
    required int availableChannelCount,
    required int normalizedChannelCount,
    required int programChannelCount,
  }) {
    if (!_loggedMissingEpgIds.add(channelId)) return;
    debugLog(
        'EPG: getCurrentProgram - No EPG ID found for "$channelId" (name: "${channelName ?? 'none'}", available: $availableChannelCount, normalized: $normalizedChannelCount, programs: $programChannelCount)');
  }

  void maybeLogMissingPrograms(
    String channelId, {
    String? epgId,
    String? channelName,
    required int programChannelCount,
  }) {
    if (!_loggedMissingProgramChannels.add(channelId)) return;
    if (epgId != null) {
      debugLog(
          'EPG: getCurrentProgram - No programs for epgId "$epgId" (channelId: "$channelId", total program channels: $programChannelCount)');
    } else {
      debugLog(
          'EPG: No programs found for channel "$channelId" (name: "${channelName ?? 'none'}")');
    }
  }

  void clear() {
    _channelFailureCounts.clear();
    _loggedMissingEpgIds.clear();
    _loggedMissingProgramChannels.clear();
  }
}
