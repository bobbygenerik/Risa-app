import 'package:iptv_player/models/channel.dart';

/// Preview channel list future for the Live TV hero area.
class LiveTvPreviewState {
  Future<List<Channel>>? future;
  int lastChannelCount = -1;
}
