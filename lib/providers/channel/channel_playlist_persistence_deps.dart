import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/services/local_db_service.dart';

/// Callbacks bridging [ChannelPlaylistPersistence] and [ChannelProvider].
class ChannelPlaylistPersistenceDeps {
  const ChannelPlaylistPersistenceDeps({
    required this.channelMaps,
    required this.getDbReady,
    required this.ensureDb,
    required this.getDb,
    required this.getEpgService,
    required this.handleDbError,
  });

  final List<Map<String, dynamic>> channelMaps;
  final bool Function() getDbReady;
  final Future<void> Function() ensureDb;
  final LocalDbService Function() getDb;
  final IncrementalEpgService? Function() getEpgService;
  final void Function(Object error) handleDbError;
}
