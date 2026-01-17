import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/l10n/gen/app_localizations.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:iptv_player/widgets/cached_image.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/widgets/horizontal_channel_row.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/go_to_settings_button.dart';
import 'package:iptv_player/services/fanart_service.dart';
import 'package:iptv_player/services/sportradar_service.dart';
import 'package:iptv_player/services/thesportsdb_service.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/tvdb_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/sports_classifier.dart';
import 'package:iptv_player/utils/epg_matching_utils.dart';

import 'package:iptv_player/widgets/brand_badge.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/utils/app_icons.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/services/timer_service.dart';
import 'package:iptv_player/widgets/skeleton_loader.dart';
import 'package:iptv_player/widgets/shimmer.dart';
import 'package:iptv_player/widgets/hero_panel.dart';
import 'package:iptv_player/services/focus_pool_service.dart';
import 'package:iptv_player/utils/memory_manager.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/logo_image_cache.dart';
import 'package:iptv_player/utils/network_error_logger.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/utils/no_text_selection_controls.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
import 'package:iptv_player/utils/artwork_diagnostics.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _HeroCandidate {
  final Channel channel;
  final Program? program;
  final String heroImage;

  const _HeroCandidate({
    required this.channel,
    this.program,
    required this.heroImage,
  });
}

/// A focused Live TV screen. Shows a hero for the currently airing program
/// on a featured channel, plus channel rows below.
class LiveTVScreen extends StatefulWidget {
  const LiveTVScreen({super.key});

  @override
  State<LiveTVScreen> createState() => _LiveTVScreenState();
}

