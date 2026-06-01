import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';

class LiveTvHeroCandidate {
  const LiveTvHeroCandidate({
    required this.channel,
    this.program,
    required this.heroImage,
  });

  final Channel channel;
  final Program? program;
  final String heroImage;
}

class LiveTvEpgCardData {
  LiveTvEpgCardData({
    required this.program,
    required this.hasUsableData,
    required this.isLoading,
  });

  final Program? program;
  final bool hasUsableData;
  final bool isLoading;
}
