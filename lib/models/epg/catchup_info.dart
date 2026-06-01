/// Xtream catch-up stream metadata from EPG.
class CatchupInfo {
  const CatchupInfo({
    required this.streamId,
    required this.durationHours,
  });

  final String streamId;
  final int durationHours;
}
