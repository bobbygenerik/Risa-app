import 'package:iptv_player/models/epg/catchup_info.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/epg/epg_channel_batch_loader.dart';
import 'package:iptv_player/services/epg/epg_manual_mappings_store.dart';
import 'package:iptv_player/services/epg/epg_public_api.dart';
import 'package:iptv_player/services/local_db_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Dependencies for [EpgManualMappingFacade].
class EpgManualMappingFacadeDeps {
  const EpgManualMappingFacadeDeps({
    required this.manualMappingsStore,
    required this.internalToEpgIdMapping,
    required this.programsByChannel,
    required this.availableChannels,
    required this.isDbDisabled,
    required this.db,
    required this.publicApi,
    required this.handleDbError,
    required this.notifyListeners,
    required this.ensureChannelLoaded,
    required this.catchupByNormalizedId,
    required this.xtreamServer,
    required this.xtreamUsername,
    required this.xtreamPassword,
    required this.channelBatchLoader,
    required this.stopParseProgressTimer,
    required this.restoreDbIfClosed,
    required this.getPrefs,
  });

  final EpgManualMappingsStore manualMappingsStore;
  final Map<String, String?> internalToEpgIdMapping;
  final Map<String, List<Program>> programsByChannel;
  final Set<String> availableChannels;
  final bool Function() isDbDisabled;
  final LocalDbService db;
  final EpgPublicApi publicApi;
  final void Function(Object error) handleDbError;
  final void Function() notifyListeners;
  final Future<void> Function(String channelId, {String? channelName})
      ensureChannelLoaded;
  final Map<String, CatchupInfo> Function() catchupByNormalizedId;
  final String? Function() xtreamServer;
  final String? Function() xtreamUsername;
  final String? Function() xtreamPassword;
  final EpgChannelBatchLoader channelBatchLoader;
  final void Function() stopParseProgressTimer;
  final Future<void> Function() restoreDbIfClosed;
  final Future<SharedPreferences> Function() getPrefs;
}
