import 'package:iptv_player/services/epg/epg_normalize_cache.dart';

const int kEpgProgrammePastCutoffHours = 48;
const int kEpgProgrammePastCutoffMs = kEpgProgrammePastCutoffHours * 3600000;

const String kEpgRejectNotAllowed = 'notAllowed';
const String kEpgRejectTooFarFuture = 'tooFarFuture';
const String kEpgRejectTooOld = 'tooOld';
const String kEpgRejectBeforeCatchup = 'beforeCatchup';

bool shouldIncludeProgramme(
  String channelId,
  int startMs,
  int endMs,
  Set<String> allowedNormalized,
  Map<String, int> catchupHoursByChannel,
  int nowMs,
  int futureEndMs,
  String? normalizedChannelId, {
  Map<String, int>? rejectStats,
}) {
  final normalized =
      normalizedChannelId ?? EpgNormalizeCache.normalizeForFilter(channelId);
  final allowedKey = EpgNormalizeCache.normalizeForAllowedId(channelId);
  if (allowedNormalized.isNotEmpty &&
      (allowedKey.isEmpty || !allowedNormalized.contains(allowedKey))) {
    if (rejectStats != null) {
      rejectStats[kEpgRejectNotAllowed] =
          (rejectStats[kEpgRejectNotAllowed] ?? 0) + 1;
    }
    return false;
  }

  if (startMs > futureEndMs) {
    if (rejectStats != null) {
      rejectStats[kEpgRejectTooFarFuture] =
          (rejectStats[kEpgRejectTooFarFuture] ?? 0) + 1;
    }
    return false;
  }

  final pastCutoff = nowMs - kEpgProgrammePastCutoffMs;
  if (endMs < pastCutoff) {
    final catchupHours = catchupHoursByChannel[normalized] ?? 0;
    if (catchupHours <= 0) {
      if (rejectStats != null) {
        rejectStats[kEpgRejectTooOld] =
            (rejectStats[kEpgRejectTooOld] ?? 0) + 1;
      }
      return false;
    }
    final earliest = nowMs - (catchupHours * 3600000);
    if (endMs < earliest) {
      if (rejectStats != null) {
        rejectStats[kEpgRejectBeforeCatchup] =
            (rejectStats[kEpgRejectBeforeCatchup] ?? 0) + 1;
      }
      return false;
    }
  }

  return true;
}