class _LiveTVScreenState extends State<LiveTVScreen>
    with
        AutomaticKeepAliveClientMixin<LiveTVScreen>,
        ContentFocusRegistrant<LiveTVScreen>,
        WidgetsBindingObserver {
  int _featuredIndex = 0;
  final TimerService _timerService = TimerService();
  final FocusPoolService _focusPool = FocusPoolService();
  late final ScrollController _scrollController;
  String? _lastRoutePath;

  late final FocusNode _watchButtonFocus;
  late final FocusNode _settingsButtonFocus;
  late final FocusNode _firstChannelFocus;
  late final FocusNode _firstFeaturedFocus;
  late final FocusNode _skeletonFocus;
  final Map<String, FocusNode> _cardFocusNodes = {};
  final Queue<String> _cardFocusOrder = Queue<String>();
  static const int _maxCardFocusNodes = 320;
  String? _lastFocusedCardKey;
  final Map<String, String?> _programArtwork = {};
  final Map<String, String> _programArtworkByTitle = {};
  final Map<String, DateTime> _programArtworkNegativeByTitle = {};
  final Set<String> _artworkRequests = {};
  final Map<String, Future<String?>> _pendingArtworkRequests =
      {}; // Deduplication
  final Queue<Program> _artworkQueueHigh = Queue<Program>();
  final Queue<Program> _artworkQueueLow = Queue<Program>();
  final Set<String> _queuedArtworkIds = {};
  final Map<String, Future<String?>> _pendingArtworkByTitle = {};
  final Queue<String> _programArtworkOrder = Queue<String>();
  final Queue<String> _programArtworkTitleOrder = Queue<String>();
  final Queue<String> _programArtworkNegativeTitleOrder = Queue<String>();
  final Queue<String> _programTitleLogoOrder = Queue<String>();
  final Queue<String> _categoryCacheOrder = Queue<String>();
  final Map<String, Size> _heroImageSizes = {};
  Timer? _artworkThrottle;
  late final bool _tmdbEnabled;
  late final bool _fanartEnabled;
  late final bool _sportsDbEnabled;
  late final bool _tvdbEnabled;
  bool _initialFocusRequested = false;
  final Map<String, int> _focusedIndexBySection = {};
  final Map<String, DateTime> _artworkRetryAfter = {};
  final Map<String, int> _artworkFailureCounts = {};
  final Map<String, String?> _programTitleLogos = {};
  final Set<String> _titleLogoRequests = {};
  final Map<String, List<String>> _artworkQueryTitleCache = {};
  final Map<String, Channel> _programChannelLookup = {};
  final Map<String, List<Channel>> _categoryChannelCache = {};
  final Set<String> _categoryChannelLoading = {};
  List<String> _categoryNames = [];
  final Set<String> _categoryNameSet = {};
  final Set<String> _epgPrefetchedRows = {};
  bool _loadingCategories = false;
  static const int _initialCategoryPrefetchCount = 8;
  static const int _rowInitialFetch = 12;
  static const int _rowFetchStep = 16;
  static const int _rowVisibleBuffer = 2;
  static const int _maxProgramArtworkEntries = 100; // Restored but conservative
  static const int _maxProgramArtworkTitleEntries = 100;
  static const int _maxProgramArtworkNegativeEntries = 100;
  static const Duration _artworkNegativeTtl = Duration(hours: 6);
  static const String _programArtworkTitleCacheKey =
      'live_tv_program_artwork_title_cache_v2';
  static const String _programArtworkNegativeCacheKey =
      'live_tv_program_artwork_negative_cache_v2';
  static const String _liveTvSnapshotKey = 'live_tv_snapshot_v1';
  static const Duration _liveTvSnapshotTtl = Duration(hours: 6);
  static const int _liveTvSnapshotCategoryLimit = 6;
  static const int _liveTvSnapshotRowLimit = 12;
  Timer? _artworkTitleSaveDebounce;
  Timer? _artworkNegativeSaveDebounce;
  Timer? _snapshotSaveDebounce;
  static const int _maxProgramTitleLogoEntries = 50;
  static const int _maxCachedCategories = 6;
  int _visibleCategoryCount = 10; // Restored but conservative
  static const int _categoryChunkSize = 6;
  static const double _categoryPrefetchExtent =
      600; // Restored but conservative
  final Queue<String> _categoryLoadQueue = Queue<String>();
  int _activeCategoryLoads = 0;
  static const int _maxCategoryLoads = 2; // Restored
  int _lastPrefetchAnchor = -1;
  static const int _prefetchWindowRows = 3; // Restored but conservative
  static const int _heroPrefetchWindow = 5;
  static const int _rowPrefetchWindow = 2;
  final Map<String, ValueNotifier<int>> _categoryRowNotifiers = {};
  Future<List<Channel>>? _previewFuture;
  int _lastPreviewChannelCount = -1;
  final Map<String, ScrollController> _rowScrollControllers = {};
  final Set<String> _rowScrollInitialized = {};
  // _rowVisibleCountBySection removed
  final Map<String, int> _categoryOffsets = {};
  final Map<String, bool> _categoryHasMore = {};
  final Set<String> _categoryAppendQueue = {};
  final Map<String, bool> _heroImageCacheHits = {};
  final Map<String, double> _heroAspectRatios = {};
  final Set<String> _heroAspectRatioInFlight = {};
  bool _userHasScrolled = false;

  int _lastHeroCandidateCount = 0;

  bool _categoryPrefetchRequested = false;
  static const bool _logArtworkMatches = true;

  // Featured content rotation
  Timer? _featuredRotationTimer;
  static const Duration _featuredRotationInterval = Duration(minutes: 5);
  bool _heroIndexInitialized = false;
  String? _featuredChannelId;
  List<Channel> _stableFeaturedChannels = [];
  bool _featuredChannelsInitialized = false;
  bool _isOpeningPlayer = false;
  bool _pauseArtworkFetching = false;
  bool _suspendArtworkCaches = false;
  bool _suspendHeroBackground = false;
  bool _snapshotApplied = false;
  

  // Timer for EPG loading timeout fallback
  late final DateTime _initTime;
  bool _epgTimeoutLogged = false;
  Timer? _skeletonWatchdog;
  DateTime? _skeletonShownAt;
  DateTime? _lastRecoveryAttempt;
  bool _isSkeletonVisible = false;
  bool _recoveryInFlight = false;
  static const Duration _skeletonStuckThreshold = Duration(seconds: 35);
  static const Duration _skeletonWatchInterval = Duration(seconds: 3);
  bool _startupOverlayActive = false;
  Timer? _idleTimer;
  DateTime _lastInteractionAt = DateTime.now();
  bool _isIdle = false;
  static const Duration _idleThreshold = Duration(seconds: 30);
  static const Duration _idleCheckInterval = Duration(seconds: 6);
  Timer? _artworkRetryWindowTimer;
  bool _artworkRetryWindowActive = false;
  DateTime? _lastArtworkRetryWindow;


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initTime = DateTime.now(); // Track init time for EPG loading timeout
    _tmdbEnabled = ServiceValidator.isTmdbAvailable;
    _fanartEnabled = true;
    _sportsDbEnabled = true;
    _tvdbEnabled = ServiceValidator.isTvdbAvailable;
    // Initialize scroll controller
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScrollPrefetch);
    unawaited(_loadProgramArtworkTitleCache());
    unawaited(_loadProgramArtworkNegativeCache());
    unawaited(_loadLiveTvSnapshot());

    // Get focus nodes from pool
    _watchButtonFocus = _focusPool.getFocusNode(
      'live_tv_watch',
      debugLabel: 'Live TV Watch',
    );
    _settingsButtonFocus = _focusPool.getFocusNode('live_tv_settings',
        debugLabel: 'Live TV Settings');
    _firstChannelFocus = _focusPool.getFocusNode(
      'live_tv_first_card',
      debugLabel: 'Live TV First Card',
    );
    _firstFeaturedFocus = _focusPool.getFocusNode(
      'live_tv_featured_card',
      debugLabel: 'Live TV Featured Card',
    );
    _skeletonFocus = _focusPool.getFocusNode('live_tv_skeleton',
        debugLabel: 'Live TV Skeleton');
    FocusManager.instance.addListener(_handleFocusChange);
    _startIdleTimer();
    // Start carousel once the widget is built - will be updated when channels load
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (_scrollController.hasClients) {
          _scrollController.jumpTo(0);
        }
        _startCarouselIfNeeded();
        _requestInitialFocus();
        _requestCategoryPrefetch();
        _startFeaturedRotation();
      },
    );
  }

  Future<String?> _readPlaylistIdentity() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString('active_playlist_id') ??
          prefs.getString('m3u_url') ??
          prefs.getString('xtream_server');
    } catch (_) {
      return null;
    }
  }

  Future<void> _loadLiveTvSnapshot() async {
    if (_snapshotApplied) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_liveTvSnapshotKey);
      if (raw == null || raw.isEmpty) return;
      final decoded = jsonDecode(raw);
      if (decoded is! Map<String, dynamic>) return;
      final savedAt = decoded['savedAt'] as int?;
      if (savedAt == null) return;
      final age = DateTime.now()
          .difference(DateTime.fromMillisecondsSinceEpoch(savedAt));
      if (age > _liveTvSnapshotTtl) return;
      final playlistId = decoded['playlistId'] as String?;
      final currentPlaylistId = await _readPlaylistIdentity();
      if (!mounted) return;
      if (playlistId != null &&
          currentPlaylistId != null &&
          playlistId != currentPlaylistId) {
        return;
      }
      final categories = decoded['categories'];
      if (categories is! List) return;

      final names = <String>[];
      final cache = <String, List<Channel>>{};
      final programSnapshot = <String, List<Program>>{};
      for (final entry in categories) {
        if (entry is! Map<String, dynamic>) continue;
        final name = (entry['name'] as String?)?.trim();
        if (name == null || name.isEmpty) continue;
        final channels = <Channel>[];
        final channelList = entry['channels'];
        if (channelList is List) {
          for (final c in channelList) {
            if (c is! Map<String, dynamic>) continue;
            final id = (c['id'] as String?) ?? '';
            final cname = (c['name'] as String?) ?? '';
            final url = (c['url'] as String?) ?? '';
            if (id.isEmpty || cname.isEmpty || url.isEmpty) continue;
            final channel = Channel(
              id: id,
              name: cname,
              url: url,
              logoUrl: c['logoUrl'] as String?,
              groupTitle: c['groupTitle'] as String?,
              tvgId: c['tvgId'] as String?,
              channelNumber: c['channelNumber'] as int?,
              language: c['language'] as String?,
              country: c['country'] as String?,
            );
            channels.add(channel);
            final programsRaw = c['programs'];
            if (programsRaw is List) {
              final epgId = channel.tvgId ?? channel.id;
              final programs = <Program>[];
              for (final p in programsRaw) {
                if (p is! Map<String, dynamic>) continue;
                final startTs = p['startTs'] as int? ?? 0;
                final endTs = p['endTs'] as int? ?? 0;
                if (startTs == 0 || endTs == 0) continue;
                final title = (p['title'] as String?) ?? '';
                if (title.isEmpty) continue;
                programs.add(Program(
                  id: '${epgId}_$startTs',
                  channelId: epgId,
                  title: title,
                  description: p['description'] as String?,
                  startTime: DateTime.fromMillisecondsSinceEpoch(startTs),
                  endTime: DateTime.fromMillisecondsSinceEpoch(endTs),
                  imageUrl: p['imageUrl'] as String?,
                ));
              }
              if (programs.isNotEmpty) {
                programSnapshot[epgId] = programs;
              }
            }
          }
        }
        if (channels.isEmpty) continue;
        names.add(name);
        cache[name] = channels;
      }
      if (names.isEmpty || cache.isEmpty) return;

      _snapshotApplied = true;
      _categoryNames = names;
      _categoryNameSet
        ..clear()
        ..addAll(_categoryNames);
      _categoryChannelCache
        ..clear()
        ..addAll(cache);
      _categoryOffsets
        ..clear()
        ..addEntries(cache.entries.map((entry) =>
            MapEntry(entry.key, entry.value.length)));
      _categoryHasMore
        ..clear()
        ..addEntries(cache.entries.map((entry) =>
            MapEntry(entry.key, entry.value.length >= _liveTvSnapshotRowLimit)));
      _visibleCategoryCount =
          math.min(_categoryNames.length, _liveTvSnapshotCategoryLimit);

      if (mounted) {
        setState(() {});
      }
      if (programSnapshot.isNotEmpty) {
        final epgService =
            Provider.of<IncrementalEpgService>(context, listen: false);
        epgService.applyProgramSnapshot(programSnapshot);
      }
      unawaited(_prefetchInitialRows(force: true));
    } catch (_) {
      // Best-effort only.
    }
  }

  List<Program> _snapshotProgramsForChannel(
    Channel channel,
    IncrementalEpgService epgService,
  ) {
    final channelId = channel.tvgId ?? channel.id;
    final programs = epgService.getProgramsForChannel(
      channelId,
      channelName: channel.name,
      groupTitle: channel.groupTitle,
    );
    if (programs.isEmpty) return const [];
    final now = DateTime.now();
    Program? current;
    Program? next;
    for (final program in programs) {
      if (program.startTime.isBefore(now) &&
          program.endTime.isAfter(now)) {
        current = program;
      } else if (program.startTime.isAfter(now)) {
        final nextProgram = next;
        if (nextProgram == null ||
            program.startTime.isBefore(nextProgram.startTime)) {
          next = program;
        }
      }
    }
    final snapshot = <Program>[];
    if (current != null) {
      snapshot.add(current);
    }
    if (next != null) {
      snapshot.add(next);
    }
    return snapshot;
  }

  Future<void> _saveLiveTvSnapshot() async {
    if (_categoryNames.isEmpty || _categoryChannelCache.isEmpty) return;
    if (!mounted) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      final playlistId = await _readPlaylistIdentity();
      if (!mounted) return;
      final provider = Provider.of<ChannelProvider>(context, listen: false);
      final epgService =
          Provider.of<IncrementalEpgService>(context, listen: false);
      final categories = <Map<String, dynamic>>[];
      for (final category in _categoryNames.take(_liveTvSnapshotCategoryLimit)) {
        final channels = _categoryChannelCache[category];
        if (channels == null || channels.isEmpty) continue;
        final payload = <Map<String, dynamic>>[];
        for (final channel in channels.take(_liveTvSnapshotRowLimit)) {
          final programs = _snapshotProgramsForChannel(channel, epgService);
          final programPayload = programs
              .map((program) => {
                    'startTs': program.startTime.millisecondsSinceEpoch,
                    'endTs': program.endTime.millisecondsSinceEpoch,
                    'title': program.title,
                    'description': program.description,
                    'imageUrl': program.imageUrl,
                  })
              .toList();
          payload.add({
            'id': channel.id,
            'name': channel.name,
            'url': channel.url,
            'logoUrl': channel.logoUrl,
            'groupTitle': channel.groupTitle,
            'tvgId': channel.tvgId,
            'channelNumber': channel.channelNumber,
            'language': channel.language,
            'country': channel.country,
            if (programPayload.isNotEmpty) 'programs': programPayload,
          });
        }
        if (payload.isEmpty) continue;
        categories.add({
          'name': category,
          'channels': payload,
        });
      }
      if (categories.isEmpty) return;
      final snapshot = {
        'savedAt': DateTime.now().millisecondsSinceEpoch,
        'playlistId': playlistId,
        'channelCount': provider.channelCount,
        'categories': categories,
      };
      await prefs.setString(_liveTvSnapshotKey, jsonEncode(snapshot));
    } catch (_) {
      // Best-effort persistence only.
    }
  }

  void _requestInitialFocus() {
    if (_initialFocusRequested) return;
    _initialFocusRequested = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      // Start with first channel focus for better UX
      if (_firstChannelFocus.canRequestFocus) {
        _firstChannelFocus.requestFocus();
      } else if (_watchButtonFocus.canRequestFocus) {
        _watchButtonFocus.requestFocus();
      } else if (_skeletonFocus.canRequestFocus) {
        _skeletonFocus.requestFocus();
      }
    });
  }

  void _requestCategoryPrefetch() {
    if (_categoryPrefetchRequested) return;
    if (_categoryNames.isNotEmpty || _loadingCategories) return;
    _categoryPrefetchRequested = true;
    unawaited(_prefetchInitialRows());
  }

  void _startIdleTimer() {
    _idleTimer ??=
        Timer.periodic(_idleCheckInterval, (_) => _checkIdleState());
  }

  void _stopIdleTimer() {
    _idleTimer?.cancel();
    _idleTimer = null;
  }

  void _handleFocusChange() {
    _markInteraction();
  }

  void _markInteraction() {
    _lastInteractionAt = DateTime.now();
    if (_isIdle) {
      _exitIdleMode();
    }
  }

  void _checkIdleState() {
    if (!mounted) return;
    if (_isOpeningPlayer) return;
    final idleFor = DateTime.now().difference(_lastInteractionAt);
    if (!_isIdle && idleFor >= _idleThreshold) {
      _enterIdleMode();
    }
  }

  void _enterIdleMode() {
    _isIdle = true;
    _pauseArtworkFetching = true;
    _artworkQueueHigh.clear();
    _artworkQueueLow.clear();
    _queuedArtworkIds.clear();
    _artworkThrottle?.cancel();
    _artworkThrottle = null;
    MemoryManager.checkMemoryPressure();
  }

  void _exitIdleMode() {
    _isIdle = false;
    _pauseArtworkFetching = false;
    _scheduleArtworkDrain();
  }

  double _safeScrollOffset() {
    if (!_scrollController.hasClients) return 0.0;
    try {
      return _scrollController.positions.first.pixels;
    } catch (_) {
      return 0.0;
    }
  }

  void _startSkeletonWatchdog() {
    if (_skeletonWatchdog != null) return;
    _skeletonWatchdog =
        Timer.periodic(_skeletonWatchInterval, (_) => _checkSkeletonStuck());
  }

  void _stopSkeletonWatchdog() {
    _skeletonWatchdog?.cancel();
    _skeletonWatchdog = null;
  }

  void _markSkeletonVisibility(bool showing) {
    if (_isSkeletonVisible == showing) return;
    _isSkeletonVisible = showing;
    if (showing) {
      _skeletonShownAt ??= DateTime.now();
      _startSkeletonWatchdog();
      return;
    }
    _skeletonShownAt = null;
    _recoveryInFlight = false;
    _stopSkeletonWatchdog();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      setState(() {});
    });
  }

  void _checkSkeletonStuck() {
    if (!mounted || !_isSkeletonVisible) return;
    final shownAt = _skeletonShownAt;
    if (shownAt == null) return;
    if (DateTime.now().difference(shownAt) < _skeletonStuckThreshold) return;
    _triggerStuckRecovery();
  }

  Future<void> _triggerStuckRecovery({bool userInitiated = false}) async {
    if (!mounted || _recoveryInFlight) return;
    final now = DateTime.now();
    if (!userInitiated &&
        _lastRecoveryAttempt != null &&
        now.difference(_lastRecoveryAttempt!) <
            const Duration(seconds: 12)) {
      return;
    }
    _recoveryInFlight = true;
    _lastRecoveryAttempt = now;
    try {
      final channelProvider =
          Provider.of<ChannelProvider>(context, listen: false);
      _loadingCategories = false;
      _categoryPrefetchRequested = false;
      unawaited(channelProvider.getAllCategoryNamesAsync());
      unawaited(channelProvider.getFilteredChannelsAsync(limit: 40));
      unawaited(_prefetchInitialRows());
      if (mounted) {
        setState(() {});
      }
    } finally {
      _recoveryInFlight = false;
    }
  }

  void _refreshOnResume() {
    if (!mounted) return;
    final channelProvider =
        Provider.of<ChannelProvider>(context, listen: false);
    _categoryPrefetchRequested = false;
    unawaited(channelProvider.getAllCategoryNamesAsync());
    unawaited(channelProvider.getFilteredChannelsAsync(limit: 40));
    _requestCategoryPrefetch();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _refreshOnResume();
    }
  }

  void _startFeaturedRotation() {
    _featuredRotationTimer?.cancel();
    _featuredRotationTimer = Timer.periodic(_featuredRotationInterval, (_) {
      if (mounted) {
        _nextHero();
      }
    });
  }


  Future<void> _maybeRefreshCategories(int channelCount) async {
    if (channelCount <= 0) return;
    if (_categoryNames.isNotEmpty) return;
    if (_loadingCategories) return;
    
    debugLog('LiveTV: Categories empty but channels present ($channelCount), requesting prefetch...');
    _categoryPrefetchRequested = false;
    _requestCategoryPrefetch();
  }

  List<Channel> _filterChannelsWithLoadedEpg(
      List<Channel> channels, IncrementalEpgService epgService) {
    final ready = <Channel>[];
    final missingIds = <String>[];
    final missingNames = <String?>[];
    for (final channel in channels) {
      final channelId = channel.tvgId ?? channel.id;
      final hasPrograms = epgService.hasProgramsForChannel(
        channelId,
        channelName: channel.name,
        groupTitle: channel.groupTitle,
      );
      if (!hasPrograms) {
        missingIds.add(channelId);
        missingNames.add(channel.name);
        continue;
      }
      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.name,
      )) {
        continue;
      }
      ready.add(channel);
    }
    if (missingIds.isNotEmpty) {
      unawaited(epgService.ensureChannelsLoadedBatch(
        missingIds,
        channelNames: missingNames,
      ));
    }
    return ready;
  }

  int _initialRowVisibleCount(
      BuildContext context, double cardWidth, double rowInset) {
    final screenWidth = MediaQuery.of(context).size.width;
    final availableWidth = screenWidth - rowInset - context.spacingLg();
    final perRow = (availableWidth / (cardWidth + context.cardGap())).floor();
    return (perRow + _rowVisibleBuffer).clamp(6, 12);
  }

  // Removed _rowVisibleCountFor and _bumpRowVisibleCount as logic is now handled in HorizontalChannelRow widget


  void _requestMoreCategoryChannels(String category) {
    final hasMore = _categoryHasMore[category] ?? true;
    if (!hasMore) return;
    if (_categoryChannelLoading.contains(category)) return;
    _enqueueCategoryLoad(category, append: true);
  }

  void _handleScrollPrefetch() {
    if (!_scrollController.hasClients || _categoryNames.isEmpty) return;
    if (_scrollController.position.isScrollingNotifier.value) {
      _userHasScrolled = true;
      _markInteraction();
    }
    final heroHeight = context.heroHeight();
    final cardPeek = context.spacingXl();
    final contentTop = (heroHeight - cardPeek).clamp(0.0, heroHeight);
    final rowHeight = _estimateRowHeight(context);
    final offset = _safeScrollOffset() - contentTop;
    if (offset < 0) return;
    if (_visibleCategoryCount < _categoryNames.length &&
        _scrollController.position.extentAfter < _categoryPrefetchExtent) {
      setState(() {
        _visibleCategoryCount = (_visibleCategoryCount + _categoryChunkSize)
            .clamp(0, _categoryNames.length);
      });
    }
    final anchor =
        (offset / rowHeight).floor().clamp(0, _categoryNames.length - 1);
    if (anchor == _lastPrefetchAnchor) return;
    _lastPrefetchAnchor = anchor;
    final end = math.min(
      _categoryNames.length - 1,
      anchor + _prefetchWindowRows,
    );
    for (var i = anchor; i <= end; i++) {
      _enqueueCategoryLoad(_categoryNames[i]);
    }
  }

  void _startArtworkRetryWindow() {
    if (_artworkRetryWindowActive || _categoryNames.isEmpty) return;
    if (_lastArtworkRetryWindow != null &&
        DateTime.now().difference(_lastArtworkRetryWindow!) <
            const Duration(seconds: 15)) {
      return;
    }
    _artworkRetryWindowActive = true;
    _lastArtworkRetryWindow = DateTime.now();
    _artworkRetryWindowTimer?.cancel();
    _artworkRetryWindowTimer = Timer(const Duration(seconds: 8), () {
      _artworkRetryWindowActive = false;
    });
    _artworkRetrySweep();
  }

  void _artworkRetrySweep() {
    if (!_artworkRetryWindowActive || _isIdle) return;
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    final maxCategories = math.min(4, _categoryNames.length);
    for (var i = 0; i < maxCategories; i++) {
      final category = _categoryNames[i];
      final channels = _categoryChannelCache[category];
      if (channels == null || channels.isEmpty) continue;
      final limit = math.min(channels.length, 10);
      for (var j = 0; j < limit; j++) {
        final channel = channels[j];
        final channelId = channel.tvgId ?? channel.id;
        final program = epgService.getCurrentProgram(
          channelId,
          channelName: channel.name,
          groupTitle: channel.groupTitle,
        );
        if (program == null) continue;
        _ensureFreshProgramArtwork(
          program,
          channel,
          highPriority: true,
        );
      }
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    FocusManager.instance.removeListener(_handleFocusChange);
    _stopIdleTimer();
    _stopSkeletonWatchdog();
    _artworkRetryWindowTimer?.cancel();
    _focusChangeNotifier.dispose();
    _timerService.unregister('live_tv_carousel');
    _artworkThrottle?.cancel();
    _artworkTitleSaveDebounce?.cancel();
    _artworkNegativeSaveDebounce?.cancel();
    _snapshotSaveDebounce?.cancel();
    _featuredRotationTimer?.cancel();

    _epgTimeoutLogged = false;
    _scrollController.dispose();
    for (final controller in _rowScrollControllers.values) {
      controller.dispose();
    }
    _rowScrollControllers.clear();
    _rowScrollInitialized.clear();

    _focusPool.returnFocusNodes(
      [
        'live_tv_watch',
        'live_tv_settings',
        'live_tv_featured_card',
        'live_tv_first_card',
        'live_tv_skeleton'
      ],
    );
    for (final node in _cardFocusNodes.values) {
      node.dispose();
    }
    _cardFocusNodes.clear();
    _cardFocusOrder.clear();
    super.dispose();
  }

  FocusNode _focusNodeForCard(
    String sectionKey,
    Channel channel,
    int index, {
    required bool isFirstRow,
    required bool allowCategoryPaging,
  }) {
    if (isFirstRow && index == 0) {
      return allowCategoryPaging ? _firstChannelFocus : _firstFeaturedFocus;
    }
    final channelId = channel.tvgId ?? channel.id;
    final key = '$sectionKey|$channelId|$index';
    final existing = _cardFocusNodes[key];
    if (existing != null) return existing;
    final node = FocusNode(debugLabel: 'LiveTVCard:$key');
    _cardFocusNodes[key] = node;
    _cardFocusOrder.addLast(key);
    while (_cardFocusOrder.length > _maxCardFocusNodes) {
      final removedKey = _cardFocusOrder.removeFirst();
      final removed = _cardFocusNodes.remove(removedKey);
      removed?.dispose();
    }
    return node;
  }

  void _restoreCardFocusIfMissing() {
    final lastKey = _lastFocusedCardKey;
    if (lastKey == null) return;
    final node = _cardFocusNodes[lastKey];
    if (node == null || !node.canRequestFocus) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final primary = FocusManager.instance.primaryFocus;
      if (primary == null || !primary.hasFocus) {
        node.requestFocus();
      }
    });
  }

  final ValueNotifier<bool> _focusChangeNotifier = ValueNotifier(false);

  @override
  bool get wantKeepAlive => true;

  Future<void> _prefetchInitialRows({bool force = false}) async {
    if (_loadingCategories) return;
    if (!force && _categoryNames.isNotEmpty) return;
    _loadingCategories = true;
    try {
      final channelProvider =
          Provider.of<ChannelProvider>(context, listen: false);
      final categories = await channelProvider.getAllCategoryNamesAsync();
      debugLog('LiveTV: Fetched ${categories.length} categories');
      if (!mounted) return;
      final effectiveCategories = categories.isNotEmpty
          ? categories
          : _buildFallbackCategories(channelProvider);
      if (force) {
        _categoryChannelCache.clear();
        _categoryCacheOrder.clear();
        _categoryOffsets.clear();
        _categoryHasMore.clear();
      }
      _categoryNames = effectiveCategories;
      _categoryNameSet
        ..clear()
        ..addAll(_categoryNames);
      
      // Initialize random featured index/ID for cold start variety
      if (!_heroIndexInitialized) {
        final channelCount = channelProvider.channelCount;
        if (channelCount > 0) {
          // If we don't have an ID yet, pick a random index
          if (_featuredIndex == 0) {
            _featuredIndex = math.Random().nextInt(channelCount);
          }
          _heroIndexInitialized = true;
          debugLog('LiveTV: Initialized featured index to $_featuredIndex');
        }
      }
      
      _categoryRowNotifiers.clear();
      _rowScrollInitialized.clear();
      _lastPrefetchAnchor = -1;
      _visibleCategoryCount =
          math.min(_initialCategoryPrefetchCount, _categoryNames.length);
      setState(() {});
      await _prefetchInitialCategoryRows();
    } catch (e) {
      debugLog('LiveTV: Error prefetching rows: $e');
    } finally {
      _loadingCategories = false;
    }
  }

  List<String> _buildFallbackCategories(ChannelProvider provider) {
    if (!provider.hasChannels) return [];
    final preview = provider.getFilteredChannels(limit: 200);
    final seen = <String>{};
    final categories = <String>[];
    for (final channel in preview) {
      final trimmed = (channel.groupTitle ?? '').trim();
      final name = trimmed.isEmpty ? 'Uncategorized' : trimmed;
      if (seen.add(name)) {
        if (name != 'Uncategorized') {
          categories.add(name);
        }
      }
    }
    if (seen.contains('Uncategorized')) {
      categories.add('Uncategorized');
    }
    return categories;
  }

  Future<void> _prefetchInitialCategoryRows() async {
    if (_categoryNames.isEmpty) return;
    final end = math.min(_initialCategoryPrefetchCount, _categoryNames.length);
    final categories = _categoryNames.take(end).toList();
    final channelProvider =
        Provider.of<ChannelProvider>(context, listen: false);
    try {
      final batch = await channelProvider.getCategoryPreviewBatch(
        categories,
        limit: _rowInitialFetch,
      );
      if (!mounted) return;
      for (final category in categories) {
        final channels = batch[category] ?? const [];
        if (channels.isEmpty) {
          _enqueueCategoryLoad(category);
          continue;
        }
        _categoryChannelCache[category] = channels;
        _categoryOffsets[category] = channels.length;
        _categoryHasMore[category] = channels.length >= _rowInitialFetch;
        _trackCachedCategory(category);
        _prefetchEpgForRow(category, channels);
        _notifyCategoryRow(category);
      }
      _scheduleLiveTvSnapshotSave();
    } catch (e) {
      debugLog('LiveTV: Batch category prefetch failed: $e');
      for (final category in categories) {
        _enqueueCategoryLoad(category);
      }
    }
  }

  void _enqueueCategoryLoad(String category, {bool append = false}) {
    if (!append && _categoryChannelCache.containsKey(category)) {
      return;
    }
    if (_categoryChannelLoading.contains(category) ||
        _categoryLoadQueue.contains(category)) {
      return;
    }
    _categoryLoadQueue.add(category);
    if (append) {
      _categoryAppendQueue.add(category);
    }
    _drainCategoryLoadQueue();
  }

  void _drainCategoryLoadQueue() {
    if (_activeCategoryLoads >= _maxCategoryLoads) return;
    while (_activeCategoryLoads < _maxCategoryLoads &&
        _categoryLoadQueue.isNotEmpty) {
      final category = _categoryLoadQueue.removeFirst();
      final append = _categoryAppendQueue.remove(category);
      _activeCategoryLoads++;
      unawaited(_loadCategoryRowInternal(category, append: append));
    }
  }

  Future<void> _loadCategoryRowInternal(String category,
      {bool append = false}) async {
    try {
      final channelProvider =
          Provider.of<ChannelProvider>(context, listen: false);
      final offset = append ? (_categoryOffsets[category] ?? 0) : 0;
      final limit = append ? _rowFetchStep : _rowInitialFetch;
      final channels = await channelProvider.getChannelsForCategoryAsync(
        category,
        offset: offset,
        limit: limit,
      );
      if (!mounted) return;
      if (channels.isNotEmpty) {
        if (append && _categoryChannelCache.containsKey(category)) {
          _categoryChannelCache[category] = [
            ..._categoryChannelCache[category] ?? [],
            ...channels
          ];
        } else {
          _categoryChannelCache[category] = channels;
        }
        if (!append) {
          final categoryIndex = _categoryNames.indexOf(category);
          if (categoryIndex >= 0 &&
              categoryIndex < _initialCategoryPrefetchCount) {
            _prefetchEpgForRow(category, channels);
          }
        }
        _categoryOffsets[category] = offset + channels.length;
        _trackCachedCategory(category);
      }
      if (channels.length < limit) {
        _categoryHasMore[category] = false;
      } else {
        _categoryHasMore[category] = true;
      }
      _scheduleLiveTvSnapshotSave();
    } catch (e) {
      debugLog('LiveTV: Failed to load category "$category": $e');
    } finally {
      if (mounted) {
        _categoryChannelLoading.remove(category);
        _activeCategoryLoads = (_activeCategoryLoads - 1).clamp(0, 9999);
        _drainCategoryLoadQueue();
        _notifyCategoryRow(category);
      }
    }
  }

  void _notifyCategoryRow(String category) {
    final notifier = _categoryRowNotifiers[category];
    if (notifier != null) {
      notifier.value++;
    }
  }

  ValueNotifier<int> _categoryRowNotifierFor(String category) {
    return _categoryRowNotifiers.putIfAbsent(
      category,
      () => ValueNotifier<int>(0),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final provider = Provider.of<ChannelProvider>(context);
    
    // Only refresh categories if we have channels but no categories loaded
    if (provider.hasChannels && _categoryNames.isEmpty && !_loadingCategories) {
      _maybeRefreshCategories(provider.channelCount);
    }

    final routePath = GoRouterState.of(context).uri.path;
    if (_lastRoutePath == routePath) return;
    _lastRoutePath = routePath;
    if (routePath == '/home') {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.jumpTo(0);
        }
        _resetRowScrollOffsets();
        _requestInitialFocus();
        // Force category refresh on app restart if we have channels but no categories
        if (provider.hasChannels && _categoryNames.isEmpty && !_loadingCategories) {
          _categoryPrefetchRequested = false;
          _requestCategoryPrefetch();
        }
      });
    }
  }

  void _resetRowScrollOffsets() {
    for (final controller in _rowScrollControllers.values) {
      if (controller.hasClients) {
        controller.jumpTo(0);
      }
    }
  }

  @override
  bool handleContentFocusRequest() {
    return _focusPrimaryAction();
  }

  bool _focusPrimaryAction() {
    if (!mounted) return false;
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    if (channelProvider.channels.isEmpty) {
      _settingsButtonFocus.requestFocus();
      return true;
    }
    // Prefer first channel card like major streaming apps
    if (_firstChannelFocus.canRequestFocus) {
      _firstChannelFocus.requestFocus();
    } else {
      _watchButtonFocus.requestFocus();
    }
    return true;
  }

  void _goToSettings() {
    final router = GoRouter.of(context);
    unawaited(Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) router.go('/settings');
    }));
  }

  void _scrollToHeroPeekOnFocus() {
    if (!_userHasScrolled) return;
    if (!mounted || !_scrollController.hasClients) return;
    final heroHeight = context.heroHeight();
    final targetOffset = heroHeight * 0.2;
    if (_safeScrollOffset() >= targetOffset) return;
    _scrollController.animateTo(
      targetOffset,
      duration: const Duration(milliseconds: 240),
      curve: Curves.easeOutCubic,
    );
  }

  void _startCarouselIfNeeded() {
    // Register carousel timer (8 seconds)
    _timerService.registerCustomCallback('live_tv_carousel', 8, () {
      _nextHero();
    });
    // Focus is managed by navigation bar - don't auto-focus content
  }

  void _nextHero() {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    if (!channelProvider.hasChannels) return;
    _featuredChannelId = null;
    final heroCount =
        _lastHeroCandidateCount > 0 ? _lastHeroCandidateCount : null;
    setState(() {
      // Cycle through ready hero candidates when available.
      final divisor = heroCount ?? channelProvider.channelCount;
      _featuredIndex = (_featuredIndex + 1) % divisor;
    });
  }

  void _prevHero() {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    if (!channelProvider.hasChannels) return;
    _featuredChannelId = null;
    final heroCount =
        _lastHeroCandidateCount > 0 ? _lastHeroCandidateCount : null;
    setState(() {
      final divisor = heroCount ?? channelProvider.channelCount;
      _featuredIndex = (_featuredIndex - 1 + divisor) % divisor;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    _restoreCardFocusIfMissing();
    final bool shouldScrollFirst = _scrollController.hasClients && _safeScrollOffset() > 100;
    return PopScope(
      canPop: !shouldScrollFirst,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        if (shouldScrollFirst) {
          unawaited(_scrollController.animateTo(
            0.0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOutCubic,
          ));
        }
      },
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.background,
        ),
        child: Consumer<ChannelProvider>(
          builder: (context, channelProvider, _) {

          final hasChannels = channelProvider.hasChannels;


          final latestCategories = channelProvider.getAllCategoryNames();
          if (latestCategories.isNotEmpty) {
            final newNames = _categoryNames.isEmpty
                ? latestCategories
                : latestCategories
                    .where((name) => !_categoryNameSet.contains(name))
                    .toList();
            if (newNames.isNotEmpty) {
              debugLog('LiveTV: Processing ${newNames.length} new categories (total: ${latestCategories.length}, current: ${_categoryNames.length})');
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (!mounted) return;
                if (_categoryNames.isEmpty) {
                  _categoryNames = List<String>.from(newNames);
                  _categoryNameSet
                    ..clear()
                    ..addAll(_categoryNames);
                } else {
                  for (final name in newNames) {
                    if (_categoryNameSet.add(name)) {
                      _categoryNames.add(name);
                    }
                  }
                }
                _startArtworkRetryWindow();
                if (_visibleCategoryCount < _initialCategoryPrefetchCount) {
                  _visibleCategoryCount = math.min(
                    _initialCategoryPrefetchCount,
                    _categoryNames.length,
                  );
                } else {
                  // While scrolling/parsing, ensure we are showing up to the full available list
                  // This is crucial for progressive update - as new categories come in, extend visibility!
                  _visibleCategoryCount = _categoryNames.length;
                }
                _lastPrefetchAnchor = -1;
                debugLog('LiveTV: Updated _categoryNames to ${_categoryNames.length}, visibleCount: $_visibleCategoryCount');
                setState(() {});
                unawaited(_prefetchInitialCategoryRows());
              });
            }
          }

          final epgService = context.watch<IncrementalEpgService>();
          final overlayBusy = channelProvider.isLoading ||
              epgService.isDownloading ||
              epgService.isParsing ||
              epgService.isLoading;
          final showStartupOverlay =
              (channelProvider.isColdStartLoad || _startupOverlayActive) &&
                  overlayBusy;
          if (channelProvider.isColdStartLoad && !_startupOverlayActive) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (!mounted) return;
              if (!_startupOverlayActive) {
                setState(() => _startupOverlayActive = true);
              }
            });
          }
          if (_startupOverlayActive && !overlayBusy) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (!mounted) return;
              if (_startupOverlayActive) {
                setState(() => _startupOverlayActive = false);
              }
            });
          }
          final epgStatus = epgService.isDownloading
              ? 'Downloading EPG data...'
              : epgService.isParsing
                  ? 'Parsing EPG data...'
                  : epgService.isLoading
                      ? 'Loading EPG cache...'
                      : null;
          Widget wrapWithOverlay(Widget child) {
            if (!showStartupOverlay) return child;
            return Stack(
              children: [
                child,
                Positioned.fill(
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                      child: Container(
                        color: Colors.black.withValues(alpha: 0.45),
                        alignment: Alignment.center,
                        child: _buildColdStartOverlayCard(
                          statusText: channelProvider.loadingStatus,
                          secondaryStatusText: epgStatus,
                          progress: channelProvider.loadingProgress,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          Widget buildSkeleton() => _buildSkeletonLoaderTracked(
                showColdStartOverlay: showStartupOverlay,
                statusText: channelProvider.loadingStatus,
                secondaryStatusText: epgStatus,
                progress: channelProvider.loadingProgress,
              );

          // Improved EPG loading detection - only show skeleton if truly loading

          if (!hasChannels &&
              channelProvider.isLoading &&
              !channelProvider.noPlaylistConfigured) {
            return buildSkeleton();
          }

          // If we have categories (data), SHOW THE UI! The EPG can populate later.
          // FIX: If we have channels but no categories yet, allow loading to continue
          // BUT if we have categories, we MUST show the UI.
          final hasCategories = _categoryNames.isNotEmpty;
          
            if (!hasCategories &&
              channelProvider.isLoading &&
              !channelProvider.noPlaylistConfigured &&
              !hasChannels) {
             // Still initial load with no channels
             return buildSkeleton();
            }

          if (!hasChannels) {
            final errorMessage = channelProvider.errorMessage;
            if (!channelProvider.noPlaylistConfigured &&
                (!channelProvider.hasLoadedPlaylist ||
                    channelProvider.isLoading)) {
              return buildSkeleton();
            }
            _markSkeletonVisibility(false);
            return wrapWithOverlay(Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    context.iconXxl(
                      AppIcons.liveTV,
                      color:
                          AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
                    ),
                    SizedBox(height: context.tvSpacing(24)),
                    Text(
                      AppLocalizations.of(context)!.noLiveTvAvailable,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: context.tvSpacing(8)),
                    Text(
                      errorMessage != null && errorMessage.isNotEmpty
                          ? errorMessage
                          : AppLocalizations.of(context)!.loadPlaylistMessage,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppTheme.textSecondary,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: context.tvSpacing(32)),
                    GoToSettingsButton(
                      onPressed: _goToSettings,
                      focusNode: _settingsButtonFocus,
                    ),
                  ],
                ),
              ),
            ));
          }

          _requestCategoryPrefetch();
          _maybeRefreshCategories(channelProvider.channelCount);
          final previewCount = channelProvider.channelCount;
          if (_previewFuture == null ||
              _lastPreviewChannelCount != previewCount) {
            _lastPreviewChannelCount = previewCount;
            _previewFuture = channelProvider.getChannelsPage(
              offset: 0,
              limit: 60,
            );
          }

          // Load featured + preview list asynchronously from DB when available
          return FutureBuilder<List<Channel>>(
            future: _previewFuture,
            builder: (context, snapshot) {
              final previewList =
                  (snapshot.data != null && snapshot.data!.isNotEmpty)
                      ? snapshot.data!
                      : channelProvider.channels;
              if (previewList.isEmpty) {
                return buildSkeleton();
              }
              
              // CRITICAL: Wrap Hero in Consumer<IncrementalEpgService> so it reacts to background EPG flow
              return wrapWithOverlay(Consumer<IncrementalEpgService>(
                builder: (context, epgService, _) {
                  // Try to find channels with EPG data ready
                  final readyChannels =
                      _filterChannelsWithLoadedEpg(previewList, epgService);

                  // Only show channels that have EPG data or allow fallback for Shield performance
                  final timeSinceInit = DateTime.now().difference(_initTime);
                  
                  // Force show all channels after 20 seconds even if EPG not loaded
                  List<Channel> displayChannels = readyChannels;
                  if (displayChannels.isEmpty && timeSinceInit.inSeconds > 20) {
                    if (!_epgTimeoutLogged) {
                      debugLog(
                          'LiveTV: EPG load timeout (${timeSinceInit.inMilliseconds}ms), showing all channels');
                      _epgTimeoutLogged = true;
                    }
                    displayChannels = previewList;
                  }
                  
                  if (displayChannels.isEmpty) {
                    if (epgService.error != null &&
                        epgService.error!.isNotEmpty) {
                      _markSkeletonVisibility(false);
                      return _buildEpgError(epgService.error!);
                    }
                    final isEpgLoading = epgService.isLoading ||
                        epgService.isParsing ||
                        epgService.isDownloading;

                    if (isEpgLoading) {
                      debugLog(
                          'LiveTV: Waiting for EPG (${timeSinceInit.inMilliseconds}ms)');
                    }
                    return buildSkeleton();
                  }
                  _markSkeletonVisibility(false);

                  // displayChannels already defined above
                  
                  // Handle Stable ID vs Index
                  if (_featuredChannelId != null) {
                    final idx = displayChannels.indexWhere((c) => (c.tvgId ?? c.id) == _featuredChannelId);
                    if (idx != -1) {
                      _featuredIndex = idx;
                    }
                  }

                  final safeFeaturedIndex = _featuredIndex % displayChannels.length;
                  final featuredChannel = displayChannels[safeFeaturedIndex];
                  
                  // Update current ID for stability
                  _featuredChannelId = featuredChannel.tvgId ?? featuredChannel.id;
                  
                  // Ensure EPG is triggered for the selected hero
                  if (_featuredChannelId != null && _featuredChannelId!.isNotEmpty) {
                    unawaited(epgService.ensureChannelLoaded(
                        _featuredChannelId!,
                        channelName: featuredChannel.name));
                  }
                  
                  return _buildFullScreenHero(
                    context,
                    featuredChannel,
                    displayChannels,
                  );
                },
              ));
            },
          );
          },
        ),
      ),
    );
  }

  Widget _buildFeaturedRow(
      BuildContext context, List<Channel> fallbackChannels) {
    if (fallbackChannels.isEmpty) return const SizedBox.shrink();

    final channelProvider =
        Provider.of<ChannelProvider>(context, listen: false);
    final epgService = context.watch<IncrementalEpgService>();
    final mostWatched = channelProvider.mostWatchedChannels;

    // Use stabilized channels if already initialized and fallback haven't changed much
    if (_featuredChannelsInitialized && _stableFeaturedChannels.isNotEmpty) {
      return _buildChannelSection(
        context,
        'Featured',
        _stableFeaturedChannels,
        isFirstRow: true,
        allowCategoryPaging: false,
      );
    }

    // Mix most-watched with random selection for balanced featured content
    final List<Channel> featuredChannels = [];
    final Set<String> addedChannelIds = {};
    final Set<String> featuredProgramTitles = {};
    final Set<String> missingChannelIds = {};
    final List<String> missingChannelNames = [];

    // Add most-watched channels first (up to 60% of featured slots)
    final maxMostWatched = math.min(mostWatched.length, 6);
    for (int i = 0; i < maxMostWatched; i++) {
      final channel = mostWatched[i];
      final channelId = channel.tvgId ?? channel.id;

      // Check if this channel's current program is already featured
      final currentProgram = epgService.getCurrentProgram(
        channelId,
        channelName: channel.name,
        groupTitle: channel.groupTitle,
      );

      if (currentProgram == null) {
        if (missingChannelIds.add(channelId)) {
          missingChannelNames.add(channel.name);
        }
        continue;
      }

      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.name,
      )) {
        continue;
      }

      final normalizedTitle = normalizeForFilter(currentProgram.title);
      if (featuredProgramTitles.contains(normalizedTitle)) {
        debugLog(
            'LiveTV: Skipping channel "${channel.name}" - program "${currentProgram.title}" already featured');
        continue;
      }
      featuredProgramTitles.add(normalizedTitle);

      if (!addedChannelIds.contains(channelId)) {
        featuredChannels.add(channel);
        addedChannelIds.add(channelId);
      }
    }

    // Fill remaining slots with random channels for variety
    final availableChannels = fallbackChannels
        .where(
            (channel) => !addedChannelIds.contains(channel.tvgId ?? channel.id))
        .toList();

    // Shuffle for randomness
    availableChannels.shuffle(math.Random());

    final targetFeaturedCount = 10; // Total featured channels to show
    final remainingSlots = targetFeaturedCount - featuredChannels.length;
    final randomCount = math.min(remainingSlots, availableChannels.length);

    for (int i = 0; i < randomCount; i++) {
      final channel = availableChannels[i];
      final channelId = channel.tvgId ?? channel.id;

      // Check if this channel's current program is already featured
      final currentProgram = epgService.getCurrentProgram(
        channelId,
        channelName: channel.name,
        groupTitle: channel.groupTitle,
      );

      if (currentProgram == null) {
        if (missingChannelIds.add(channelId)) {
          missingChannelNames.add(channel.name);
        }
        continue;
      }

      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.name,
      )) {
        continue;
      }

      final normalizedTitle = normalizeForFilter(currentProgram.title);
      if (featuredProgramTitles.contains(normalizedTitle)) {
        debugLog(
            'LiveTV: Skipping channel "${channel.name}" - program "${currentProgram.title}" already featured');
        continue;
      }
      featuredProgramTitles.add(normalizedTitle);

      featuredChannels.add(channel);
      addedChannelIds.add(channelId);

      // Stop if we've reached our target count
      if (featuredChannels.length >= targetFeaturedCount) break;
    }

    if (featuredChannels.length < targetFeaturedCount) {
      for (final channel in availableChannels) {
        if (featuredChannels.length >= targetFeaturedCount) break;
        final channelId = channel.tvgId ?? channel.id;
        if (addedChannelIds.contains(channelId)) continue;
        if (epgService.shouldHideChannel(
          channelId,
          channelName: channel.name,
        )) {
          continue;
        }
        featuredChannels.add(channel);
        addedChannelIds.add(channelId);
      }
    }

    if (missingChannelIds.isNotEmpty) {
      unawaited(epgService.ensureChannelsLoadedBatch(
        missingChannelIds.toList(),
        channelNames: missingChannelNames,
      ));
    }

    if (featuredChannels.isNotEmpty) {
      _stableFeaturedChannels = List.from(featuredChannels);
      _featuredChannelsInitialized = true;
    }

    if (featuredChannels.isEmpty) return const SizedBox.shrink();

    return _buildChannelSection(
      context,
      'Featured',
      featuredChannels,
      isFirstRow: true,
      allowCategoryPaging: false,
    );
  }

  Widget _buildFullScreenHero(
    BuildContext context,
    Channel featuredChannel,
    List<Channel> allChannels,
  ) {
    final screenSize = MediaQuery.of(context).size;
    final heroHeight = context.heroHeight();
    final cardPeek = 80.0;
    final contentTop = (heroHeight - cardPeek).clamp(0.0, heroHeight);
    final contentInset = context.spacingSm() + AppSpacing.sidebarCollapsedWidth;
    final rightInset = context.spacingLg();

    // Calculate available width for content
    final availableWidth = screenSize.width - contentInset - rightInset;

    // Responsive width calculation
    final desiredInfoWidth = screenSize.width < 800
        ? availableWidth
        : screenSize.width * AppSpacing.heroInfoWidth;

    final heroInfoWidth = math.min(
      desiredInfoWidth,
      screenSize.width >= 1920 ? 480.0 : 420.0,
    );

    final epgService = context.watch<IncrementalEpgService>();
    final heroCandidates = _buildHeroCandidates(allChannels, epgService);
    final epgHeroCandidates =
        heroCandidates.where((candidate) => candidate.program != null).toList();
    if (epgHeroCandidates.isEmpty) {
      final isEpgLoading = epgService.isLoading ||
          epgService.isParsing ||
          epgService.isDownloading;
      final timeSinceInit = DateTime.now().difference(_initTime);
      if (isEpgLoading) {
        debugLog(
            'LiveTV: Hero waiting for EPG (${timeSinceInit.inMilliseconds}ms)');
      }
      return _buildSkeletonLoaderTracked();
    }

    final selectionPool = epgHeroCandidates;
    _lastHeroCandidateCount = selectionPool.length;
    // Removed state mutation of _featuredIndex from build method to avoid infinite loops
    // Safe indexing is handled below with modulo operator
    final selectedHero = _lastHeroCandidateCount == 0
        ? null
        : selectionPool[_featuredIndex % _lastHeroCandidateCount];
    final activeChannel = selectedHero?.channel ?? featuredChannel;
    final currentProgram = selectedHero?.program;
    final heroImage = _resolveHeroImage(
          currentProgram,
          activeChannel,
          allowFetch: true,
          highPriority: true,
          preferHighRes: true,
        ) ??
        '';
    if (selectedHero?.program != null) {
      _ensureFreshProgramArtwork(
        selectedHero!.program!,
        selectedHero.channel,
        highPriority: true,
      );
    }
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Hero Background & Gradient
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: heroHeight,
          child: AnimatedBuilder(
            animation: _scrollController,
            child: Builder(builder: (context) {
                final scrollPos = _safeScrollOffset();
              final fadeProgress =
                  (scrollPos / (heroHeight * 0.5)).clamp(0.0, 1.0);

              return Opacity(
                opacity: 1.0 - fadeProgress,
                child: Stack(
                  children: [
                    _buildHeroContent(
                      activeChannel,
                      currentProgram,
                      heroImage,
                      0.0,
                    ),
                    // Full-height left scrim to avoid blocky panel edges.
                    Positioned.fill(
                      child: IgnorePointer(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: const Alignment(-1.0, -0.2),
                              end: const Alignment(0.6, 0.4),
                              colors: [
                                AppTheme.darkBackground
                                    .withValues(alpha: 0.88),
                                AppTheme.darkBackground
                                    .withValues(alpha: 0.52),
                                Colors.transparent,
                              ],
                              stops: const [0.0, 0.35, 0.7],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Gradient fade at bottom
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: cardPeek + 24,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              AppTheme.darkBackground
                                  .withAlpha((0.8 * 255).round()),
                              AppTheme.darkBackground,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
            builder: (context, child) {
                final scrollPos = _safeScrollOffset();
              return Transform.translate(
                offset: Offset(0, -scrollPos),
                child: child,
              );
            },
          ),
        ),
        // Content Background Gradient (behind channel rows)
        Positioned(
          top: contentTop,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  AppTheme.darkBackground,
                  AppTheme.darkBackground,
                ],
                stops: [0.0, 0.5, 1.0], // More gradual fade (was 0.2)
              ),
            ),
          ),
        ),
        // Scrollable content
        Positioned.fill(
          child: CustomScrollView(
            key: const PageStorageKey<String>('live_tv_scroll'),
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: GestureDetector(
                  onTap: () {
                    // Tap on hero area to scroll back to top
                    _scrollController.animateTo(
                      0.0,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOutCubic,
                    );
                  },
                  child: SizedBox(height: contentTop),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 0,
                  right: rightInset,
                  bottom: context.spacingXl(),
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index == 0) {
                        return KeyedSubtree(
                          key: const ValueKey<String>('live_tv_featured_row'),
                          child: _buildFeaturedRow(context, allChannels),
                        );
                      }
                      final categoryIndex = index - 1;
                      if (categoryIndex < 0 ||
                          categoryIndex >= _categoryNames.length) {
                        return const SizedBox.shrink();
                      }
                      final categoryName = _categoryNames[categoryIndex];
                      return KeyedSubtree(
                        key: ValueKey<String>('live_tv_row_$categoryName'),
                        child: _buildCategoryRowWidget(
                          context,
                          categoryName,
                          categoryIndex,
                          isFirstRow: categoryIndex == 0,
                        ),
                      );
                    },
                    childCount:
                        math.min(_visibleCategoryCount, _categoryNames.length) +
                            1,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: context.spacing(12)),
              ),
            ],
          ),
        ),
        // Hero info overlay
        Positioned(
          top: 0,
          left: 0,
          right: rightInset,
          height: contentTop, // Limit height to visible area above channels
          child: AnimatedBuilder(
            animation: _scrollController,
            builder: (context, _) {
              final scrollPos = _safeScrollOffset();
              final fadeProgress =
                  (scrollPos / (heroHeight * 0.3)).clamp(0.0, 1.0);
              final opacity = 1.0 - fadeProgress;

              Widget content;
              if (opacity <= 0.01) {
                // Always show focusable tap area when fully faded
                content = Focus(
                  onKeyEvent: (node, event) {
                    if (event is KeyDownEvent) {
                      if (event.logicalKey == LogicalKeyboardKey.select ||
                          event.logicalKey == LogicalKeyboardKey.enter ||
                          event.logicalKey == LogicalKeyboardKey.space) {
                        _scrollController.animateTo(
                          0.0,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeOutCubic,
                        );
                        return KeyEventResult.handled;
                      }
                    }
                    return KeyEventResult.ignored;
                  },
                  child: GestureDetector(
                    onTap: () {
                      _scrollController.animateTo(
                        0.0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOutCubic,
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: contentTop,
                      color: Colors.transparent,
                    ),
                  ),
                );
              } else {
                content = Opacity(
                  opacity: opacity,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                        child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: contentInset),
                            child: _buildHeroInfoPanel(
                              context,
                              heroInfoWidth,
                              _buildFeaturedInfoWithFocus(
                                  context, activeChannel, currentProgram),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }

              return Transform.translate(
                offset: Offset(0, -scrollPos),
                child: content,
              );
            },
          ),
        ),
        // Channel logo
        Positioned(
          top: AppSizes.lg,
          right: AppSizes.lg,
          child: Builder(builder: (context) {
            final scrollPos = _safeScrollOffset();
            final fadeProgress =
                (scrollPos / (heroHeight * 0.5)).clamp(0.0, 1.0);
            return Opacity(
              opacity: 1.0 - fadeProgress,
              child: _buildChannelLogo(context, activeChannel),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildEpgError(String message) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 520),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'EPG error',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.tvSpacing(8)),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.tvSpacing(24)),
            GoToSettingsButton(
              onPressed: _goToSettings,
              focusNode: _settingsButtonFocus,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedInfo(
      BuildContext context, Channel channel, Program? program) {
    final title = program?.title ?? channel.name;
    final description = program?.description ?? 'No program data available.';
    final timeRange = program != null
        ? '${_formatTime(program.startTime)} - ${_formatTime(program.endTime)}'
        : 'Live Stream';
    final progress = program?.progressPercentage ?? 0.0;
    final titleLogoUrl = _resolveProgramTitleLogo(program, channel);
    final titleStyle = AppTypography.heroTitle(context).copyWith(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      shadows: [
        Shadow(
          color: Colors.black.withValues(alpha: 0.9),
          blurRadius: 16,
          offset: const Offset(0, 2),
        ),
        Shadow(
          color: Colors.black.withValues(alpha: 0.6),
          blurRadius: 6,
          offset: const Offset(0, 1),
        ),
      ],
    );
    final descriptionStyle = AppTypography.heroDescription(context).copyWith(
      color: Colors.white.withValues(alpha: 0.85),
      fontWeight: FontWeight.w500,
      shadows: [
        Shadow(
          color: Colors.black.withValues(alpha: 0.8),
          blurRadius: 12,
          offset: const Offset(0, 1),
        ),
      ],
    );
    final logoSlotHeight =
        context.tvSpacing(64); // Increased from 30 for higher resolution

    // Safe max height: more generous space for content
    final heroHeight = context.heroHeight();
    final cardPeek = 80.0;
    final contentTop = (heroHeight - cardPeek).clamp(0.0, heroHeight);
    final safeMaxHeight = contentTop - 20; // More generous buffer

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: context.heroInfoWidth(),
        maxHeight: safeMaxHeight,
      ),
      child: Container(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (titleLogoUrl != null) ...[
              SizedBox(
                height: logoSlotHeight,
                child: CachedImage(
                  imageUrl: titleLogoUrl,
                  height: logoSlotHeight,
                  fit: BoxFit.contain,
                  placeholder: const SizedBox.shrink(),
                  errorWidget: const SizedBox.shrink(),
                ),
              ),
              SizedBox(height: context.tvSpacing(12)),
            ],
            if (titleLogoUrl == null && title.isNotEmpty) ...[
              Text(
                title,
                style: titleStyle,
                maxLines: 2, // Allow 2 lines for longer titles
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: context.tvSpacing(6)),
            ],
            if (description.isNotEmpty) ...[
              Flexible(
                child: Text(
                  description,
                  style: descriptionStyle,
                  maxLines: 3, // Reduced to make room for title
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: context.tvSpacing(12)),
            ],
            // Progress Bar
            SizedBox(
              height: 4, // Slimmer progress bar
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: progress,
                  backgroundColor: AppColors.progressBackground,
                  color: AppColors.progressForeground,
                  minHeight: 4,
                ),
              ),
            ),
            SizedBox(height: context.tvSpacing(6)),
            // Badge & Time
            Row(
              children: [
                const BrandBadge.live(),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    timeRange,
                    style: AppTypography.smallText(context).copyWith(
                      fontSize: context.tvTextSize(12),
                      color: Colors.white.withValues(alpha: 0.8),
                      shadows: [
                        Shadow(
                          color: Colors.black.withValues(alpha: 0.7),
                          blurRadius: 6,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16), // Reduced from 20
            // Watch Button
            SizedBox(
              width: context.cardWidth() * 0.6,
              child: BrandPrimaryButton(
                onPressed: () => _openChannelPlayer(channel),
                label: 'Watch Now',
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                fontSize: 14,
                minHeight: 32,
                expand: true,
                focusNode: _watchButtonFocus,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturedInfoWithFocus(
      BuildContext context, Channel channel, Program? program) {
    // Only handle navigation keys when no channel has focus yet
    // Once user navigates to channels, let them handle all navigation
    return Focus(
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent) {
          // Only handle hero navigation if no channel is currently focused
          final hasFocusedChannel =
              _focusedIndexBySection.values.any((index) => index >= 0);
          if (!hasFocusedChannel) {
            if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
              _nextHero();
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
              _prevHero();
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
              _firstChannelFocus.requestFocus();
              return KeyEventResult.handled;
            }
          }
        }
        return KeyEventResult.ignored;
      },
      child: _buildFeaturedInfo(context, channel, program),
    );
  }

  Widget _buildHeroInfoPanel(
    BuildContext context,
    double width,
    Widget child,
  ) {
    return HeroInfoPanel(width: width, child: child);
  }

  Widget _buildHeroInfoSkeleton(
    BuildContext context,
    double width,
    Size screenSize,
  ) {
    return HeroInfoSkeleton(
      width: width,
      padding: EdgeInsets.symmetric(vertical: context.spacingSm()),
    );
  }

  Widget _buildChannelLogo(BuildContext context, Channel channel) {
    if (channel.logoUrl == null || channel.logoUrl!.isEmpty) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      height: 48,
      width: 72,
      child: Center(
        child: Builder(builder: (context) {
          final url = normalizeImageUrl(channel.logoUrl!);
          final isSvg = url.toLowerCase().endsWith('.svg') ||
              url.toLowerCase().contains('.svg?');
          if (isSvg) {
            return SvgPicture.network(
              url,
              // Removed fixed width/height to let it fill available space
              fit: BoxFit.contain,
              headers: HttpClientService().imageHeaders,
              placeholderBuilder: (_) => const SizedBox.shrink(),
              // onPictureError handler to avoid crashing on bad svg
              clipBehavior: Clip.hardEdge,
            );
          }

          final provider = LogoImageCache.providerFor(
            url,
            headers: HttpClientService().imageHeaders,
          );
          return Image(
            image: provider,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
            frameBuilder: (context, child, frame, wasSync) {
              if (wasSync || frame != null) return child;
              return const SizedBox.shrink();
            },
            errorBuilder: (context, error, stackTrace) {
              ImageLoadProbe.recordFailure(url, 'channel_logo', error);
              return const SizedBox.shrink();
            },
          );
        }),
      ),
    );
  }

  String? _getChannelCardImage(
    Program? program,
    Channel? channel,
    bool allowPrefetch, {
    bool highPriority = false,
  }) {
    // Prefer program artwork when it's not a poster/portrait image.
    if (program != null) {
      final cached =
          _normalizeArtworkUrl(_programArtwork[program.id], isHero: false);
      if (cached != null && cached.isNotEmpty) {
        if (_isValidProgramArtwork(
          cached,
          channel!,
          programTitle: program.title,
          source: 'cached',
        )) {
          final normalized = normalizeImageUrl(cached);
          _logArtworkDecision(
            'LiveTV artwork: card source=cached program="${program.title}" url=$normalized',
          );
          return normalized;
        }
      }

      final byTitle = _normalizeArtworkUrl(
        _getProgramArtworkByTitle(program, channel),
        isHero: false,
      );
      if (byTitle != null && byTitle.isNotEmpty) {
        if (_isValidProgramArtwork(
          byTitle,
          channel!,
          programTitle: program.title,
          source: 'title_cache',
        )) {
          final normalized = normalizeImageUrl(byTitle);
          _logArtworkDecision(
            'LiveTV artwork: card source=title_cache program="${program.title}" url=$normalized',
          );
          return normalized;
        }
      }

      // Side-effect free artwork fetching check
      if ((_tmdbEnabled ||
              _fanartEnabled ||
              _sportsDbEnabled ||
              _tvdbEnabled) &&
          allowPrefetch &&
          _shouldAttemptArtworkByTitle(program, channel) &&
          (!_programArtwork.containsKey(program.id) ||
              _shouldRetryArtwork(program.id))) {
        // Schedule fetch for after build to avoid side effects during build
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          _setProgramArtwork(program.id, '');
          _enqueueArtwork(program, highPriority: highPriority);
        });
      }

      // Fall back to EPG-provided art while services are resolving.
      final programImage =
          _normalizeArtworkUrl(program.imageUrl, isHero: false);
      if (_isValidProgramArtwork(
        programImage,
        channel!,
        programTitle: program.title,
        source: 'epg',
      )) {
        final normalized = normalizeImageUrl(programImage!);
        _logArtworkDecision(
          'LiveTV artwork: card source=epg program="${program.title}" url=$normalized',
        );
        return normalized;
      }
    }

    return null;
  }

  bool _isLikelyPosterUrl(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();
    
    // Explicit keywords in path or query
    if (lower.contains('/poster') ||
        lower.contains('/portrait') ||
        lower.contains('/cover') ||
        lower.contains('/thumb') ||
        lower.contains('/logo') ||
        lower.contains('type=poster') ||
        lower.contains('format=portrait')) {
      return true;
    }

    // TMDB poster/logo sizes
    if (lower.contains('tmdb.org') &&
        (lower.contains('/w92/') ||
         lower.contains('/w154/') ||
         lower.contains('/w185/') ||
         lower.contains('/w342/') ||
         lower.contains('/w500/') ||
         lower.contains('/w780/'))) {
      return true;
    }

    // TVDB poster paths
    if (lower.contains('artworks.thetvdb.com') &&
        lower.contains('/banners/posters/')) {
      return true;
    }

    // Common file naming patterns
    if (lower.endsWith('_poster.jpg') ||
        lower.endsWith('_poster.png') ||
        lower.endsWith('_cover.jpg') ||
        lower.endsWith('_cover.png')) {
      return true;
    }

    return false;
  }

  bool _isLikelyChannelLogoUrl(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();
    if (lower.contains('/logos/')) return true;
    if (lower.contains('iptvboss.pro') &&
        (lower.contains('/logo') || lower.contains('/logos/'))) {
      return true;
    }
    if (lower.contains('logo.') || lower.contains('/logo/')) {
      return true;
    }
    return false;
  }

  bool _isValidProgramArtwork(
    String? url,
    Channel channel, {
    String? programTitle,
    String? source,
  }) {
    if (url == null || url.isEmpty) return false;
    if (_isLikelyChannelLogoUrl(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_channel_logo_hint',
      );
      return false;
    }
    // Allow poster/portrait artwork; UI will render it with adaptive layouts.
    if (_isLikelyPosterUrl(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=allow_poster',
      );
    }
    // Avoid title logos (clearart) for backgrounds.
    if (_isLikelyTitleLogoUrl(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_title_logo',
      );
      return false;
    }
    final channelLogo = channel.logoUrl;
    if (channelLogo != null && channelLogo == url) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_channel_logo',
      );
      return false;
    }
    if (_matchesChannelLogo(url, channel)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_channel_logo_match',
      );
      return false;
    }
    // Block small images that would look bad when scaled up
    if (_isLikelySmallImage(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_small',
      );
      return false;
    }
    return true;
  }

  bool _isValidTitleLogo(String? url, Channel channel) {
    if (url == null || url.isEmpty) return false;
    final channelLogo = channel.logoUrl;
    if (channelLogo != null && channelLogo == url) {
      return false;
    }
    if (_matchesChannelLogo(url, channel)) {
      return false;
    }
    return true;
  }

  bool _isLikelyTitleLogoUrl(String url) {
    final lower = url.toLowerCase();

    if (lower.contains('/clearlogo/') ||
        lower.contains('/logo/') ||
        lower.contains('/logotype/') ||
        lower.contains('/titlecard/')) {
      return true;
    }

    return lower.endsWith('.svg');
  }

  bool _isLikelySmallImage(String url) {
    final lower = url.toLowerCase();
    
    // Check for small size indicators in URL
    if (lower.contains('_small') ||
        lower.contains('_thumb') ||
        lower.contains('_icon') ||
        lower.contains('/small/') ||
        lower.contains('/thumb/') ||
        lower.contains('/icon/')) {
      return true;
    }
    
    // Check for specific small dimensions in URL
    final dimensionPattern = RegExp(r'[_/](\d+)x(\d+)[_/.]');
    final match = dimensionPattern.firstMatch(lower);
    if (match != null) {
      final width = int.tryParse(match.group(1) ?? '') ?? 0;
      final height = int.tryParse(match.group(2) ?? '') ?? 0;
      // Block images smaller than 400x300
      if (width > 0 && height > 0 && (width < 400 || height < 300)) {
        return true;
      }
    }
    
    return false;
  }

  bool _acceptArtworkUrl(
    String? url, {
    required bool preferLandscape,
    String? programTitle,
    String? source,
  }) {
    if (url == null || url.isEmpty) return false;
    if (_isLikelyTitleLogoUrl(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_title_logo',
      );
      return false;
    }
    if (_isLikelySmallImage(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_small',
      );
      return false;
    }
    if (preferLandscape && _isLikelyPosterUrl(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=skip_poster_prefer_landscape',
      );
      return false;
    }
    return true;
  }

  String? _resolveProgramTitleLogo(Program? program, Channel channel) {
    if (program == null) return null;

    // Check TMDB title logo cache first
    final cacheKey = program.id;
    final cachedUrl = _programTitleLogos[cacheKey];
    if (_isValidTitleLogo(cachedUrl, channel) &&
        _isLikelyTitleLogoUrl(cachedUrl!)) {
      return cachedUrl;
    }

    // If not cached, try EPG-provided logo
    final url = program.imageUrl;
    if (url != null &&
        url.isNotEmpty &&
        _isValidTitleLogo(url, channel) &&
        _isLikelyTitleLogoUrl(url)) {
      return url;
    }

    // Trigger async fetch if not already requested
    if ((_tmdbEnabled || _fanartEnabled || _sportsDbEnabled) &&
        !_titleLogoRequests.contains(cacheKey)) {
      _titleLogoRequests.add(cacheKey);
      unawaited(_fetchTitleLogo(program, channel));
    }

    return null;
  }

  bool _matchesChannelLogo(String url, Channel channel) {
    final channelLogo = channel.logoUrl;
    final normalizedChannelLogo = _normalizeUrl(channelLogo);
    if (normalizedChannelLogo.isEmpty) return false;
    return _normalizeUrl(url) == normalizedChannelLogo;
  }

  String _normalizeUrl(String? url) {
    if (url == null || url.isEmpty) return '';
    try {
      final uri = Uri.parse(url);
      final host = uri.host.toLowerCase();
      final path = uri.path.replaceAll(RegExp(r'/+$'), '').toLowerCase();
      if (host.isEmpty) return path;
      return '$host$path';
    } catch (_) {
      return url.toLowerCase();
    }
  }

  bool _isExplicitBackdropUrl(String url) {
    final lower = url.toLowerCase();
    return lower.contains('backdrop') ||
        lower.contains('landscape') ||
        lower.contains('fanart') ||
        lower.contains('/bg/');
  }

  String _applyTmdbSize(String url, String size) {
    try {
      final uri = Uri.parse(url);
      if (!uri.host.contains('image.tmdb.org')) return url;
      final segments = uri.pathSegments.toList();
      if (segments.length >= 3 && segments[0] == 't' && segments[1] == 'p') {
        segments[2] = size;
        return uri.replace(pathSegments: segments).toString();
      }
    } catch (_) {}
    return url;
  }

  String _heroSizeForWidth(double? targetWidth) {
    if (MemoryManager.isLowMemory) {
      return 'w1280';
    }
    if (targetWidth == null) {
      return 'w1280';
    }
    if (targetWidth >= 1800) {
      return 'w1920';
    }
    if (targetWidth >= 1200) {
      return 'w1280';
    }
    return 'w780';
  }

  String? _normalizeArtworkUrl(String? url,
      {bool isHero = false, double? targetWidth}) {
    if (url == null || url.isEmpty) return url;
    final size = isHero ? _heroSizeForWidth(targetWidth) : 'w780';
    return _applyTmdbSize(url, size);
  }

  void _ensureHeroAspectRatio(String url) {
    if (url.isEmpty) return;
    if (_heroAspectRatios.containsKey(url)) return;
    if (_heroAspectRatioInFlight.contains(url)) return;
    _heroAspectRatioInFlight.add(url);
    final provider = CachedNetworkImageProvider(
      url,
      headers: HttpClientService().imageHeaders,
    );
    final stream = provider.resolve(const ImageConfiguration());
    late ImageStreamListener listener;
    listener = ImageStreamListener((image, _) {
      final width = image.image.width.toDouble();
      final height = image.image.height.toDouble();
      if (width > 0 && height > 0 && mounted) {
        setState(() {
          _heroImageSizes[url] = Size(width, height);
          _heroAspectRatios[url] = width / height;
        });
      }
      _heroAspectRatioInFlight.remove(url);
      stream.removeListener(listener);
    }, onError: (_, __) {
      _heroAspectRatioInFlight.remove(url);
      stream.removeListener(listener);
    });
    stream.addListener(listener);
  }

  bool _isHighResHeroImage(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();
    if (lower.contains('image.tmdb.org')) {
      if (lower.contains('/original/') ||
          lower.contains('/w1920/') ||
          lower.contains('/w1280/')) {
        return true;
      }
    }
    final size = _heroImageSizes[url];
    if (size != null) {
      return size.width >= 1200 || size.height >= 720;
    }
    _ensureHeroAspectRatio(url);
    return false;
  }

  int _programArtworkEntryLimit() {
    return MemoryManager.isLowMemory ? 60 : _maxProgramArtworkEntries;
  }

  int _programArtworkTitleLimit() {
    return MemoryManager.isLowMemory ? 60 : _maxProgramArtworkTitleEntries;
  }

  int _programArtworkNegativeLimit() {
    return MemoryManager.isLowMemory ? 60 : _maxProgramArtworkNegativeEntries;
  }

  int _programTitleLogoLimit() {
    return MemoryManager.isLowMemory ? 30 : _maxProgramTitleLogoEntries;
  }

  void _registerProgramArtworkEntry(String key, String value) {
    _programArtwork[key] = value;
    _programArtworkOrder.remove(key);
    _programArtworkOrder.addLast(key);
    while (_programArtworkOrder.length > _programArtworkEntryLimit()) {
      final removed = _programArtworkOrder.removeFirst();
      _programArtwork.remove(removed);
      _programChannelLookup.remove(removed);
    }
  }

  void _registerProgramArtworkTitle(String key, String value) {
    _programArtworkByTitle[key] = value;
    _programArtworkTitleOrder.remove(key);
    _programArtworkTitleOrder.addLast(key);
    while (_programArtworkTitleOrder.length > _programArtworkTitleLimit()) {
      final removed = _programArtworkTitleOrder.removeFirst();
      _programArtworkByTitle.remove(removed);
    }
    _scheduleProgramArtworkTitleSave();
  }

  void _registerProgramArtworkNegativeTitle(String key, DateTime until) {
    _programArtworkNegativeByTitle[key] = until;
    _programArtworkNegativeTitleOrder.remove(key);
    _programArtworkNegativeTitleOrder.addLast(key);
    while (_programArtworkNegativeTitleOrder.length >
        _programArtworkNegativeLimit()) {
      final removed = _programArtworkNegativeTitleOrder.removeFirst();
      _programArtworkNegativeByTitle.remove(removed);
    }
    _scheduleProgramArtworkNegativeSave();
  }

  void _setProgramArtwork(String key, String value) {
    if (mounted) {
      setState(() => _registerProgramArtworkEntry(key, value));
    } else {
      _registerProgramArtworkEntry(key, value);
    }
  }

  String _titleCacheKey(Program program, [Channel? channel]) {
    final base = normalizeForFilter(_canonicalArtworkTitle(program.title));
    final channelForKey = channel ?? _programChannelLookup[program.id];
    if (channelForKey == null) return base;
    final isNews = EPGMatchingUtils.isLikelyNewsTitle(program.title);
    if (!_isGenericTitle(base) && !isNews) {
      return base;
    }
    final channelId = channelForKey.tvgId ?? channelForKey.id;
    if (channelId.isNotEmpty) {
      return '$base|${normalizeForFilter(channelId)}';
    }
    final hintSource = (channelForKey.groupTitle != null &&
            channelForKey.groupTitle!.trim().isNotEmpty)
        ? channelForKey.groupTitle!
        : channelForKey.name;
    final hint = normalizeForFilter(hintSource);
    if (hint.isEmpty) return base;
    return '$base|$hint';
  }

  String _canonicalArtworkTitle(String title) {
    var normalized = title;
    normalized = normalized.replaceAll(RegExp(r'\s*[-:]\s*'), ' ');
    normalized = normalized.replaceAll(RegExp(r'[\[\(\{].*?[\]\)\}]'), ' ');
    normalized = normalized.replaceAll(
        RegExp(r'\bs\d{1,2}e\d{1,2}\b', caseSensitive: false), '');
    normalized = normalized.replaceAll(
        RegExp(r'\bseason\s+\d+\b', caseSensitive: false), '');
    normalized = normalized.replaceAll(
        RegExp(r'\bepisode\s+\d+\b', caseSensitive: false), '');
    normalized = normalized.replaceAll(
        RegExp(r'\bpart\s+\d+\b', caseSensitive: false), '');
    normalized = normalized.replaceAll(
        RegExp(r'\b(\d+)(st|nd|rd|th)\s+hour\b', caseSensitive: false), '');
    normalized = normalized.replaceAll(
        RegExp(r'\b(\d+)\s*(st|nd|rd|th)?\s*hour\b', caseSensitive: false), '');
    normalized =
        normalized.replaceAll(RegExp(r'\s*[-:]\s*(19|20)\d{2}\s*$'), '');
    normalized = normalized
        .replaceAll(RegExp(r'\s*[\(\[]?(19|20)\d{2}[\)\]]?\s*$'), '');
    normalized = normalized.replaceAll(RegExp(r'\s+'), ' ').trim();
    return normalized.isEmpty ? title : normalized;
  }

  String _normalizeArtworkVariant(String title) {
    var normalized = title;
    normalized = normalized.replaceAll('&', ' and ');
    normalized = normalized.replaceAll(RegExp(r'[^\w\s]'), ' ');
    normalized = normalized.replaceAll(
        RegExp(r'\b(tv|hd|fhd|uhd|4k|channel|network)\b',
            caseSensitive: false),
        '');
    normalized = normalized.replaceAll(RegExp(r'\s+'), ' ').trim();
    return normalized;
  }

  bool _isGenericTitle(String title) {
    final normalized = normalizeForFilter(title);
    const generic = <String>{
      'news',
      'live',
      'sports',
      'sport',
      'movie',
      'paidprogramming',
      'homeshopping',
      'episode',
      'program',
      'show',
      'channel',
      'match',
      'game',
      'event',
      'coverage',
      'highlights',
      'highlights show',
    };
    return normalized.isEmpty ||
        normalized.length <= 3 ||
        generic.contains(normalized);
  }

  String _cleanChannelNameForQuery(String name) {
    var cleaned = name;
    cleaned = cleaned.replaceAll(RegExp(r'\s*[-:|]\s*'), ' ');
    cleaned = cleaned.replaceAll(
        RegExp(r'\b(hd|fhd|uhd|4k|sd|1080p|720p)\b', caseSensitive: false), '');
    cleaned = cleaned.replaceAll(
        RegExp(r'\b(tv|channel|network)\b', caseSensitive: false), '');
    cleaned = cleaned.replaceAll(RegExp(r'\s+'), ' ').trim();
    return cleaned;
  }

  List<String> _buildArtworkQueryTitles(Program program, Channel? channel) {
    final original = program.title.trim();
    final canonical = _canonicalArtworkTitle(original).trim();
    final isNews = EPGMatchingUtils.isLikelyNewsTitle(canonical);
    final normalizedLookup = EPGMatchingUtils.normalizeTitleForLookup(
      canonical,
      aggressiveForNews: isNews,
    );
    final cacheKey = _titleCacheKey(program, channel);
    final cached = _artworkQueryTitleCache[cacheKey];
    if (cached != null && cached.isNotEmpty) {
      return cached;
    }
    final titles = <String>[];
    void add(String value) {
      if (value.isEmpty || titles.contains(value)) return;
      titles.add(value);
    }
    void addVariant(String value) {
      if (value.isEmpty) return;
      add(value);
      final normalized = _normalizeArtworkVariant(value);
      if (normalized.isNotEmpty && normalized != value) {
        add(normalized);
      }
      if (value.contains(':')) {
        final primary = value.split(':').first.trim();
        if (primary.isNotEmpty && primary != value) {
          add(primary);
          final normalizedPrimary = _normalizeArtworkVariant(primary);
          if (normalizedPrimary.isNotEmpty && normalizedPrimary != primary) {
            add(normalizedPrimary);
          }
        }
      }
    }

    final channelName =
        channel == null ? '' : _cleanChannelNameForQuery(channel.name);
    final groupTitle = channel == null
        ? ''
        : _cleanChannelNameForQuery(channel.groupTitle ?? '');
    if ((_isGenericTitle(canonical) || isNews) && channelName.isNotEmpty) {
      add('$canonical $channelName');
    }
    if ((_isGenericTitle(canonical) || isNews) && groupTitle.isNotEmpty) {
      add('$canonical $groupTitle');
    }
    if ((_isGenericTitle(canonical) || isNews) &&
        channelName.isNotEmpty &&
        groupTitle.isNotEmpty) {
      add('$canonical $channelName $groupTitle');
    }
    addVariant(canonical);
    if (normalizedLookup != canonical) {
      addVariant(normalizedLookup);
    }
    if (canonical != original) addVariant(original);
    if ((_isGenericTitle(canonical) || isNews) && channelName.isNotEmpty) {
      add(channelName);
    }
    if ((_isGenericTitle(canonical) || isNews) && groupTitle.isNotEmpty) {
      add(groupTitle);
    }
    if (canonical.length <= 6 && channelName.isNotEmpty) {
      add(channelName);
    }
    if (canonical.length <= 6 && groupTitle.isNotEmpty) {
      add(groupTitle);
    }
    // REMOVED: Truncated title variants (3-5 words) causing false positives/negatives for specific movies
    // We now rely on the full canonical title, original title, and channel-name appended variants.
    
    if (groupTitle.isNotEmpty) {
      final lowerGroup = groupTitle.toLowerCase();
      if (lowerGroup.contains('sports')) {
        addVariant('$canonical sports');
      }
      if (lowerGroup.contains('news')) {
        addVariant('$canonical news');
      }
      if (lowerGroup.contains('kids') || lowerGroup.contains('child')) {
        addVariant('$canonical kids');
      }
    }
    if (cacheKey.isNotEmpty) {
      _artworkQueryTitleCache[cacheKey] = List<String>.from(titles);
    }
    return titles;
  }

  String? _getProgramArtworkByTitle(Program program, [Channel? channel]) {
    return _programArtworkByTitle[_titleCacheKey(program, channel)];
  }

  void _setProgramArtworkByTitle(
    Program program,
    String value, [
    Channel? channel,
  ]) {
    if (value.isEmpty) return;
    _registerProgramArtworkTitle(_titleCacheKey(program, channel), value);
  }

  bool _shouldAttemptArtworkByTitle(Program program, [Channel? channel]) {
    final key = _titleCacheKey(program, channel);
    final until = _programArtworkNegativeByTitle[key];
    if (until == null) return true;
    if (DateTime.now().isAfter(until)) {
      _programArtworkNegativeByTitle.remove(key);
      _programArtworkNegativeTitleOrder.remove(key);
      return true;
    }
    return false;
  }

  void _markArtworkNoMatch(Program program, [Channel? channel]) {
    final key = _titleCacheKey(program, channel);
    _registerProgramArtworkNegativeTitle(
      key,
      DateTime.now().add(_artworkNegativeTtl),
    );
  }

  void _clearArtworkNoMatch(Program program, [Channel? channel]) {
    final key = _titleCacheKey(program, channel);
    _programArtworkNegativeByTitle.remove(key);
    _programArtworkNegativeTitleOrder.remove(key);
    _scheduleProgramArtworkNegativeSave();
  }

  Future<void> _loadProgramArtworkTitleCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_programArtworkTitleCacheKey);
      if (raw == null || raw.isEmpty) return;
      final decoded = jsonDecode(raw);
      if (decoded is! Map<String, dynamic>) return;
      _programArtworkByTitle.clear();
      _programArtworkTitleOrder.clear();
      decoded.forEach((key, value) {
        if (value is String && value.isNotEmpty) {
          _programArtworkByTitle[key] = value;
          _programArtworkTitleOrder.addLast(key);
        }
      });
      if (mounted) {
        setState(() {});
      }
    } catch (_) {
      // Ignore cache load errors to avoid impacting startup.
    }
  }

  Future<void> _loadProgramArtworkNegativeCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final raw = prefs.getString(_programArtworkNegativeCacheKey);
      if (raw == null || raw.isEmpty) return;
      final decoded = jsonDecode(raw);
      if (decoded is! Map<String, dynamic>) return;
      _programArtworkNegativeByTitle.clear();
      _programArtworkNegativeTitleOrder.clear();
      final now = DateTime.now();
      decoded.forEach((key, value) {
        if (value is int) {
          final until = DateTime.fromMillisecondsSinceEpoch(value);
          if (until.isAfter(now)) {
            _programArtworkNegativeByTitle[key] = until;
            _programArtworkNegativeTitleOrder.addLast(key);
          }
        }
      });
    } catch (_) {
      // Ignore cache load errors to avoid impacting startup.
    }
  }

  void _scheduleProgramArtworkTitleSave() {
    _artworkTitleSaveDebounce?.cancel();
    _artworkTitleSaveDebounce =
        Timer(const Duration(seconds: 2), _saveProgramArtworkTitleCache);
  }

  void _scheduleProgramArtworkNegativeSave() {
    _artworkNegativeSaveDebounce?.cancel();
    _artworkNegativeSaveDebounce =
        Timer(const Duration(seconds: 2), _saveProgramArtworkNegativeCache);
  }

  void _scheduleLiveTvSnapshotSave() {
    _snapshotSaveDebounce?.cancel();
    _snapshotSaveDebounce =
        Timer(const Duration(seconds: 3), _saveLiveTvSnapshot);
  }

  Future<void> _saveProgramArtworkTitleCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final ordered = <String, String>{};
      for (final key in _programArtworkTitleOrder) {
        final value = _programArtworkByTitle[key];
        if (value != null && value.isNotEmpty) {
          ordered[key] = value;
        }
      }
      await prefs.setString(
        _programArtworkTitleCacheKey,
        jsonEncode(ordered),
      );
    } catch (_) {
      // Best-effort persistence only.
    }
  }

  Future<void> _saveProgramArtworkNegativeCache() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final ordered = <String, int>{};
      for (final key in _programArtworkNegativeTitleOrder) {
        final value = _programArtworkNegativeByTitle[key];
        if (value != null) {
          ordered[key] = value.millisecondsSinceEpoch;
        }
      }
      await prefs.setString(
        _programArtworkNegativeCacheKey,
        jsonEncode(ordered),
      );
    } catch (_) {
      // Best-effort persistence only.
    }
  }

  void _registerProgramTitleLogoEntry(String key, String value) {
    _programTitleLogos[key] = value;
    _programTitleLogoOrder.remove(key);
    _programTitleLogoOrder.addLast(key);
    while (_programTitleLogoOrder.length > _programTitleLogoLimit()) {
      final removed = _programTitleLogoOrder.removeFirst();
      _programTitleLogos.remove(removed);
    }
  }

  void _setProgramTitleLogo(String key, String value) {
    if (mounted) {
      setState(() => _registerProgramTitleLogoEntry(key, value));
    } else {
      _registerProgramTitleLogoEntry(key, value);
    }
  }

  void _trackCachedCategory(String category) {
    if (_categoryChannelCache.containsKey(category)) {
      _categoryCacheOrder.remove(category);
      _categoryCacheOrder.addLast(category);
    }
    while (_categoryCacheOrder.length > _maxCachedCategories) {
      final oldest = _categoryCacheOrder.removeFirst();
      _categoryChannelCache.remove(oldest);
    }
  }

  void _enqueueArtwork(Program program, {bool highPriority = false}) {
    if (_pauseArtworkFetching || _suspendArtworkCaches) return;
    if (_queuedArtworkIds.contains(program.id)) return;
    _queuedArtworkIds.add(program.id);
    if (highPriority) {
      _artworkQueueHigh.add(program);
    } else {
      _artworkQueueLow.add(program);
    }
    _scheduleArtworkDrain();
  }

  Future<void> _fetchTitleLogo(Program program, Channel channel) async {
    final cacheKey = program.id;
    try {
      String? logo;

      // Check if it's a sports program
      final isSports = _isSportsProgram(program, channel);

      if (isSports) {
        // Sports: SportRadar -> TheSportsDB -> TMDB -> Fanart
        logo = await _fetchSportsLogo(program);
      } else {
        // Regular: TMDB -> Fanart
        logo = await _fetchRegularLogo(program);
      }

      if (_matchesChannelLogo(logo ?? '', channel)) {
        logo = '';
      }
      final isValid = _isValidTitleLogo(logo, channel);
      final stored = isValid ? (logo ?? '') : '';
      _setProgramTitleLogo(cacheKey, stored);
    } catch (e) {
      debugLog('Error fetching title logo for "${program.title}": $e');
      _setProgramTitleLogo(cacheKey, '');
    } finally {
      _titleLogoRequests.remove(cacheKey);
    }
  }

  Future<String?> _fetchSportsLogo(Program program) async {
    if (!_isSportsProgram(program)) {
      return _fetchRegularLogo(program);
    }
    const timeout = Duration(seconds: 5);
    final title = program.title;
    // Try SportRadar first (if quota available)
    try {
      final sportRadarLogo =
          await SportradarService.getHeroImage(title).timeout(timeout);
      if (sportRadarLogo != null && sportRadarLogo.isNotEmpty) {
        return sportRadarLogo;
      }
    } catch (e) {
      debugLog('SportRadar logo failed: $e');
    }

    // Fallback to TheSportsDB
    try {
      final sportsDbLogo =
          await TheSportsDbService.getHeroImage(title).timeout(timeout);
      if (sportsDbLogo != null && sportsDbLogo.isNotEmpty) {
        return sportsDbLogo;
      }
    } catch (e) {
      debugLog('TheSportsDB logo failed: $e');
    }

    // Fallback to regular logo chain
    return await _fetchRegularLogo(program);
  }

  Future<String?> _fetchRegularLogo(Program program) async {
    // Try TMDB first
    try {
      final tmdbLogo = await TMDBService.getTitleLogo(program.title);
      if (tmdbLogo != null && tmdbLogo.isNotEmpty) {
        return tmdbLogo;
      }
    } catch (e) {
      debugLog('TMDB logo failed: $e');
    }

    // Fallback to Fanart.tv
    try {
      final fanartLogo = await _fetchFanartArtwork(program);
      if (fanartLogo != null && fanartLogo.isNotEmpty) {
        return fanartLogo;
      }
    } catch (e) {
      debugLog('Fanart logo failed: $e');
    }

    return null;
  }

  List<_HeroCandidate> _buildHeroCandidates(
    List<Channel> channels,
    IncrementalEpgService epgService,
  ) {
    if (channels.isEmpty) return [];

    final candidates = <_HeroCandidate>[];
    // Scan all channels in the preview list (usually 60) to find the best heroes
    for (final channel in channels) {
      final channelId = channel.tvgId ?? channel.id;
      final program = epgService.getCurrentProgram(
        channelId,
        channelName: channel.name,
        groupTitle: channel.groupTitle,
      );

      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.name,
      )) {
        continue;
      }

      final heroImage = _resolveHeroImage(
        program,
        channel,
        allowFetch: false,
      );

      candidates.add(_HeroCandidate(
        channel: channel,
        program: program,
        heroImage: heroImage ?? '',
      ));
    }

    // Sort: candidates with programs first for a professional look
    candidates.sort((a, b) {
      if (a.program != null && b.program == null) return -1;
      if (a.program == null && b.program != null) return 1;
      return 0;
    });

    // Limit to top 15 after sorting
    return candidates.take(15).toList();
  }

  String? _resolveHeroImage(
    Program? program,
    Channel channel, {
    bool allowFetch = true,
    bool highPriority = false,
    bool preferHighRes = false,
  }) {
    // Only return artwork if we have a specific program from the EPG
    if (program != null) {
      // 1. Try cached TMDB program artwork
      final cached =
          _normalizeArtworkUrl(_programArtwork[program.id], isHero: true);
      if (_isValidProgramArtwork(
        cached,
        channel,
        programTitle: program.title,
        source: 'hero_cached',
      )) {
        final normalized = normalizeImageUrl(cached!);
        _logArtworkDecision(
          'LiveTV artwork: hero source=cached program="${program.title}" url=$normalized',
        );
        return normalized;
      }

      // 1b. Try cached artwork by title to avoid repeated fetches across airings
      final byTitle = _normalizeArtworkUrl(
        _getProgramArtworkByTitle(program, channel),
        isHero: true,
      );
      if (_isValidProgramArtwork(
        byTitle,
        channel,
        programTitle: program.title,
        source: 'hero_title_cache',
      )) {
        final normalized = normalizeImageUrl(byTitle!);
        _logArtworkDecision(
          'LiveTV artwork: hero source=title_cache program="${program.title}" url=$normalized',
        );
        return normalized;
      }

      // 2. Trigger a fetch if any image service is enabled
      if ((_tmdbEnabled || _fanartEnabled || _sportsDbEnabled || _tvdbEnabled) &&
          allowFetch) {
        _ensureFreshProgramArtwork(
          program,
          channel,
          highPriority: highPriority,
        );
      }

      // 3. Fall back to the direct image URL provided in the EPG XML itself
      final direct = _normalizeArtworkUrl(program.imageUrl, isHero: true);
      if (_isValidProgramArtwork(
        direct,
        channel,
        programTitle: program.title,
        source: 'hero_epg',
      )) {
        final normalized = normalizeImageUrl(direct!);
        if (!preferHighRes || _isHighResHeroImage(normalized)) {
          _logArtworkDecision(
            'LiveTV artwork: hero source=epg program="${program.title}" url=$normalized',
          );
          return normalized;
        }
        _logArtworkDecision(
          'LiveTV artwork: skip low-res epg program="${program.title}" url=$normalized',
        );
      }
    }

    return null;
  }

  void _ensureFreshProgramArtwork(
    Program program,
    Channel channel, {
    bool highPriority = false,
  }) {
    if (!(_tmdbEnabled || _fanartEnabled || _sportsDbEnabled || _tvdbEnabled)) {
      return;
    }
    if (_artworkRequests.contains(program.id)) return;
    if (!_shouldAttemptArtworkByTitle(program, channel)) return;
    final existing = _programArtwork[program.id];
    if (existing != null &&
        existing.isNotEmpty &&
        _isValidProgramArtwork(
          existing,
          channel,
          programTitle: program.title,
          source: 'existing',
        )) {
      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _programChannelLookup[program.id] = channel;
      if (!_shouldAttemptArtworkByTitle(program, channel)) return;
      final current = _programArtwork[program.id];
      if (current != null &&
          current.isNotEmpty &&
          _isValidProgramArtwork(
            current,
            channel,
            programTitle: program.title,
            source: 'current',
          )) {
        return;
      }
      _setProgramArtwork(program.id, '');
      _enqueueArtwork(program, highPriority: highPriority);
    });
  }

  Future<String?> _fetchProgramArtwork(Program program) async {
    final existing = _programArtwork[program.id];
    if (_artworkRequests.contains(program.id) ||
        (existing != null && existing.isNotEmpty)) {
      return existing ?? '';
    }

    if (_suspendArtworkCaches) return '';

    if (!_shouldAttemptArtworkByTitle(
      program,
      _programChannelLookup[program.id],
    )) {
      return '';
    }

    final channel = _programChannelLookup[program.id];
    final titleKey = _titleCacheKey(program, channel);
    final cachedByTitle = _getProgramArtworkByTitle(program, channel);
    if (cachedByTitle != null && cachedByTitle.isNotEmpty) {
      _setProgramArtwork(program.id, cachedByTitle);
      return cachedByTitle;
    }

    if (titleKey.isNotEmpty) {
      final pendingByTitle = _pendingArtworkByTitle[titleKey];
      if (pendingByTitle != null) {
        return pendingByTitle;
      }
    }

    // Check for pending request
    if (_pendingArtworkRequests.containsKey(program.id)) {
      return _pendingArtworkRequests[program.id] ?? Future.value(null);
    }

    if (!_shouldAttemptArtwork(program.id)) return '';
    _artworkRequests.add(program.id);

    // Create and store the future for deduplication
    final future = _fetchArtworkWithFallback(program);
    _pendingArtworkRequests[program.id] = future;
    if (titleKey.isNotEmpty) {
      _pendingArtworkByTitle[titleKey] = future;
    }

    try {
      final result = await future;
      final normalized = _normalizeArtworkUrl(result, isHero: true);
      _setProgramArtwork(program.id, normalized ?? '');
      if (normalized != null && normalized.isNotEmpty) {
        _setProgramArtworkByTitle(
          program,
          normalized,
          channel,
        );
        _clearArtworkNoMatch(program, channel);
        _clearArtworkFailure(program.id);
      } else {
        _markArtworkNoMatch(program, channel);
      }
      return normalized ?? '';
    } finally {
      // Removing the stored future object is synchronous; don't pass it to unawaited
      await _pendingArtworkRequests.remove(program.id);
      _artworkRequests.remove(program.id);
      if (titleKey.isNotEmpty) {
        final pending = _pendingArtworkByTitle.remove(titleKey);
        if (pending != null) {
          unawaited(pending);
        }
      }
    }
  }

  Future<String?> _fetchArtworkWithFallback(Program program) async {
    final channel = _programChannelLookup[program.id];
    final isSports = _isSportsProgram(program, channel);
    return isSports
        ? await _fetchSportsImage(program, channel)
        : await _fetchRegularImage(program);
  }

  void _scheduleArtworkDrain() {
    if (_pauseArtworkFetching || _suspendArtworkCaches || _isIdle) {
      debugLog('LiveTV: Artwork drain skipped - paused=$_pauseArtworkFetching suspended=$_suspendArtworkCaches idle=$_isIdle');
      return;
    }
    _artworkThrottle ??=
        Timer(const Duration(milliseconds: 700), _drainArtworkQueue);
  }

  Future<void> _drainArtworkQueue() async {
    _artworkThrottle?.cancel();
    _artworkThrottle = null;
    if ((_artworkQueueHigh.isEmpty && _artworkQueueLow.isEmpty) ||
        !mounted ||
        _pauseArtworkFetching ||
        _suspendArtworkCaches) {
      return;
    }

    final batchSize = MemoryManager.isLowMemory ? 1 : 2;
    final batch = <Program>[];
    for (var i = 0;
        i < batchSize &&
            (_artworkQueueHigh.isNotEmpty || _artworkQueueLow.isNotEmpty);
        i++) {
      final program = _artworkQueueHigh.isNotEmpty
          ? _artworkQueueHigh.removeFirst()
          : _artworkQueueLow.removeFirst();
      _queuedArtworkIds.remove(program.id);
      batch.add(program);
    }

    final futures = batch.map((program) async {
      try {
        debugLog('LiveTV: Fetching artwork for: "${program.title}"');
        final image = await _fetchProgramArtwork(program);
        if (!mounted) return;
        if (image != null && image.isNotEmpty) {
          debugLog('LiveTV: Found artwork for "${program.title}": $image');
        } else {
          debugLog('LiveTV: No artwork found for "${program.title}"');
        }
      } catch (e) {
        debugLog('LiveTV: Error fetching artwork for "${program.title}": $e');
        _markArtworkFailure(program.id);
      }
    }).toList();
    await Future.wait(futures);

    if (_artworkQueueHigh.isNotEmpty || _artworkQueueLow.isNotEmpty) {
      _scheduleArtworkDrain();
    }
  }

  bool _isSportsProgram(Program program, [Channel? channel]) {
    return SportsClassifier.isSportsProgram(program, channel);
  }

  Future<String?> _fetchSportsImage(Program program, [Channel? channel]) async {
    if (!_isSportsProgram(program, channel)) {
      return _fetchRegularImage(program);
    }
    final landscape = await _fetchSportsImageInternal(
      program,
      channel,
      preferLandscape: true,
    );
    if (landscape != null && landscape.isNotEmpty) return landscape;
    return _fetchSportsImageInternal(
      program,
      channel,
      preferLandscape: false,
    );
  }

  Future<String?> _fetchSportsImageInternal(
    Program program,
    Channel? channel, {
    required bool preferLandscape,
  }) async {
    const timeout = Duration(seconds: 5);
    final title = program.title;
    final queryTitles = _buildArtworkQueryTitles(program, channel);
    // Try SportRadar first (if quota available)
    for (final queryTitle in queryTitles) {
      try {
        final sportRadarImage =
            await SportradarService.getHeroImage(queryTitle).timeout(timeout);
        if (_acceptArtworkUrl(
          sportRadarImage,
          preferLandscape: preferLandscape,
          programTitle: title,
          source: 'sportradar',
        )) {
          _logArtworkDecision(
            'LiveTV artwork: source=sportradar program="$title" query="$queryTitle" url=$sportRadarImage',
          );
          return sportRadarImage;
        }
      } catch (e) {
        debugLog('SportRadar failed: $e');
      }
    }

    // Fallback to TheSportsDB
    for (final queryTitle in queryTitles) {
      try {
        final sportsDbImage =
            await TheSportsDbService.getHeroImage(queryTitle).timeout(timeout);
        if (_acceptArtworkUrl(
          sportsDbImage,
          preferLandscape: preferLandscape,
          programTitle: title,
          source: 'thesportsdb',
        )) {
          _logArtworkDecision(
            'LiveTV artwork: source=thesportsdb program="$title" query="$queryTitle" url=$sportsDbImage',
          );
          return sportsDbImage;
        }
      } catch (e) {
        debugLog('TheSportsDB failed: $e');
      }
    }

    // Fallback to TVDB for broader sports coverage.
    if (_tvdbEnabled) {
      for (final queryTitle in queryTitles) {
        try {
          final tvdbImage =
              await TvdbService.getBestImage(queryTitle).timeout(timeout);
          if (_acceptArtworkUrl(
            tvdbImage,
            preferLandscape: preferLandscape,
            programTitle: title,
            source: 'tvdb_sports',
          )) {
            _logArtworkDecision(
              'LiveTV artwork: source=tvdb_sports program="$title" query="$queryTitle" url=$tvdbImage',
            );
            return tvdbImage;
          }
        } catch (e) {
          debugLog('TVDB (sports) failed: $e');
        }
      }
    }

    if (!preferLandscape) {
      _logArtworkDecision(
        'LiveTV artwork: source=none program="$title" reason=sports_no_match',
      );
    }
    return null;
  }

  Future<String?> _fetchRegularImage(Program program) async {
    final landscape = await _fetchRegularImageInternal(
      program,
      preferLandscape: true,
    );
    if (landscape != null && landscape.isNotEmpty) return landscape;
    return _fetchRegularImageInternal(
      program,
      preferLandscape: false,
    );
  }

  Future<String?> _fetchRegularImageInternal(
    Program program, {
    required bool preferLandscape,
  }) async {
    const timeout = Duration(seconds: 5);
    final channel = _programChannelLookup[program.id];
    final isNews = channel != null && _isNewsProgram(program, channel);
    final title = program.title;
    final queryTitles = _buildArtworkQueryTitles(program, channel);

    // Try TVDB first
    if (_tvdbEnabled) {
      for (final queryTitle in queryTitles) {
        try {
          final tvdbImage =
              await TvdbService.getBestImage(queryTitle).timeout(timeout);
          if (_acceptArtworkUrl(
            tvdbImage,
            preferLandscape: preferLandscape,
            programTitle: title,
            source: 'tvdb',
          )) {
            _logArtworkDecision(
              'LiveTV artwork: source=tvdb program="$title" query="$queryTitle" url=$tvdbImage',
            );
            return tvdbImage;
          }
        } catch (e) {
          debugLog('TVDB failed: $e');
        }
      }
    }

    // Fallback to TMDB
    for (final queryTitle in queryTitles) {
      try {
        if (isNews) {
          final details = await TMDBService.getBestBackdropDetails(queryTitle)
              .timeout(timeout);
          if (!_isBlacklistedNewsArtwork(details, program.title)) {
            final tmdbImage = (details?['image'] as String?)?.trim();
            if (_acceptArtworkUrl(
              tmdbImage,
              preferLandscape: preferLandscape,
              programTitle: title,
              source: 'tmdb_news',
            )) {
              _logArtworkDecision(
                'LiveTV artwork: source=tmdb_news program="$title" query="$queryTitle" url=$tmdbImage',
              );
              return tmdbImage;
            }
          } else {
            _logArtworkDecision(
              'LiveTV artwork: source=tmdb_news program="$title" query="$queryTitle" result=blacklisted',
            );
          }
        } else {
          final tmdbImage =
              await TMDBService.getBestBackdrop(queryTitle).timeout(timeout);
          if (_acceptArtworkUrl(
            tmdbImage,
            preferLandscape: preferLandscape,
            programTitle: title,
            source: 'tmdb',
          )) {
            _logArtworkDecision(
              'LiveTV artwork: source=tmdb program="$title" query="$queryTitle" url=$tmdbImage',
            );
            return tmdbImage;
          }
        }
      } catch (e) {
        debugLog('TMDB failed: $e');
      }
    }

    // Fallback to Fanart.tv
    try {
      final fanartImage = await _fetchFanartArtwork(program);
      if (_acceptArtworkUrl(
        fanartImage,
        preferLandscape: preferLandscape,
        programTitle: title,
        source: 'fanart',
      )) {
        _logArtworkDecision(
          'LiveTV artwork: source=fanart program="$title" url=$fanartImage',
        );
        return fanartImage;
      }
    } catch (e) {
      debugLog('Fanart failed: $e');
    }

    if (!preferLandscape) {
      _logArtworkDecision(
        'LiveTV artwork: source=none program="$title" reason=no_match',
      );
    }
    return null;
  }

  Future<String?> _fetchFanartArtwork(Program program) async {
    final channel = _programChannelLookup[program.id];
    final queryTitles = _buildArtworkQueryTitles(program, channel);
    for (final queryTitle in queryTitles) {
      final details = await _resolveTmdbDetails(queryTitle);
      final tmdbId = details?['tmdbId'] as int?;
      final mediaType = (details?['mediaType'] as String?)?.toLowerCase();
      if (tmdbId == null || mediaType == null) {
        continue;
      }
      return FanartService.getBackdrop(
        tmdbId,
        isTv: mediaType == 'tv',
      );
    }
    _logArtworkDecision(
      'LiveTV artwork: source=fanart program="${program.title}" result=missing_tmdb_details',
    );
    return null;
  }

  Future<Map<String, dynamic>?> _resolveTmdbDetails(String title) async {
    try {
      final tvDetails = await TMDBService.getTVDetails(title);
      if (tvDetails != null) return tvDetails;
      return await TMDBService.getMovieDetails(title);
    } catch (e) {
      debugLog('TMDB details lookup failed for "$title": $e');
      return null;
    }
  }

  void _logArtworkDecision(String message) {
    if (!_logArtworkMatches) return;
    ArtworkDiagnostics.record(message);
    debugLog(message);
  }

  bool _shouldAttemptArtwork(String key) {
    final retryAfter = _artworkRetryAfter[key];
    if (retryAfter == null) return true;
    return DateTime.now().isAfter(retryAfter);
  }

  bool _shouldRetryArtwork(String key) {
    if (!_programArtwork.containsKey(key)) return true;
    if (_programArtwork[key]?.isNotEmpty == true) return false;
    return _shouldAttemptArtwork(key);
  }

  void _markArtworkFailure(String key) {
    final count = (_artworkFailureCounts[key] ?? 0) + 1;
    _artworkFailureCounts[key] = count;
    final minutes = math.min(60, math.pow(2, count).round() * 2);
    _artworkRetryAfter[key] = DateTime.now().add(Duration(minutes: minutes));
  }

  void _clearArtworkFailure(String key) {
    _artworkFailureCounts.remove(key);
    _artworkRetryAfter.remove(key);
  }

  bool _shouldPrefetchArt(
    BuildContext context,
    String sectionKey,
    int index,
    ScrollController controller,
    double cardWidth,
    double cardGap,
    EdgeInsets padding,
    bool isFirstRow,
  ) {
    if (!_isIndexVisibleInRow(
      context,
      controller,
      index,
      cardWidth,
      cardGap,
      padding,
    )) {
      return false;
    }
    final window =
        MemoryManager.isLowMemory ? 1 : (isFirstRow ? _heroPrefetchWindow : _rowPrefetchWindow);
    final focusedIndex = _focusedIndexBySection[sectionKey];
    if (focusedIndex == null) {
      return index < window;
    }
    return (index - focusedIndex).abs() <= window;
  }

  bool _isIndexVisibleInRow(
    BuildContext context,
    ScrollController controller,
    int index,
    double cardWidth,
    double cardGap,
    EdgeInsets padding,
  ) {
    final itemWidth = cardWidth + cardGap;
    if (itemWidth <= 0) return false;

    double offset;
    double viewport;
    if (controller.hasClients) {
      final positions = controller.positions;
      if (positions.isNotEmpty) {
        final position = positions.first;
        offset = position.pixels;
        viewport = position.viewportDimension;
      } else {
        final screenWidth = MediaQuery.of(context).size.width;
        viewport = screenWidth - padding.horizontal;
        offset = 0.0;
      }
    } else {
      final screenWidth = MediaQuery.of(context).size.width;
      viewport = screenWidth - padding.horizontal;
      offset = 0.0;
    }

    if (viewport <= 0) return false;
    final startIndex = (offset / itemWidth).floor();
    final endIndex = ((offset + viewport) / itemWidth).ceil() - 1;
    return index >= startIndex && index <= endIndex;
  }

  Widget _buildChannelSection(
      BuildContext context, String title, List<Channel> channels,
      {bool isFirstRow = false, bool allowCategoryPaging = true}) {
    if (channels.isEmpty) return const SizedBox.shrink();
    final epgService = context.watch<IncrementalEpgService>();
    final filteredChannels = <Channel>[];
    final seenProgramKeys = <String>{};
    final missingIds = <String>[];
    final missingNames = <String?>[];
    for (var i = 0; i < channels.length; i++) {
      final channel = channels[i];
      final channelId = channel.tvgId ?? channel.id;
      final program = epgService.getCurrentProgram(
        channelId,
        channelName: channel.name,
        groupTitle: channel.groupTitle,
      );
      if (program == null) {
        missingIds.add(channelId);
        missingNames.add(channel.name);
        // Only skip channels without program data in the featured row (Hero section)
        // For regular rows, show the channel card with "No Information" instead of hiding it
        if (isFirstRow) {
            continue;
        }
      }

      // Removed shouldHideChannel check strictly hiding channels. 
      // We always show available channels, even if EPG is missing or failed.

      if (isFirstRow && program != null) {
        if (program.title.isNotEmpty) {
          final normalizedTitle = normalizeForFilter(program.title);
          // More aggressive deduplication: prevent any duplicate program titles
          // regardless of time slot to ensure variety in featured content
          final programTitleKey = normalizedTitle;
          if (seenProgramKeys.contains(programTitleKey)) {
            debugLog(
                'LiveTV: Filtering out duplicate program "${program.title}" from featured row');
            continue;
          }
          seenProgramKeys.add(programTitleKey);
        }
      }
      filteredChannels.add(channel);
    }
    if (missingIds.isNotEmpty) {
      unawaited(epgService.ensureChannelsLoadedBatch(
        missingIds,
        channelNames: missingNames,
      ));
    }
    if (filteredChannels.isEmpty) return const SizedBox.shrink();

    final screenWidth = MediaQuery.of(context).size.width;
    final maxCardWidth =
        screenWidth < 800 ? screenWidth / 2.8 : screenWidth / 5.5;
    final cardWidth = math.min(context.cardWidth(), maxCardWidth);
    const cardFocusScale = 1.05;
    final cardHeight = cardWidth * 0.6;
    final isMobile = screenWidth < 800;
    final focusExtra = isMobile ? 0.0 : cardHeight * (cardFocusScale - 1);
    final titleStyle = AppTypography.programTitle(context);
    final timeStyle = AppTypography.programTime(context);
    final titleHeight = (titleStyle.fontSize ?? context.tvTextSize(16)) *
        (titleStyle.height ?? 1.2);
    final timeHeight = (timeStyle.fontSize ?? context.tvTextSize(13)) *
        (timeStyle.height ?? 1.2);
    // Tighter spacing - minimal gaps between elements
    final infoSpacing = context.spacingXs() + context.spacingXs();
    final infoHeight = titleHeight + timeHeight + infoSpacing;
    // Minimal vertical padding, just enough for focus scaling
    final rowHeight =
        cardHeight + infoHeight + focusExtra * 0.5 + context.spacingXs();
    final rowInset = context.spacingSm() + AppSpacing.sidebarCollapsedWidth;

    final sectionKey = title;
    // Visible count logic moved to HorizontalChannelRow widget

    if (allowCategoryPaging) {
      final initialVisible = _initialRowVisibleCount(context, cardWidth, rowInset);
      if (filteredChannels.length <= initialVisible &&
          (_categoryHasMore[sectionKey] ?? true)) {
        _requestMoreCategoryChannels(sectionKey);
      }
    }
    final rowController = _rowScrollControllers.putIfAbsent(
      sectionKey,
      () => ScrollController(keepScrollOffset: false),
    );
    if (!_rowScrollInitialized.contains(sectionKey)) {
      _rowScrollInitialized.add(sectionKey);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        if (rowController.hasClients) {
          rowController.jumpTo(0);
        }
      });
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: rowInset, bottom: 1),
          child: Text(
            title,
            style: AppTypography.caption(context).copyWith(
              color: AppTheme.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: rowInset, bottom: 2),
          child: Container(
            height: 3,
            width: context.spacingXl(),
            decoration: BoxDecoration(
              color: AppTheme.primaryBlue.withValues(alpha: 0.35),
              borderRadius: BorderRadius.circular(999),
            ),
          ),
        ),
        SizedBox(
          height: rowHeight,
          child: HorizontalChannelRow(
            sectionKey: sectionKey,
            controller: rowController,
            itemCount: filteredChannels.length,
            cardWidth: cardWidth,
            cardGap: context.cardGap(),
            padding: EdgeInsets.only(
              left: rowInset,
              right: context.spacingLg(),
            ),
            onLoadMore: allowCategoryPaging
              ? () => _requestMoreCategoryChannels(sectionKey)
              : null,
            itemBuilder: (context, index) {
              final focusNode = _focusNodeForCard(
                sectionKey,
                filteredChannels[index],
                index,
                isFirstRow: isFirstRow,
                allowCategoryPaging: allowCategoryPaging,
              );
              final allowPrefetch = _shouldPrefetchArt(
                context,
                sectionKey,
                index,
                rowController,
                cardWidth,
                context.cardGap(),
                EdgeInsets.only(
                  left: rowInset,
                  right: context.spacingLg(),
                ),
                isFirstRow,
              );
              return _buildChannelCard(
                context,
                filteredChannels[index],
                cardWidth,
                cardHeight,
                sectionKey,
                index,
                filteredChannels.length,
                allowPrefetch,
                rowController,
                isFirstRow: isFirstRow,
                rowHeight: rowHeight,
                focusNode: focusNode,
                // onItemFocus is no longer needed for rendering optimization
                // as HorizontalChannelRow handles it internally.
                onItemFocus: null,
              );
            },
          ),
        ),
        SizedBox(height: context.spacingXs()),
      ],
    );
  }

  Widget _buildCategoryRowWidget(
    BuildContext context,
    String category,
    int index, {
    bool isFirstRow = false,
  }) {
    final notifier = _categoryRowNotifierFor(category);
    return ValueListenableBuilder<int>(
      valueListenable: notifier,
      builder: (context, _, __) {
        final channels = _categoryChannelCache[category];
        if (channels == null || channels.isEmpty) {
          _enqueueCategoryLoad(category);
          // Show a loading placeholder row instead of nothing
          return _buildCategoryRowLoading(context, category);
        }
        _prefetchEpgForRow(category, channels);
        return _buildChannelSection(
          context,
          category,
          channels,
          isFirstRow: isFirstRow,
        );
      },
    );
  }

  /// Build a skeleton placeholder row while channel data loads
  Widget _buildCategoryRowLoading(BuildContext context, String category) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxCardWidth =
        screenWidth < 800 ? screenWidth / 2.8 : screenWidth / 5.5;
    final cardWidth = math.min(context.cardWidth(), maxCardWidth);
    final cardHeight = cardWidth * 0.6;

    return Padding(
      padding: EdgeInsets.only(
        left: context.spacingSm() + AppSpacing.sidebarCollapsedWidth,
        bottom: context.spacingSm(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Category header
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              category,
              style: AppTypography.caption(context).copyWith(
                color: Colors.white.withAlpha((0.9 * 255).round()),
              ),
            ),
          ),
          // Skeleton cards row
          SizedBox(
            height: cardHeight + 40, // Card + info area
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              separatorBuilder: (_, __) => SizedBox(width: context.spacingSm()),
              itemBuilder: (context, index) {
                return Container(
                  width: cardWidth,
                  height: cardHeight,
                  decoration: BoxDecoration(
                    color: AppTheme.cardBackground.withAlpha((0.5 * 255).round()),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white24,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  double _estimateRowHeight(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxCardWidth =
        screenWidth < 800 ? screenWidth / 2.8 : screenWidth / 5.5;
    final cardWidth = math.min(context.cardWidth(), maxCardWidth);
    const cardFocusScale = 1.05;
    final cardHeight = cardWidth * 0.6;
    // On mobile, focus scale is minimal/transient, so don't reserve huge space
    final isMobile = screenWidth < 800;
    final focusExtra = isMobile ? 0.0 : cardHeight * (cardFocusScale - 1);
    final titleStyle = AppTypography.programTitle(context);
    final timeStyle = AppTypography.programTime(context);
    final titleHeight = (titleStyle.fontSize ?? context.tvTextSize(16)) *
        (titleStyle.height ?? 1.2);
    final timeHeight = (timeStyle.fontSize ?? context.tvTextSize(13)) *
        (timeStyle.height ?? 1.2);
    // Match the tighter spacing used in _buildChannelSection
    final infoSpacing = context.spacingXs() + context.spacingXs();
    final infoHeight = titleHeight + timeHeight + infoSpacing;
    // Account for category header + underline + spacers
    final captionStyle = AppTypography.caption(context);
    final captionHeight =
        (captionStyle.fontSize ?? 13.0) * (captionStyle.height ?? 1.2);
    // Header spacing structure: title bottom(2) + underline height(3) + underline bottom(8)
    const headerSpacing = 1 + 3 + 2;
    final rowBottomSpacing = context.spacingSm();

    // Total calculated height of one full row block in the list
    final cardRowHeight =
        cardHeight + infoHeight + focusExtra * 0.5 + context.spacingXs();
    return cardRowHeight + captionHeight + headerSpacing + rowBottomSpacing;
  }

  void _prefetchEpgForRow(String category, List<Channel> channels) {
    if (_epgPrefetchedRows.contains(category)) return;
    _epgPrefetchedRows.add(category);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final epgService =
          Provider.of<IncrementalEpgService>(context, listen: false);
      final channelIds = channels
          .map((c) => c.tvgId ?? c.id)
          .where((id) => id.isNotEmpty)
          .toList();
      final channelNames = channels.map((c) => c.name).toList();
      if (channelIds.isEmpty) return;
      unawaited(epgService.ensureChannelsLoadedBatch(
        channelIds,
        channelNames: channelNames,
      ));
    });
  }

  Widget _buildChannelCard(
      BuildContext context,
      Channel channel,
      double cardWidth,
      double cardHeight,
      String sectionKey,
      int index,
      int totalCount,
      bool allowPrefetch,
      ScrollController rowScrollController,
      {required bool isFirstRow,
      required double rowHeight,
      FocusNode? focusNode,
      VoidCallback? onItemFocus}) {
    return SizedBox(
      width: cardWidth,
      height: rowHeight,
      child: Focus(
        focusNode: focusNode,
        canRequestFocus: true,
        onFocusChange: (hasFocus) {
          if (hasFocus) {
            // Update focused index without triggering full screen rebuild if possible
            _focusedIndexBySection[sectionKey] = index;
            _lastFocusedCardKey = '$sectionKey|${channel.tvgId ?? channel.id}|$index';
            _scrollToHeroPeekOnFocus();
            onItemFocus?.call();
          } else if (_focusedIndexBySection[sectionKey] == index) {
            // Clear the stored focus when the card loses focus so hero navigation
            // can resume once all rows are unfocused.
            _focusedIndexBySection[sectionKey] = -1;
          }
        },
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.space) {
              _openChannelPlayer(channel);
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
              if (isFirstRow) {
                if (_scrollController.hasClients) {
                  _scrollController.animateTo(
                    0.0,
                    duration: const Duration(milliseconds: 220),
                    curve: Curves.easeOutCubic,
                  );
                }
                if (_watchButtonFocus.canRequestFocus) {
                  _watchButtonFocus.requestFocus();
                }
                return KeyEventResult.handled;
              }
              final moved = FocusScope.of(context)
                  .focusInDirection(TraversalDirection.up);
              if (!moved && _scrollController.hasClients) {
                final nextOffset = (_safeScrollOffset() - rowHeight).clamp(
                  0.0,
                  _scrollController.position.maxScrollExtent,
                );
                _scrollController.animateTo(
                  nextOffset,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeOutCubic,
                );
              }
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowLeft &&
                index == 0) {
              if (rowScrollController.hasClients &&
                  rowScrollController.offset >
                      rowScrollController.position.minScrollExtent + 1) {
                rowScrollController.animateTo(
                  rowScrollController.position.minScrollExtent,
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeOutCubic,
                );
                return KeyEventResult.handled;
              }
              // Only open sidebar if we are at the start of the list
              final moved = requestNavigationFocus();
              return moved ? KeyEventResult.handled : KeyEventResult.ignored;
            }
            if (event.logicalKey == LogicalKeyboardKey.contextMenu ||
                event.logicalKey == LogicalKeyboardKey.info ||
                event.logicalKey == LogicalKeyboardKey.keyM) {
              _showEpgChannelSelector(channel);
              return KeyEventResult.handled;
            }
          }
          return KeyEventResult.ignored;
        },
        child: Consumer<IncrementalEpgService>(
          builder: (context, epgService, _) {
            final isFocused = Focus.of(context).hasFocus;

            // Optimization: Get current program only when needed
            // Prevents freeze: Skip expensive lookups if EPG is actively loading/parsing
            final allowEpgLookup = !epgService.isLoading &&
                (!epgService.isParsing || epgService.hasUsableData);
            final program = allowEpgLookup
                ? epgService.getCurrentProgram(
                    channel.tvgId ?? channel.id,
                    channelName: channel.name,
                    groupTitle: channel.groupTitle,
                  )
                : null;

            if (isFocused) {
              unawaited(epgService.ensureChannelLoaded(
                channel.tvgId ?? channel.id,
                channelName: channel.name,
              ));
            }

            return GestureDetector(
              onTap: () => _openChannelPlayer(channel),
              onLongPress: () => _showEpgChannelSelector(channel),
              child: AnimatedScale(
                scale: isFocused ? 1.05 : 1.0,
                duration: TVFocusStyle.animationDuration,
                curve: TVFocusStyle.animationCurve,
                alignment: Alignment.topCenter,
                child: _buildCardContent(
                  context,
                  channel,
                  program,
                  isFocused,
                  cardWidth,
                  cardHeight,
                  allowPrefetch,
                  isFirstRow: isFirstRow,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildCardContent(
    BuildContext context,
    Channel channel,
    Program? currentProgram,
    bool isFocused,
    double cardWidth,
    double cardHeight,
    bool allowPrefetch,
    {required bool isFirstRow}) {
    final progress = currentProgram?.progressPercentage ?? 0.0;
    final imageUrl = _getChannelCardImage(
      currentProgram,
      channel,
      allowPrefetch,
      highPriority: isFirstRow,
    );
    final normalizedImageUrl =
        imageUrl == null ? null : normalizeImageUrl(imageUrl);
    final isLogoBackdrop = normalizedImageUrl != null &&
        _matchesChannelLogo(normalizedImageUrl, channel);
    final hasChannelLogo =
        channel.logoUrl != null && channel.logoUrl!.isNotEmpty;
    final hideCornerLogo =
        isLogoBackdrop || (normalizedImageUrl == null && hasChannelLogo);
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final cacheWidth = math.min(800, (cardWidth * dpr).round());
    final cacheHeight = math.min(800, (cardHeight * dpr).round());
    final logoCacheWidth = (150 * dpr).round();
    final logoCacheHeight = (80 * dpr).round();
    final fallback = _buildChannelCardFallback(currentProgram, channel);

    // ENHANCEMENT: Ensure we have sufficient data to display a quality card
    final hasMinimumData = currentProgram != null &&
        currentProgram.title.isNotEmpty &&
        (channel.logoUrl?.isNotEmpty == true || imageUrl != null);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: TVFocusStyle.animationDuration,
          curve: TVFocusStyle.animationCurve,
          width: cardWidth,
          height: cardHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppTheme.cardBackground,
            border: Border.all(
              color: isFocused
                  ? AppTheme.focusBorder
                  : Colors.white.withValues(alpha: 0.08),
              width: isFocused ? 3 : 1,
            ),
            boxShadow: isFocused
                ? TVFocusStyle.focusedShadow
                : [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.35),
                      blurRadius: 14,
                      offset: const Offset(0, 8),
                    ),
                  ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                if (normalizedImageUrl != null)
                  Positioned.fill(
                    child: _buildAdaptiveImage(
                      context,
                      normalizedImageUrl,
                      BoxFit.cover,
                      cacheWidth,
                      cacheHeight,
                      fallback,
                    ),
                  )
                else
                  Positioned.fill(child: fallback),
                if (!hideCornerLogo)
                  Positioned(
                    top: 6,
                    left: 6,
                    child: SizedBox(
                      width: 40,
                      height: 24,
                      child: _buildChannelLogoWidget(
                        channel,
                        currentProgram,
                        logoCacheWidth,
                        logoCacheHeight,
                      ),
                    ),
                  ),
                // Data quality indicators
                if (currentProgram == null)
                  const Positioned(
                    top: 8,
                    right: 8,
                    child: BrandBadge.noEpg(fontSize: 8),
                  )
                else if (!hasMinimumData)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange.withValues(alpha: 0.8),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'Limited Data',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                else
                  const Positioned(
                    top: 8,
                    right: 8,
                    child: BrandBadge.live(fontSize: 8),
                  ),

                // Progress bar overlay at bottom
                if (currentProgram != null)
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        child: LinearProgressIndicator(
                          value: progress,
                          backgroundColor: Colors.black.withValues(alpha: 0.4),
                          color: AppTheme.primaryBlue,
                          minHeight: 4,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        // Program info with quality check
        if (currentProgram != null && currentProgram.title.isNotEmpty) ...[
          const SizedBox(height: 4),
          SizedBox(
            width: cardWidth,
            child: Text(
              currentProgram.title,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.9),
                fontSize: 11,
                fontWeight: FontWeight.w500,
                height: 1.1,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            width: cardWidth,
            child: Text(
              '${_formatTime(currentProgram.startTime)} - ${_formatTime(currentProgram.endTime)}',
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.6),
                fontSize: 10,
                height: 1.1,
              ),
            ),
          ),
        ] else if (channel.name.isNotEmpty) ...[
          const SizedBox(height: 4),
          SizedBox(
            width: cardWidth,
            child: Text(
              channel.name,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.9),
                fontSize: 11,
                fontWeight: FontWeight.w500,
                height: 1.1,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            width: cardWidth,
            child: const Text(
              'No program data',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                height: 1.1,
              ),
            ),
          ),
        ],
      ],
    );
  }

  void _showEpgChannelSelector(Channel channel) {
    if (!mounted) return;
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    final epgChannelIds = epgService.getEpgChannelIds();

    if (epgChannelIds.isEmpty) {
      showAppSnackBar(
          context,
          const SnackBar(
            content: Text(
                'No EPG data loaded. Please configure EPG URL in Settings.'),
            backgroundColor: AppTheme.accentRed,
          ));
      return;
    }

    String searchQuery = '';
    final searchController = TextEditingController();

    final suggestions = epgService.getSuggestedMatches(
      channel.tvgId ?? channel.id,
      channel.name,
      limit: 15,
    );

    unawaited(showDialog(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (context, setDialogState) {
          List<String> filteredIds;
          final showingSuggestions = searchQuery.isEmpty;

          if (searchQuery.isEmpty) {
            final suggestedIds = suggestions.map((e) => e.key).toSet();
            final otherIds = epgChannelIds
                .where((id) => !suggestedIds.contains(id))
                .toList();
            filteredIds = [...suggestions.map((e) => e.key), ...otherIds];
          } else {
            filteredIds = epgChannelIds.where((id) {
              final displayName = _getDisplayNameForEpgId(id).toLowerCase();
              final idLower = id.toLowerCase();
              final queryLower = searchQuery.toLowerCase();
              return displayName.contains(queryLower) ||
                  idLower.contains(queryLower);
            }).toList();
          }

          return AlertDialog(
            backgroundColor: AppTheme.darkBackground,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Match EPG for ${channel.name}',
                    style: const TextStyle(
                        fontSize: 18, color: AppTheme.textPrimary)),
                Text(
                  'ID: ${channel.tvgId ?? channel.id}',
                  style: const TextStyle(
                      fontSize: 12, color: AppTheme.textSecondary),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: searchController,
                  enableInteractiveSelection: false,
                  selectionControls: NoTextSelectionControls(),
                  showCursor: false,
                  cursorColor: Colors.transparent,
                  autofocus: true,
                  style: const TextStyle(color: Colors.white),
                  onTap: () {
                    final text = searchController.text;
                    searchController.selection =
                        TextSelection.collapsed(offset: text.length);
                  },
                  decoration: InputDecoration(
                    hintText: 'Search EPG channels...',
                    hintStyle:
                        TextStyle(color: Colors.white.withValues(alpha: 0.5)),
                    prefixIcon: const Icon(Icons.search, color: Colors.white54),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white.withValues(alpha: 0.05),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white.withValues(alpha: 0.2)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: AppTheme.primaryBlue, width: 2),
                    ),
                  ),
                  onChanged: (value) {
                    setDialogState(() {
                      searchQuery = value;
                    });
                  },
                ),
              ],
            ),
            content: SizedBox(
              width: double.maxFinite,
              height: 400,
              child: filteredIds.isEmpty
                  ? Center(
                      child: Text(
                        searchQuery.isEmpty
                            ? 'No EPG channels found'
                            : 'No matches for "$searchQuery"',
                        style: TextStyle(color: AppTheme.textSecondary),
                      ),
                    )
                  : ListView.builder(
                      itemCount: filteredIds.length +
                          (showingSuggestions && suggestions.isNotEmpty
                              ? 1
                              : 0),
                      itemBuilder: (context, index) {
                        if (showingSuggestions &&
                            suggestions.isNotEmpty &&
                            index == 0) {
                          return Container(
                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                            child: Row(
                              children: [
                                const Icon(Icons.auto_awesome,
                                    size: 16, color: AppTheme.primaryBlue),
                                const SizedBox(width: 8),
                                Text(
                                  'Suggested Matches (${suggestions.length})',
                                  style: TextStyle(
                                    color: AppTheme.primaryBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }

                        final adjustedIndex =
                            showingSuggestions && suggestions.isNotEmpty
                                ? index - 1
                                : index;
                        if (adjustedIndex < 0 ||
                            adjustedIndex >= filteredIds.length) {
                          return const SizedBox.shrink();
                        }

                        final epgId = filteredIds[adjustedIndex];
                        final preview = epgService.getChannelPreview(epgId);
                        final currentMapping = epgService
                            .getManualMapping(channel.tvgId ?? channel.id);
                        final isCurrentlyMapped = currentMapping == epgId;
                        final isSuggested = showingSuggestions &&
                            adjustedIndex < suggestions.length;
                        final suggestionScore = isSuggested
                            ? suggestions[adjustedIndex].value
                            : 0.0;

                        final showDivider = showingSuggestions &&
                            suggestions.isNotEmpty &&
                            adjustedIndex == suggestions.length - 1;

                        return Column(
                          children: [
                            FocusableActionDetector(
                              actions: <Type, Action<Intent>>{
                                ActivateIntent: CallbackAction<ActivateIntent>(
                                  onInvoke: (intent) {
                                    Navigator.pop(dialogContext);
                                    _setEpgMapping(channel, epgId);
                                    return null;
                                  },
                                ),
                              },
                              child: Builder(
                                builder: (context) {
                                  final isFocused = Focus.of(context).hasFocus;
                                  return ListTile(
                                    dense: true,
                                    selected: isFocused,
                                    selectedTileColor:
                                        AppTheme.primaryBlue.withValues(
                                      alpha: 0.16,
                                    ),
                                    leading: isCurrentlyMapped
                                        ? const Icon(Icons.check_circle,
                                            color: AppTheme.accentGreen)
                                        : isSuggested
                                            ? Icon(
                                                Icons.stars,
                                                color: suggestionScore > 0.7
                                                    ? AppTheme.accentGreen
                                                    : suggestionScore > 0.4
                                                        ? AppTheme.primaryBlue
                                                        : AppTheme
                                                            .textSecondary,
                                              )
                                            : const Icon(Icons.tv_outlined,
                                                color: AppTheme.textSecondary),
                                    title: Text(
                                      _getDisplayNameForEpgId(epgId),
                                      style: TextStyle(
                                        fontWeight:
                                            isCurrentlyMapped || isSuggested
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                        color: isCurrentlyMapped
                                            ? AppTheme.accentGreen
                                            : AppTheme.textPrimary,
                                      ),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (preview != null)
                                          Text(
                                            'Now: $preview',
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: AppTheme.textSecondary),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        if (isSuggested)
                                          Text(
                                            'Match: ${(suggestionScore * 100).toInt()}%',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: suggestionScore > 0.7
                                                  ? AppTheme.accentGreen
                                                  : AppTheme.textSecondary,
                                            ),
                                          ),
                                      ],
                                    ),
                                    onTap: () {
                                      Navigator.pop(dialogContext);
                                      _setEpgMapping(channel, epgId);
                                    },
                                  );
                                },
                              ),
                            ),
                            if (showDivider)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Divider(
                                            color: Colors.white
                                                .withValues(alpha: 0.1))),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: Text(
                                        'All EPG Channels',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: AppTheme.textSecondary),
                                      ),
                                    ),
                                    Expanded(
                                        child: Divider(
                                            color: Colors.white
                                                .withValues(alpha: 0.1))),
                                  ],
                                ),
                              ),
                          ],
                        );
                      },
                    ),
            ),
            actions: [
              if (epgService.hasManualMapping(channel.tvgId ?? channel.id))
                BrandSecondaryButton(
                  onPressed: () {
                    Navigator.pop(dialogContext);
                    _removeEpgMapping(channel);
                  },
                  label: 'Remove Mapping',
                ),
              BrandSecondaryButton(
                onPressed: () => Navigator.pop(dialogContext),
                label: 'Cancel',
              ),
            ],
          );
        },
      ),
    ));
  }

  Future<void> _setEpgMapping(Channel channel, String epgChannelId) async {
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    await epgService.setManualMapping(
        channel.tvgId ?? channel.id, epgChannelId);

    if (mounted) {
      showAppSnackBar(
          context,
          SnackBar(
            content: Text('EPG mapped: ${channel.name} → $epgChannelId'),
            backgroundColor: AppTheme.accentGreen,
          ));
      setState(() {});
    }
  }

  Future<void> _removeEpgMapping(Channel channel) async {
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    await epgService.removeManualMapping(channel.tvgId ?? channel.id);

    if (mounted) {
      showAppSnackBar(
          context,
          SnackBar(
            content: Text('EPG mapping removed for ${channel.name}'),
            backgroundColor: AppTheme.primaryBlue,
          ));
      setState(() {});
    }
  }

  String _getDisplayNameForEpgId(String epgId) {
    String name = epgId.split('.').first;
    final patterns = {
      RegExp(r'^bbc(\d+)$', caseSensitive: false): (Match m) =>
          'BBC ${m.group(1)}',
      RegExp(r'^itv(\d+)?$', caseSensitive: false): (Match m) =>
          'ITV${m.group(1) ?? ''}',
      RegExp(r'^channel(\d+)$', caseSensitive: false): (Match m) =>
          'Channel ${m.group(1)}',
      RegExp(r'^sky(\w+)$', caseSensitive: false): (Match m) =>
          'Sky ${m.group(1)!.toUpperCase()}',
      RegExp(r'^fox(\w+)?$', caseSensitive: false): (Match m) =>
          'FOX${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^cnn(\w+)?$', caseSensitive: false): (Match m) =>
          'CNN${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^abc(\w+)?$', caseSensitive: false): (Match m) =>
          'ABC${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^nbc(\w+)?$', caseSensitive: false): (Match m) =>
          'NBC${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
      RegExp(r'^cbs(\w+)?$', caseSensitive: false): (Match m) =>
          'CBS${m.group(1) != null ? ' ${m.group(1)!.toUpperCase()}' : ''}',
    };

    for (final pattern in patterns.entries) {
      final match = pattern.key.firstMatch(name);
      if (match != null) {
        return pattern.value(match);
      }
    }

    name = name.replaceAll(RegExp(r'[_-]'), ' ');
    if (name.isNotEmpty) {
      name = name[0].toUpperCase() + name.substring(1).toLowerCase();
    }

    return name.isEmpty ? epgId : name;
  }

  Widget _buildChannelCardFallback(Program? program, Channel channel) {
    return _buildMissingArtworkFallback();
  }

  Widget _buildMissingArtworkFallback() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF2A2A36),
            Color(0xFF1B1B24),
            AppTheme.darkBackground,
          ],
        ),
      ),
      child: Center(
        child: Icon(
          Icons.image_not_supported,
          color: Colors.white.withValues(alpha: 0.55),
          size: 36,
        ),
      ),
    );
  }

  Widget _buildChannelLogoWidget(
    Channel channel,
    Program? program,
    int cacheWidth,
    int cacheHeight,
  ) {
    // 1. Try Playlist Logo first explicitly
    final playlistLogo = channel.logoUrl;
    // 2. Fallback to Online/EPG Title Logo if playlist logo is missing
    final effectiveLogoUrl = (playlistLogo != null && playlistLogo.isNotEmpty)
        ? playlistLogo
        : _resolveProgramTitleLogo(program, channel);

    if (effectiveLogoUrl != null && effectiveLogoUrl.isNotEmpty) {
      final url = normalizeImageUrl(effectiveLogoUrl);
      final isSvg = url.toLowerCase().endsWith('.svg') ||
              url.toLowerCase().contains('.svg?');

      if (isSvg) {
        return SvgPicture.network(
          url,
          fit: BoxFit.contain,
          headers: HttpClientService().imageHeaders,
          placeholderBuilder: (_) => const SizedBox.shrink(),
          clipBehavior: Clip.hardEdge,
        );
      }

      // Use a consistent provider for both sources
      final provider = LogoImageCache.providerFor(
        url,
        headers: HttpClientService().imageHeaders,
      );
      final placeholder = Container(
        decoration: BoxDecoration(
          color: Colors.white.withAlpha((0.1 * 255).round()),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Icon(
          Icons.tv,
          color: Colors.white.withAlpha((0.6 * 255).round()),
          size: 16,
        ),
      );
      
      return Image(
        image: provider,
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
        frameBuilder: (context, child, frame, wasSync) {
          if (wasSync || frame != null) return child;
          return placeholder;
        },
        errorBuilder: (context, error, stackTrace) {
          // If the image fails to load, we can try to return the placeholder
          // or just swallow the error.
          return placeholder;
        },
      );
    }
    
    // No logo found
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withAlpha((0.1 * 255).round()),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Icon(
        Icons.tv,
        color: Colors.white.withAlpha((0.6 * 255).round()),
        size: 16,
      ),
    );
  }

  // Removed unused _buildLogoHeroFallbackWithBlur to avoid analyzer unused_element warning.

  Widget _buildLogoHeroFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF1B1E2B),
        Color(0xFF141722),
        AppTheme.darkBackground,
      ],
    );
    return _buildCategoryHeroFallback(
      channel,
      gradient: gradient,
      icon: Icons.tv,
    );
  }

  Widget _buildCategoryHeroFallback(
    Channel channel, {
    required LinearGradient gradient,
    required IconData icon,
    String? label,
  }) {
    final logoUrl = channel.logoUrl;
    final normalizedLogoUrl =
        logoUrl == null ? null : normalizeImageUrl(logoUrl);

    return Container(
      decoration: BoxDecoration(gradient: gradient),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dpr = MediaQuery.of(context).devicePixelRatio;
          final maxLogoWidth = constraints.maxWidth * 0.55;
          final maxLogoHeight = constraints.maxHeight * 0.32;
          final logoCacheWidth = math.min(480, (maxLogoWidth * dpr).round());
          final logoCacheHeight = math.min(480, (maxLogoHeight * dpr).round());

          final fallbackIcon = Icon(
            icon,
            color: Colors.white70,
            size: 64,
          );

          Widget buildCenteredLogo(Widget child) {
            return Stack(
              fit: StackFit.expand,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(gradient: gradient),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.center,
                      radius: 0.85,
                      colors: [
                        Colors.white.withValues(alpha: 0.06),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 18,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.06),
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.12),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.35),
                          blurRadius: 24,
                          offset: const Offset(0, 12),
                        ),
                      ],
                    ),
                    child: child,
                  ),
                ),
              ],
            );
          }

          Widget buildLogoBlock(Widget child) {
            return SizedBox(
              width: maxLogoWidth,
              height: maxLogoHeight,
              child: Align(
                alignment: Alignment.center,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Transform.translate(
                    offset: const Offset(0, -4),
                    child: child,
                  ),
                ),
              ),
            );
          }

          Widget buildFallbackContent() {
            final labelText = label;
            if (labelText == null || labelText.isEmpty) {
              return buildCenteredLogo(fallbackIcon);
            }
            return buildCenteredLogo(
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  buildLogoBlock(fallbackIcon),
                  const SizedBox(height: 12),
                  Text(
                    labelText,
                    style: AppTypography.heroTitle(context).copyWith(
                      letterSpacing: 6,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            );
          }

          if (normalizedLogoUrl == null || normalizedLogoUrl.isEmpty) {
            return buildFallbackContent();
          }

          return CachedNetworkImage(
            imageUrl: normalizedLogoUrl,
            httpHeaders: HttpClientService().imageHeaders,
            fit: BoxFit.contain,
            width: maxLogoWidth,
            height: maxLogoHeight,
            memCacheWidth: logoCacheWidth,
            memCacheHeight: logoCacheHeight,
            imageBuilder: (context, imageProvider) {
              final logo = Image(
                image: imageProvider,
                fit: BoxFit.contain,
                width: maxLogoWidth,
                height: maxLogoHeight,
              );
              final labelText = label;
              if (labelText == null || labelText.isEmpty) {
                return buildCenteredLogo(logo);
              }
              return buildCenteredLogo(
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildLogoBlock(logo),
                    const SizedBox(height: 12),
                    Text(
                      labelText,
                      style: AppTypography.heroTitle(context).copyWith(
                        letterSpacing: 6,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              );
            },
            placeholder: (_, __) => buildFallbackContent(),
            errorWidget: (_, url, error) {
              logHandshakeIfNeeded(url, error, context: 'LiveTV hero logo');
              return buildFallbackContent();
            },
          );
        },
      ),
    );
  }

  Widget _buildNewsHeroFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF0B1E3A),
        Color(0xFF102A4A),
        AppTheme.darkBackground,
      ],
    );
    return _buildCategoryHeroFallback(
      channel,
      gradient: gradient,
      icon: Icons.newspaper,
      label: 'NEWS',
    );
  }

  Widget _buildSportsHeroFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF1A2E1A),
        Color(0xFF0F1F0F),
        AppTheme.darkBackground,
      ],
    );
    return _buildCategoryHeroFallback(
      channel,
      gradient: gradient,
      icon: Icons.sports,
      label: 'SPORTS',
    );
  }

  Widget _buildWeatherHeroFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF1D2A3A),
        Color(0xFF15212E),
        AppTheme.darkBackground,
      ],
    );
    return _buildCategoryHeroFallback(
      channel,
      gradient: gradient,
      icon: Icons.cloud,
      label: 'WEATHER',
    );
  }

  Widget _buildKidsHeroFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF2C2A1A),
        Color(0xFF1F1C0F),
        AppTheme.darkBackground,
      ],
    );
    return _buildCategoryHeroFallback(
      channel,
      gradient: gradient,
      icon: Icons.child_care,
      label: 'KIDS',
    );
  }

  Widget _buildMusicHeroFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF2A1A2E),
        Color(0xFF1D141F),
        AppTheme.darkBackground,
      ],
    );
    return _buildCategoryHeroFallback(
      channel,
      gradient: gradient,
      icon: Icons.music_note,
      label: 'MUSIC',
    );
  }

  Widget _buildDocumentaryHeroFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF1C2529),
        Color(0xFF141B1F),
        AppTheme.darkBackground,
      ],
    );
    return _buildCategoryHeroFallback(
      channel,
      gradient: gradient,
      icon: Icons.menu_book,
      label: 'DOCS',
    );
  }

  Widget _buildMovieHeroFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF2B2217),
        Color(0xFF1D1711),
        AppTheme.darkBackground,
      ],
    );
    return _buildCategoryHeroFallback(
      channel,
      gradient: gradient,
      icon: Icons.movie,
      label: 'MOVIES',
    );
  }

  bool _isNewsProgram(Program? program, Channel channel) {
    final title = (program?.title ?? '').toLowerCase();
    final category = (program?.category ?? '').toLowerCase();
    final description = (program?.description ?? '').toLowerCase();
    final channelName = channel.name.toLowerCase();
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();
    const keywords = [
      'news',
      'newscast',
      'breaking',
      'headlines',
      'bulletin',
      'update',
      // Common non-English news keywords (ASCII only)
      'noticia',
      'noticias',
      'noticiero',
      'jornal',
      'telejornal',
      'journal',
      'journaux',
      'nouvelles',
      'info',
      'infos',
      'notizie',
      'telegiornale',
      'nachrichten',
      'nieuws',
      'nyheter',
      'nyheder',
      'wiadomosci',
      'haber',
    ];
    bool containsKeyword(String value) {
      for (final keyword in keywords) {
        if (value.contains(keyword)) {
          return true;
        }
      }
      return false;
    }

    final titleCategoryDescription = '$title $category $description';
    if (containsKeyword(titleCategoryDescription)) {
      return true;
    }

    final channelInfo = '$channelName $groupTitle';
    if ((title.isEmpty || _isGenericTitle(title)) &&
        containsKeyword(channelInfo)) {
      return true;
    }

    return false;
  }

  bool _containsKeywords(String value, List<String> keywords) {
    for (final keyword in keywords) {
      if (value.contains(keyword)) {
        return true;
      }
    }
    return false;
  }

  bool _isKidsProgram(Program? program, Channel channel) {
    final title = (program?.title ?? '').toLowerCase();
    final category = (program?.category ?? '').toLowerCase();
    final description = (program?.description ?? '').toLowerCase();
    final channelName = channel.name.toLowerCase();
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();
    const keywords = [
      'kids',
      'kid',
      'child',
      'children',
      'family',
      'cartoon',
      'animation',
      'anime',
      'toons',
      'nursery',
      'preschool',
    ];
    final info = '$title $category $description';
    final channelInfo = '$channelName $groupTitle';
    return _containsKeywords(info, keywords) ||
        _containsKeywords(channelInfo, keywords);
  }

  bool _isMusicProgram(Program? program, Channel channel) {
    final title = (program?.title ?? '').toLowerCase();
    final category = (program?.category ?? '').toLowerCase();
    final description = (program?.description ?? '').toLowerCase();
    final channelName = channel.name.toLowerCase();
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();
    const keywords = [
      'music',
      'concert',
      'festival',
      'hits',
      'chart',
      'mtv',
      'vh1',
      'vevo',
      'radio',
    ];
    final info = '$title $category $description';
    final channelInfo = '$channelName $groupTitle';
    return _containsKeywords(info, keywords) ||
        _containsKeywords(channelInfo, keywords);
  }

  bool _isDocumentaryProgram(Program? program, Channel channel) {
    final title = (program?.title ?? '').toLowerCase();
    final category = (program?.category ?? '').toLowerCase();
    final description = (program?.description ?? '').toLowerCase();
    final channelName = channel.name.toLowerCase();
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();
    const keywords = [
      'documentary',
      'docu',
      'history',
      'science',
      'nature',
      'wildlife',
      'biography',
    ];
    final info = '$title $category $description';
    final channelInfo = '$channelName $groupTitle';
    return _containsKeywords(info, keywords) ||
        _containsKeywords(channelInfo, keywords);
  }

  bool _isWeatherProgram(Program? program, Channel channel) {
    final title = (program?.title ?? '').toLowerCase();
    final category = (program?.category ?? '').toLowerCase();
    final description = (program?.description ?? '').toLowerCase();
    final channelName = channel.name.toLowerCase();
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();
    const keywords = [
      'weather',
      'forecast',
      'storm',
      'climate',
      'meteor',
      'hurricane',
    ];
    final info = '$title $category $description';
    final channelInfo = '$channelName $groupTitle';
    return _containsKeywords(info, keywords) ||
        _containsKeywords(channelInfo, keywords);
  }

  bool _isMovieProgram(Program? program, Channel channel) {
    final title = (program?.title ?? '').toLowerCase();
    final category = (program?.category ?? '').toLowerCase();
    final description = (program?.description ?? '').toLowerCase();
    final channelName = channel.name.toLowerCase();
    final groupTitle = (channel.groupTitle ?? '').toLowerCase();
    const keywords = [
      'movie',
      'film',
      'cinema',
      'feature',
    ];
    final info = '$title $category $description';
    final channelInfo = '$channelName $groupTitle';
    return _containsKeywords(info, keywords) ||
        _containsKeywords(channelInfo, keywords);
  }



  bool _isBlacklistedNewsArtwork(
    Map<String, dynamic>? details,
    String programTitle,
  ) {
    if (details == null) return true;
    final image = (details['image'] as String?)?.trim();
    if (image == null || image.isEmpty) return true;
    final matchedTitle = (details['title'] as String?)?.toLowerCase() ?? '';
    final genres = (details['genres'] as List?)
            ?.map((entry) => entry.toString().toLowerCase())
            .toList() ??
        const <String>[];
    final newsKeywords = ['news', 'newscast', 'headline', 'update', 'bulletin'];
    final rejectGenres = ['animation', 'anime', 'kids'];
    final hasNewsKeyword =
        newsKeywords.any((keyword) => matchedTitle.contains(keyword)) ||
            genres.any((genre) => genre.contains('news'));
    if (!hasNewsKeyword) return true;
    if (rejectGenres.any((keyword) =>
        matchedTitle.contains(keyword) ||
        genres.any((genre) => genre.contains(keyword)))) {
      return true;
    }
    return false;
  }

  String _formatTime(DateTime dt) {
    final hour = dt.hour == 0 ? 12 : (dt.hour > 12 ? dt.hour - 12 : dt.hour);
    final period = dt.hour < 12 ? 'AM' : 'PM';
    return '${hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')} $period';
  }

  String normalizeForFilter(String title) {
    // Normalize titles for de-duplication/filtering: lowercase, remove leading articles,
    // strip non-alphanumeric characters, collapse whitespace.
    if (title.isEmpty) return title;
    var s = title.toLowerCase().trim();
    s = s.replaceAll(RegExp(r'^(the|a|an)\s+'), '');
    s = s.replaceAll(RegExp(r'[^a-z0-9\s]'), ' ');
    s = s.replaceAll(RegExp(r'\s+'), ' ').trim();
    return s;
  }

  Future<void> _openChannelPlayer(Channel channel) async {
    if (_isOpeningPlayer) return;
    _isOpeningPlayer = true;
    _pauseArtworkFetching = true;
    _suspendArtworkCaches = true;
    _suspendHeroBackground = true;

    // Aggressive memory cleanup before player
    _releaseArtworkCachesForPlayback();
    MemoryManager.checkMemoryPressure();
    MemoryManager.clearCaches();
    MemoryManager.forceGarbageCollection();

    // Clear hero image cache to free memory
    _heroImageCacheHits.clear();

    if (!mounted) return;
    try {
      await context.push('/player', extra: channel);
    } finally {
      if (mounted) {
        _isOpeningPlayer = false;
        _pauseArtworkFetching = false;
        _suspendArtworkCaches = false;
        _suspendHeroBackground = false;
      }
    }
  }

  void _releaseArtworkCachesForPlayback() {
    _artworkQueueHigh.clear();
    _artworkQueueLow.clear();
    _queuedArtworkIds.clear();
    _artworkRequests.clear();
    _pendingArtworkRequests.clear();
    _pendingArtworkByTitle.clear();
    _programArtwork.clear();
    _programArtworkOrder.clear();
    _programTitleLogos.clear();
    _programTitleLogoOrder.clear();
    _programChannelLookup.clear();
    _artworkQueryTitleCache.clear();
    _heroImageCacheHits.clear();
    _heroAspectRatios.clear();
    _heroAspectRatioInFlight.clear();

    // Clear additional caches that can consume memory
    _programArtworkByTitle.clear();
    _programArtworkTitleOrder.clear();
    _categoryChannelCache.clear();
    _categoryCacheOrder.clear();
  }

  Widget _buildHeroContent(
    Channel featuredChannel,
    Program? currentProgram,
    String? heroImage, // Keep as String? for imageUrl
    double scrollProgress,
  ) {
    final heroGradient = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          AppTheme.richBlack,
          AppTheme.darkBackground.withAlpha((0.96 * 255).round()),
          AppTheme.darkBackground,
        ],
        stops: const [0.0, 0.55, 1.0],
      ),
    );

    final heroFallback = _buildHeroLoadingFallback(
      featuredChannel,
      currentProgram,
    );
    // Check if this is a channel logo fallback
    final isChannelLogoFallback = heroImage == featuredChannel.logoUrl;

    if (_suspendHeroBackground) {
      return SizedBox.expand(
        child: DecoratedBox(
          decoration: heroGradient,
          child: heroFallback,
        ),
      );
    }

    return SizedBox.expand(
      child: DecoratedBox(
        decoration: heroGradient,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final normalizedHeroUrl = _normalizeArtworkUrl(
                  normalizeImageUrl(heroImage ?? ''),
                  isHero: true,
                  targetWidth: constraints.maxWidth,
                ) ??
                '';
            final hasHeroImage = normalizedHeroUrl.isNotEmpty;
            if (!hasHeroImage) {
              return heroFallback;
            }
            if (!_heroImageCacheHits.containsKey(normalizedHeroUrl)) {
              _checkHeroImageCache(normalizedHeroUrl);
            }
            _ensureHeroAspectRatio(normalizedHeroUrl);
            final dpr = MediaQuery.of(context).devicePixelRatio;
            // Increase cache limits for better 4K support
            final cacheWidth =
                math.min(2500, (constraints.maxWidth * dpr).round());
            final cacheHeight =
                math.min(1500, (constraints.maxHeight * dpr).round());

            if (isChannelLogoFallback) {
              // Special handling for channel logo fallback with blurred background
              return Stack(
                children: [
                  // Blurred background
                  SizedBox.expand(
                    child: CachedNetworkImage(
                      imageUrl: normalizedHeroUrl,
                      httpHeaders: HttpClientService().imageHeaders,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.low,
                      memCacheWidth: cacheWidth ~/ 2,
                      memCacheHeight: cacheHeight ~/ 2,
                      imageBuilder: (context, imageProvider) {
                        ImageLoadProbe.recordSuccess(
                            normalizedHeroUrl, 'hero_logo_bg');
                        return ImageFiltered(
                          imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),
                            child: Container(
                              color: Colors.black.withValues(alpha: 0.4),
                            ),
                          ),
                        );
                      },
                      placeholder: (_, __) => Container(
                        color: AppTheme.darkBackground,
                      ),
                      errorWidget: (_, url, error) {
                        ImageLoadProbe.recordFailure(
                            url, 'hero_logo_bg', error);
                        return Container(
                          color: AppTheme.darkBackground,
                        );
                      },
                    ),
                  ),
                  // Centered logo
                  Center(
                    child: CachedNetworkImage(
                      imageUrl: normalizedHeroUrl,
                      httpHeaders: HttpClientService().imageHeaders,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high,
                      width: constraints.maxWidth * 0.3,
                      height: constraints.maxHeight * 0.25,
                      memCacheWidth: (constraints.maxWidth * 0.3 * dpr).round(),
                      memCacheHeight:
                          (constraints.maxHeight * 0.25 * dpr).round(),
                      imageBuilder: (context, imageProvider) {
                        ImageLoadProbe.recordSuccess(
                            normalizedHeroUrl, 'hero_logo');
                        return Image(
                          image: imageProvider,
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.high,
                        );
                      },
                      placeholder: (_, __) => const SizedBox.shrink(),
                      errorWidget: (_, url, error) {
                        ImageLoadProbe.recordFailure(url, 'hero_logo', error);
                        logHandshakeIfNeeded(url, error,
                            context: 'LiveTV hero logo');
                        return heroFallback;
                      },
                    ),
                  ),
                ],
              );
            }

            // Adaptive handling:
            // Prefer aspect ratio over URL heuristics to avoid misclassification.
            final aspect = _heroAspectRatios[normalizedHeroUrl];
            final isLandscape = aspect != null
                ? aspect >= 1.2
                : _isExplicitBackdropUrl(normalizedHeroUrl);

            if (isLandscape) {
              // It's a Backdrop/Landscape image -> Render Full Bleed (Cover)
              return SizedBox.expand(
                child: CachedNetworkImage(
                  imageUrl: normalizedHeroUrl,
                  httpHeaders: HttpClientService().imageHeaders,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  memCacheWidth: cacheWidth,
                  memCacheHeight: cacheHeight,
                  imageBuilder: (context, imageProvider) {
                    _markHeroImageCached(normalizedHeroUrl);
                    ImageLoadProbe.recordSuccess(
                        normalizedHeroUrl, 'hero_backdrop');
                    return Image(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    );
                  },
                  placeholder: (_, __) => Container(
                    color: AppTheme.darkBackground,
                  ),
                  errorWidget: (_, url, error) {
                    ImageLoadProbe.recordFailure(url, 'hero_backdrop', error);
                    logHandshakeIfNeeded(url, error,
                        context: 'LiveTV hero backdrop');
                    return heroFallback;
                  },
                  fadeInDuration: const Duration(milliseconds: 300),
                ),
              );
            }

            // It's a Poster/Portrait image -> Use Blurred Background + Contained Image
            return Stack(
              fit: StackFit.expand,
              children: [
                // Blurred background (fills screen)
                CachedNetworkImage(
                  imageUrl: normalizedHeroUrl,
                  httpHeaders: HttpClientService().imageHeaders,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  filterQuality: FilterQuality.low,
                  memCacheWidth: cacheWidth ~/ 4,
                  memCacheHeight: cacheHeight ~/ 4,
                  imageBuilder: (context, imageProvider) {
                    ImageLoadProbe.recordSuccess(
                        normalizedHeroUrl, 'hero_poster_bg');
                    return ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                        child: Container(
                          color: Colors.black.withValues(alpha: 0.5),
                        ),
                      ),
                    );
                  },
                  placeholder: (_, __) => Container(
                    color: AppTheme.darkBackground,
                  ),
                  errorWidget: (_, url, error) {
                    ImageLoadProbe.recordFailure(url, 'hero_poster_bg', error);
                    return Container(
                      color: AppTheme.darkBackground,
                    );
                  },
                ),
                // Main Image (Contained - shows full content)
                Center(
                  child: CachedNetworkImage(
                    imageUrl: normalizedHeroUrl,
                    httpHeaders: HttpClientService().imageHeaders,
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.high,
                    memCacheWidth: cacheWidth,
                    memCacheHeight: cacheHeight,
                    imageBuilder: (context, imageProvider) {
                      _markHeroImageCached(normalizedHeroUrl);
                      ImageLoadProbe.recordSuccess(
                          normalizedHeroUrl, 'hero_poster');
                      return Image(
                        image: imageProvider,
                        fit: BoxFit.contain,
                        filterQuality: FilterQuality.high,
                      );
                    },
                    placeholder: (_, __) => const SizedBox.shrink(),
                    errorWidget: (_, url, error) {
                      ImageLoadProbe.recordFailure(url, 'hero_poster', error);
                      logHandshakeIfNeeded(url, error,
                          context: 'LiveTV hero main');
                      return heroFallback;
                    },
                    fadeInDuration: const Duration(milliseconds: 300),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeroLoadingFallback(
      Channel featuredChannel, Program? currentProgram) {
    if (_isNewsProgram(currentProgram, featuredChannel)) {
      return _buildNewsHeroFallback(featuredChannel);
    }
    if (currentProgram != null &&
        _isSportsProgram(currentProgram, featuredChannel)) {
      return _buildSportsHeroFallback(featuredChannel);
    }
    if (_isWeatherProgram(currentProgram, featuredChannel)) {
      return _buildWeatherHeroFallback(featuredChannel);
    }
    if (_isKidsProgram(currentProgram, featuredChannel)) {
      return _buildKidsHeroFallback(featuredChannel);
    }
    if (_isMusicProgram(currentProgram, featuredChannel)) {
      return _buildMusicHeroFallback(featuredChannel);
    }
    if (_isDocumentaryProgram(currentProgram, featuredChannel)) {
      return _buildDocumentaryHeroFallback(featuredChannel);
    }
    if (_isMovieProgram(currentProgram, featuredChannel)) {
      return _buildMovieHeroFallback(featuredChannel);
    }
    return _buildLogoHeroFallback(featuredChannel);
  }

  void _checkHeroImageCache(String url) {
    if (url.isEmpty) return;
    unawaited(() async {
      final cached = await DefaultCacheManager().getFileFromCache(url);
      if (!mounted) return;
      final hit = cached != null;
      if (_heroImageCacheHits[url] == hit) return;
      setState(() {
        _heroImageCacheHits[url] = hit;
      });
    }());
  }

  void _markHeroImageCached(String url) {
    if (url.isEmpty) return;
    if (_heroImageCacheHits[url] == true) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      setState(() {
        _heroImageCacheHits[url] = true;
      });
    });
  }

  Widget _buildColdStartOverlayCard({
    String? statusText,
    String? secondaryStatusText,
    double? progress,
  }) {
    final trimmedStatus = (statusText ?? '').trim();
    final resolvedStatus =
        trimmedStatus.isNotEmpty ? trimmedStatus : 'Preparing playlist...';
    final trimmedSecondary = (secondaryStatusText ?? '').trim();
    final resolvedSecondary = trimmedSecondary.isNotEmpty ? trimmedSecondary : '';
    final resolvedProgress = (progress ?? 0.0).clamp(0.0, 1.0);
    final showProgressValue = resolvedProgress > 0.02;
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 520, minWidth: 280),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Loading playlist',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            resolvedStatus,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.white.withValues(alpha: 0.8),
                ),
            textAlign: TextAlign.center,
          ),
          if (resolvedSecondary.isNotEmpty) ...[
            const SizedBox(height: 6),
            Text(
              resolvedSecondary,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
              textAlign: TextAlign.center,
            ),
          ],
          const SizedBox(height: 16),
          LinearProgressIndicator(
            value: showProgressValue ? resolvedProgress : null,
            minHeight: 6,
            color: AppTheme.primaryBlue,
            backgroundColor: Colors.white.withValues(alpha: 0.15),
          ),
          const SizedBox(height: 10),
          Text(
            'First load can take a minute on large playlists.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white.withValues(alpha: 0.6),
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Text(
            '(Please keep the app open while this completes.)',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white.withValues(alpha: 0.5),
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSkeletonLoaderTracked({
    bool? showColdStartOverlay,
    String? statusText,
    String? secondaryStatusText,
    double? progress,
  }) {
    _markSkeletonVisibility(true);
    final channelProvider = context.read<ChannelProvider>();
    final resolvedOverlay = showColdStartOverlay ??
        (channelProvider.isColdStartLoad && channelProvider.isLoading);
    final resolvedStatus = statusText ?? channelProvider.loadingStatus;
    final resolvedProgress = progress ?? channelProvider.loadingProgress;
    return _buildSkeletonLoader(
      showColdStartOverlay: resolvedOverlay,
      statusText: resolvedStatus,
      secondaryStatusText: secondaryStatusText,
      progress: resolvedProgress,
    );
  }

  Widget _buildSkeletonLoader({
    bool showColdStartOverlay = false,
    String? statusText,
    String? secondaryStatusText,
    double? progress,
  }) {
    final heroHeight = context.heroHeight();
    final contentInset = context.spacingSm() + AppSpacing.sidebarCollapsedWidth;
    final rightInset = context.spacingLg();
    final screenSize = MediaQuery.of(context).size;
    final skeletonCardWidth = context.cardWidth();
    final skeletonCardHeight = context.cardHeight();
    final cardPeek = 80.0;
    final contentTop = (heroHeight - cardPeek).clamp(0.0, heroHeight);
    final rowInset = contentInset;
    final perRow =
        _initialRowVisibleCount(context, skeletonCardWidth, rowInset);
    final availableWidth = screenSize.width - contentInset - rightInset;
    final desiredInfoWidth = screenSize.width < 800
        ? availableWidth
        : screenSize.width * AppSpacing.heroInfoWidth;
    final heroInfoWidth = math.min(
      desiredInfoWidth,
      screenSize.width >= 1920 ? 480.0 : 420.0,
    );

    return Focus(
      focusNode: _skeletonFocus,
      onFocusChange: (hasFocus) {
        if (hasFocus) {
          debugLog('LiveTV: Skeleton focused');
        }
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: AppColors.background,
            ),
          ),
          // Channel logo
          Positioned(
            top: AppSizes.lg,
            right: AppSizes.lg,
            child: Builder(builder: (context) {
              final scrollPos = _safeScrollOffset();
              final fadeProgress =
                  (scrollPos / (heroHeight * 0.5)).clamp(0.0, 1.0);
              return Opacity(
                opacity: 1.0 - fadeProgress,
                child: Shimmer(
                  child: Container(
                    height: 48,
                    width: 72,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              );
            }),
          ),
          Positioned(
            top: 0,
            left: contentInset,
            right: rightInset,
            height: contentTop,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Shimmer(
                  child: _buildHeroInfoSkeleton(
                      context, heroInfoWidth, screenSize),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: contentTop + context.spacingLg()),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 0,
                      right: rightInset,
                      bottom: context.spacingLg(),
                    ),
                    child: Shimmer(
                      child: Column(
                        children: [
                          for (int rowIndex = 0; rowIndex < 3; rowIndex++) ...[
                            SizedBox(
                              height: skeletonCardHeight +
                                  context.spacingXs() +
                                  context.tvTextSize(30),
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.only(left: rowInset),
                                itemCount: perRow,
                                separatorBuilder: (context, index) =>
                                    SizedBox(width: context.cardGap()),
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Skeleton(
                                        width: skeletonCardWidth,
                                        height: skeletonCardHeight,
                                        borderRadius: 12,
                                      ),
                                      SizedBox(height: 4),
                                      SkeletonLine(skeletonCardWidth * 0.8,
                                          height: 12, borderRadius: 4),
                                      SizedBox(height: 2),
                                      SkeletonLine(skeletonCardWidth * 0.5,
                                          height: 10, borderRadius: 4),
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: context.spacingSm()),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (showColdStartOverlay)
            Positioned.fill(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
                  child: Container(
                    color: Colors.black.withValues(alpha: 0.45),
                    alignment: Alignment.center,
                    child: _buildColdStartOverlayCard(
                      statusText: statusText,
                      secondaryStatusText: secondaryStatusText,
                      progress: progress,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildAdaptiveImage(BuildContext context, String url, BoxFit defaultFit,
      int? cacheWidth, int? cacheHeight, Widget fallback) {
    final isPoster = _isLikelyPosterUrl(url);

    if (isPoster) {
      return Stack(
        fit: StackFit.expand,
        children: [
          // Blurred background
          CachedNetworkImage(
            imageUrl: url,
            httpHeaders: HttpClientService().imageHeaders,
            fit: BoxFit.cover,
            alignment: Alignment.center,
            memCacheWidth: (cacheWidth ?? 400) ~/ 4,
            memCacheHeight: (cacheHeight ?? 240) ~/ 4,
            imageBuilder: (context, imageProvider) {
              ImageLoadProbe.recordSuccess(url, 'live_tv_poster_bg');
              return ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                  foregroundDecoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.4),
                  ),
                ),
              );
            },
            placeholder: (context, url) => Container(color: Colors.black12),
            errorWidget: (context, url, err) {
              ImageLoadProbe.recordFailure(url, 'live_tv_poster_bg', err);
              return fallback;
            },
          ),
          // Centered image content (Contain)
          CachedNetworkImage(
            imageUrl: url,
            httpHeaders: HttpClientService().imageHeaders,
            fit: BoxFit.contain,
            memCacheWidth: cacheWidth,
            memCacheHeight: cacheHeight,
            imageBuilder: (context, imageProvider) {
              ImageLoadProbe.recordSuccess(url, 'live_tv_poster');
              return Image(
                image: imageProvider,
                fit: BoxFit.contain,
              );
            },
            placeholder: (context, url) => fallback,
            errorWidget: (context, url, err) {
              ImageLoadProbe.recordFailure(url, 'live_tv_poster', err);
              return fallback;
            },
          ),
        ],
      );
    }

    return CachedNetworkImage(
      imageUrl: url,
      httpHeaders: HttpClientService().imageHeaders,
      fit: defaultFit,
      memCacheWidth: cacheWidth,
      memCacheHeight: cacheHeight,
      imageBuilder: (context, imageProvider) {
        ImageLoadProbe.recordSuccess(url, 'live_tv_card');
        return Image(
          image: imageProvider,
          fit: defaultFit,
        );
      },
      placeholder: (context, url) => fallback,
      errorWidget: (context, url, err) {
        ImageLoadProbe.recordFailure(url, 'live_tv_card', err);
        logHandshakeIfNeeded(url, err, context: 'LiveTV Adaptive');
        return fallback;
      },
      fadeInDuration: const Duration(milliseconds: 240),
    );
  }
}
