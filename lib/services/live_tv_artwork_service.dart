import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/artwork/artwork_title_cache_isolate.dart';
import 'package:iptv_player/services/fanart_service.dart';
import 'package:iptv_player/services/image_validation_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:iptv_player/services/thesportsdb_service.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/tvdb_service.dart';
import 'package:iptv_player/utils/artwork_diagnostics.dart';
import 'package:iptv_player/utils/artwork_query_expander.dart';
import 'package:iptv_player/utils/program_classifier.dart';
import 'package:iptv_player/utils/artwork_validator.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/epg_title_disambiguation.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/memory_manager.dart';
import 'package:iptv_player/utils/sports_classifier.dart';

part 'artwork/artwork_service_cache.dart';
part 'artwork/artwork_service_classify.dart';
part 'artwork/artwork_service_fetch.dart';
part 'artwork/artwork_service_hero.dart';
part 'artwork/artwork_service_lifecycle.dart';
part 'artwork/artwork_service_logos.dart';
part 'artwork/artwork_service_negative.dart';
part 'artwork/artwork_service_persistence.dart';
part 'artwork/artwork_service_public.dart';
part 'artwork/artwork_service_queue.dart';
part 'artwork/artwork_service_state.dart';
part 'artwork/artwork_service_titles.dart';
part 'artwork/artwork_service_validation.dart';

/// Callback signature for when artwork is updated.
typedef ArtworkUpdateCallback = void Function();

/// Service to manage artwork fetching, caching, and queuing for Live TV.
class LiveTvArtworkService {
  static const Set<String> _blockedProgramArtworkHosts = {
    'zap2it.tmsimg.com',
    'zpmc.tmsimg.com',
    'xplatinmedia.com',
    'ngiss.t-online.de',
  };

  LiveTvArtworkService({
    required this.onArtworkUpdate,
    bool? tmdbEnabled,
    bool? tvdbEnabled,
  })  : _tmdbEnabled = tmdbEnabled ?? ServiceValidator.isTmdbAvailable,
        _tvdbEnabled = tvdbEnabled ?? ServiceValidator.isTvdbAvailable;

  /// Callback to notify UI when artwork is updated.
  final ArtworkUpdateCallback onArtworkUpdate;

  // Service availability flags
  final bool _tmdbEnabled;
  final bool _tvdbEnabled;
  static const bool _fanartEnabled = true;
  static const bool _sportsDbEnabled = true;

  // Artwork caches
  final Map<String, String?> _programArtwork = {};
  final Map<String, String> _programArtworkByTitle = {};
  final Map<String, DateTime> _programArtworkByTitleTimestamps = {};
  final Map<String, DateTime> _programArtworkNegativeByTitle = {};
  final Map<String, String?> _programTitleLogos = {};

  // Artwork queues
  final Queue<Program> _artworkQueueHigh = Queue<Program>();
  final Queue<Program> _artworkQueueLow = Queue<Program>();
  final Set<String> _queuedArtworkIds = {};
  final Set<String> _artworkRequests = {};
  final Map<String, Future<String?>> _pendingArtworkRequests = {};
  final Map<String, Future<String?>> _pendingArtworkByTitle = {};

  // LRU tracking
  final Queue<String> _programArtworkOrder = Queue<String>();
  final Queue<String> _programArtworkTitleOrder = Queue<String>();
  final Queue<String> _programArtworkNegativeTitleOrder = Queue<String>();
  final Queue<String> _programTitleLogoOrder = Queue<String>();

  // Failure tracking
  final Map<String, DateTime> _artworkRetryAfter = {};
  final Map<String, int> _artworkFailureCounts = {};

  // Title lookup caches
  final Map<String, List<String>> _artworkQueryTitleCache = {};
  final Map<String, Channel> _programChannelLookup = {};
  final Set<String> _titleLogoRequests = {};

  // Timers
  Timer? _artworkThrottle;
  Timer? _artworkTitleSaveDebounce;
  Timer? _artworkNegativeSaveDebounce;
  Timer? _artworkUiDebounce;
  bool _artworkUiDirty = false;

  // State flags
  bool _pauseArtworkFetching = false;
  bool _suspendArtworkCaches = false;
  bool _isIdle = false;
  bool _isDisposed = false;

  // Diagnostic counters
  int diagEnqueued = 0;
  int diagFetched = 0;
  int diagHits = 0;
  int diagNoMatch = 0;
  int diagSkipTitleIneligible = 0;
  int diagSkipNegativeCache = 0;
  int diagSkipServicesDisabled = 0;
  int diagSkipAlreadyInFlight = 0;
  int diagSkipExistingArt = 0;
  int diagTmdbCalls = 0;
  int diagTvdbCalls = 0;

  /// Human-readable diagnostic summary for on-screen display.
  String get diagnosticSummary {
    final queued = _artworkQueueHigh.length + _artworkQueueLow.length;
    final services = <String>[];
    if (_tmdbEnabled) services.add('TMDB');
    if (_tvdbEnabled) services.add('TVDB');
    if (_fanartEnabled) services.add('Fanart');
    if (_sportsDbEnabled) services.add('Sports');
    final svc = services.isEmpty ? 'NONE' : services.join('+');
    return 'Art: $diagHits found / $diagFetched tried | '
        '$diagNoMatch miss | $queued queued\n'
        'Services: $svc | '
        'Skip: ${diagSkipNegativeCache}neg ${diagSkipTitleIneligible}inel ${diagSkipExistingArt}exist ${diagSkipAlreadyInFlight}fly ${diagSkipServicesDisabled}dis';
  }

  // Limits
  static const int _maxProgramArtworkEntries = 2000;
  static const int _maxProgramArtworkTitleEntries = 2000;
  static const int _maxProgramArtworkNegativeEntries = 200;
  static const int _maxProgramTitleLogoEntries = 100;
  static const Duration _programArtworkTitleTtl = Duration(days: 30);
  static const Duration _artworkNegativeTtl = Duration(minutes: 8);

  // Cache keys — bump version to invalidate stale poster/logo entries
  static const String _programArtworkTitleCacheKey =
      'live_tv_program_artwork_title_cache_v6';
  static const String _programArtworkNegativeCacheKey =
      'live_tv_program_artwork_negative_cache_v6';

  static const bool _logArtworkMatches = true;

  /// Reload title/negative caches from disk after returning from the player.
  void restoreAfterPlayback() {
    _pauseArtworkFetching = false;
    _suspendArtworkCaches = false;
    unawaited(Future.wait([
      _loadProgramArtworkTitleCache(),
      _loadProgramArtworkNegativeCache(),
    ]).then((_) {
      if (_isDisposed) return;
      _scheduleArtworkDrain();
      onArtworkUpdate();
      debugLog('LiveTV artwork: restored caches after playback');
    }));
  }
}
