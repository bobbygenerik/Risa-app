import 'package:iptv_player/models/epg/catchup_info.dart';
import 'package:iptv_player/services/epg/epg_normalize_cache.dart';

/// Builds Xtream catch-up stream URLs from EPG programme times.
class EpgCatchupUrlBuilder {
  EpgCatchupUrlBuilder._();

  static String? build({
    required String epgId,
    required int startTs,
    required int endTs,
    required int nowMs,
    required Map<String, CatchupInfo> catchupByNormalizedId,
    required String? server,
    required String? username,
    required String? password,
  }) {
    final normalized = EpgNormalizeCache.normalizeForFilter(epgId);
    final info = catchupByNormalizedId[normalized];
    if (info == null || info.durationHours <= 0) return null;
    if (endTs >= nowMs) return null;
    final earliest = nowMs - (info.durationHours * 3600000);
    if (endTs < earliest) return null;

    if (server == null ||
        server.isEmpty ||
        username == null ||
        username.isEmpty ||
        password == null ||
        password.isEmpty) {
      return null;
    }

    final durationMinutes = ((endTs - startTs) / 60000).ceil();
    if (durationMinutes <= 0) return null;

    final startUtc =
        DateTime.fromMillisecondsSinceEpoch(startTs, isUtc: false).toUtc();
    final startStr = _formatCatchupTime(startUtc);
    final base =
        server.endsWith('/') ? server.substring(0, server.length - 1) : server;
    return Uri.parse('$base/timeshift.php').replace(queryParameters: {
      'username': username,
      'password': password,
      'stream': info.streamId,
      'start': startStr,
      'duration': '$durationMinutes',
    }).toString();
  }

  static String _formatCatchupTime(DateTime dtUtc) {
    String pad(int v) => v.toString().padLeft(2, '0');
    final year = dtUtc.year.toString().padLeft(4, '0');
    final month = pad(dtUtc.month);
    final day = pad(dtUtc.day);
    final hour = pad(dtUtc.hour);
    final minute = pad(dtUtc.minute);
    final second = pad(dtUtc.second);
    return '$year-$month-$day:$hour-$minute-$second';
  }
}
