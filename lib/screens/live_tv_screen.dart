import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/l10n/gen/app_localizations.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';

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

import 'package:iptv_player/services/live_tv_artwork_service.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

import 'package:iptv_player/utils/epg_matching_utils.dart';
import 'package:iptv_player/utils/program_classifier.dart';

import 'package:iptv_player/widgets/brand_badge.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/widgets/brand_fallback_background.dart';
import 'package:iptv_player/widgets/channel_logo_widget.dart';
import 'package:iptv_player/utils/app_icons.dart';
import 'package:iptv_player/utils/app_spacing.dart';
import 'package:iptv_player/services/timer_service.dart';
import 'package:iptv_player/widgets/skeleton_loader.dart';
import 'package:iptv_player/widgets/shimmer.dart';
import 'package:iptv_player/widgets/hero_panel.dart';
import 'package:iptv_player/services/focus_pool_service.dart';
import 'package:iptv_player/widgets/live_tv/epg_channel_selector_dialog.dart';

import 'package:iptv_player/utils/memory_manager.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/services/image_validation_service.dart';
import 'package:iptv_player/utils/network_error_logger.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';

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

class _LandscapeGuardedImage extends StatefulWidget {
  const _LandscapeGuardedImage({
    required this.url,
    required this.imageProvider,
    required this.fit,
    this.alignment = Alignment.center,
    required this.fallback,
    required this.probeTag,
  });

  final String url;
  final ImageProvider imageProvider;
  final BoxFit fit;
  final Alignment alignment;
  final Widget fallback;
  final String probeTag;

  @override
  State<_LandscapeGuardedImage> createState() => _LandscapeGuardedImageState();
}

class _LandscapeGuardedImageState extends State<_LandscapeGuardedImage> {
  ImageStream? _stream;
  ImageInfo? _info;
  late final ImageStreamListener _streamListener;

  @override
  void initState() {
    super.initState();
    _streamListener = ImageStreamListener(
      _handleImage,
      onError: (error, stackTrace) {
        if (!mounted) return;
        ImageFailureCache.recordFailure(widget.url, error);
        setState(() {
          _info = null;
        });
      },
    );
    _resolveImage();
  }

  @override
  void didUpdateWidget(covariant _LandscapeGuardedImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.imageProvider != widget.imageProvider) {
      _resolveImage();
    }
  }

  void _resolveImage() {
    _stream?.removeListener(_streamListener);
    _info = null;
    final stream = widget.imageProvider.resolve(
      const ImageConfiguration(),
    );
    _stream = stream;
    stream.addListener(_streamListener);
  }

  void _handleImage(ImageInfo info, bool sync) {
    if (!mounted) return;
    setState(() {
      _info = info;
    });
  }

  @override
  void dispose() {
    _stream?.removeListener(_streamListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final info = _info;
    if (info == null) {
      return widget.fallback;
    }
    final width = info.image.width;
    final height = info.image.height;
    final bool isHero = widget.probeTag.contains('hero');
    final double minLandscapeRatio = isHero ? 1.6 : 1.75;
    if (width / height < minLandscapeRatio) {
      ImageFailureCache.recordPortrait(widget.url);
      ImageLoadProbe.recordFailure(
        widget.url,
        widget.probeTag,
        Exception('Portrait artwork rejected'),
      );
      return widget.fallback;
    }
    ImageFailureCache.recordSuccess(widget.url);
    ImageLoadProbe.recordSuccess(widget.url, widget.probeTag);
    return Image(
      image: widget.imageProvider,
      fit: widget.fit,
      alignment: widget.alignment,
      gaplessPlayback: true,
    );
  }
}

// Soft edge fade width factor - increased for smoother wave transition
const double _heroMatteSoftEdgeWidthFactor = 0.045;

class _HeroMattePainter extends CustomPainter {
  final double revealWidthFactor;
  final double edgeCurveFactor;

  const _HeroMattePainter({
    required this.revealWidthFactor,
    required this.edgeCurveFactor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Rect bounds = Offset.zero & size;
    canvas.saveLayer(bounds, Paint());
    canvas.drawRect(
      bounds,
      Paint()..color = AppTheme.darkBackground,
    );

    final Path revealPath = _buildHeroRevealPath(
      size,
      revealWidthFactor,
      edgeCurveFactor,
    );

    canvas.drawPath(
      revealPath,
      Paint()..blendMode = BlendMode.clear,
    );

    final double softWidth = size.width * _heroMatteSoftEdgeWidthFactor;
    if (softWidth > 0) {
      final Paint softPaint = Paint()
        ..blendMode = BlendMode.dstOut
        ..style = PaintingStyle.stroke
        ..strokeWidth = softWidth
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, softWidth * 0.6)
        ..color = const Color(0xFF000000);
      canvas.drawPath(revealPath, softPaint);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _HeroMattePainter oldDelegate) {
    return oldDelegate.revealWidthFactor != revealWidthFactor ||
        oldDelegate.edgeCurveFactor != edgeCurveFactor;
  }
}

class _HeroRevealClipper extends CustomClipper<Path> {
  final double revealWidthFactor;
  final double edgeCurveFactor;

  const _HeroRevealClipper({
    required this.revealWidthFactor,
    required this.edgeCurveFactor,
  });

  @override
  Path getClip(Size size) {
    return _buildHeroRevealPath(size, revealWidthFactor, edgeCurveFactor);
  }

  @override
  bool shouldReclip(covariant _HeroRevealClipper oldClipper) {
    return oldClipper.revealWidthFactor != revealWidthFactor ||
        oldClipper.edgeCurveFactor != edgeCurveFactor;
  }
}

// _HeroMatteClipper removed because it was unused.

class _HeroBottomScrimClipper extends CustomClipper<Path> {
  final double revealWidthFactor;
  final double edgeCurveFactor;

  const _HeroBottomScrimClipper({
    required this.revealWidthFactor,
    required this.edgeCurveFactor,
  });

  @override
  Path getClip(Size size) {
    final revealWidth = size.width * revealWidthFactor;
    final revealLeft = size.width - revealWidth;
    final waveAmplitude = size.width * edgeCurveFactor * 0.6;
    
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(revealLeft, 0);
    
    // Wave parameters (matching _buildHeroRevealPath)
    const int waveCount = 2;
    final double waveHeight = size.height / waveCount;
    
    for (int i = 0; i < waveCount; i++) {
      final double startY = i * waveHeight;
      final double midY = startY + waveHeight / 2;
      final double endY = startY + waveHeight;
      
      path.quadraticBezierTo(
        revealLeft - waveAmplitude,
        midY - waveHeight / 4,
        revealLeft - waveAmplitude * 0.5,
        midY,
      );
      path.quadraticBezierTo(
        revealLeft,
        midY + waveHeight / 4,
        revealLeft,
        endY,
      );
    }
    
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant _HeroBottomScrimClipper oldClipper) {
    return oldClipper.revealWidthFactor != revealWidthFactor ||
        oldClipper.edgeCurveFactor != edgeCurveFactor;
  }
}

Path _buildHeroRevealPath(
  Size size,
  double revealWidthFactor,
  double edgeCurveFactor,
) {
  final double revealWidth = size.width * revealWidthFactor;
  final double revealLeft = size.width - revealWidth;
  final double waveAmplitude = size.width * edgeCurveFactor * 0.6;
  
  // Create a subtle sine wave pattern along the edge
  final path = Path();
  path.moveTo(revealLeft, 0);
  
  // Wave parameters
  const int waveCount = 2; // Number of wave cycles
  final double waveHeight = size.height / waveCount;
  
  for (int i = 0; i < waveCount; i++) {
    final double startY = i * waveHeight;
    final double midY = startY + waveHeight / 2;
    final double endY = startY + waveHeight;
    
    // First half of wave (curves left/inward)
    path.quadraticBezierTo(
      revealLeft - waveAmplitude,
      midY - waveHeight / 4,
      revealLeft - waveAmplitude * 0.5,
      midY,
    );
    // Second half of wave (curves right/outward)
    path.quadraticBezierTo(
      revealLeft,
      midY + waveHeight / 4,
      revealLeft,
      endY,
    );
  }
  
  path.lineTo(size.width, size.height);
  path.lineTo(size.width, 0);
  path.close();
  
  return path;
}

/// A focused Live TV screen. Shows a hero for the currently airing program
/// on a featured channel, plus channel rows below.
/// Helper class to hold EPG data for channel cards to prevent unnecessary rebuilds
class _EpgCardData {
  final Program? program;
  final bool hasUsableData;
  final bool isLoading;

  _EpgCardData({
    required this.program,
    required this.hasUsableData,
    required this.isLoading,
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
  late final LiveTvArtworkService _artworkService;
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
  bool _initialFocusRequested = false;
  final Map<String, int> _focusedIndexBySection = {};

  final Map<String, List<Channel>> _categoryChannelCache = {};
  final Set<String> _categoryChannelLoading = {};
  List<String> _categoryNames = [];
  final Set<String> _categoryNameSet = {};
  final Set<String> _epgPrefetchedRows = {};
  bool _loadingCategories = false;
  // bool _showUpdatingIndicator = false; // Internal state for indicator?

  static const int _initialCategoryPrefetchCount = 8;
  static const int _rowInitialFetch = 12;
  static const int _rowFetchStep = 16;

  static const String _liveTvSnapshotKey = 'live_tv_snapshot_v1';
  static const Duration _liveTvSnapshotTtl = Duration(hours: 6);
  static const int _liveTvSnapshotCategoryLimit = 6;
  static const int _liveTvSnapshotRowLimit = 12;
  Timer? _snapshotSaveDebounce;

  int _visibleCategoryCount = 10; // Restored but conservative
  static const int _categoryChunkSize = 6;
  static const double _categoryPrefetchExtent =
      600; // Restored but conservative
  static const double _heroMatteRevealWidthFactor = 0.5;
  static const double _heroMatteEdgeCurveFactor = 0.08;
  // Cover the curved reveal so the image doesn't end with a straight edge.
  static const double _heroImageWidthFactor =
      _heroMatteRevealWidthFactor + _heroMatteEdgeCurveFactor;
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
  final Set<String> _prefetchedTitleLogoKeys = {};
  final Queue<String> _prefetchedTitleLogoOrder = Queue<String>();
  final Set<String> _prefetchedArtworkKeys = {};
  final Queue<String> _prefetchedArtworkOrder = Queue<String>();
  // _rowVisibleCountBySection removed
  final Map<String, int> _categoryOffsets = {};
  final Map<String, bool> _categoryHasMore = {};
  final Set<String> _categoryAppendQueue = {};
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
  bool _suspendHeroBackground = false;
  bool _snapshotApplied = false;
  static const bool _forceRowsVisible = false;
  static const bool _debugRowProbe = false;

  // Timer for EPG loading timeout fallback
  late final DateTime _initTime;
  Timer? _skeletonWatchdog;
  DateTime? _skeletonShownAt;
  DateTime? _lastRecoveryAttempt;
  bool _isSkeletonVisible = false;
  bool _recoveryInFlight = false;
  bool _hasShownContent =
      false; // Prevents skeleton from reappearing after content displayed
  static const Duration _skeletonStuckThreshold = Duration(seconds: 35);
  static const Duration _skeletonWatchInterval = Duration(seconds: 3);
  bool _startupOverlayActive = false;
  DateTime? _overlayShownAt;
  Timer? _idleTimer;
  DateTime _lastInteractionAt = DateTime.now();
  bool _isIdle = false;
  static const Duration _idleThreshold = Duration(seconds: 30);
  static const Duration _idleCheckInterval = Duration(seconds: 6);
  Timer? _artworkRetryWindowTimer;
  bool _artworkRetryWindowActive = false;
  DateTime? _lastArtworkRetryWindow;

  // Status flags
  final bool _tmdbEnabled = true;
  final bool _fanartEnabled = true;
  final bool _sportsDbEnabled = true;
  final List<String> _categoryCacheOrder = [];

  // Ready-first display: Wait for content to be fully ready before showing
  bool _initialContentReady = false;
  bool _readinessCheckInProgress = false;
  Timer? _readinessTimeout;
  static const Duration _readinessGracePeriod = Duration(seconds: 8);
  static const int _minReadyChannelsForDisplay = 6;
  String _readinessStatus = 'Initializing...';
  double _readinessProgress = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _artworkService = LiveTvArtworkService(
      onArtworkUpdate: () {
        if (mounted) setState(() {});
      },
    );
    _artworkService.initialize();
    _initTime = DateTime.now(); // Track init time for EPG loading timeout
    // Initialize scroll controller
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScrollPrefetch);

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

  // Helper: replace the word 'EPG' with 'data' in the status (second) line.
  String? _replaceEpgWithData(String? s) {
    if (s == null) return null;
    return s
        .replaceAll(RegExp(r'\bEPG\b', caseSensitive: false), 'data')
        .trim();
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
      final decoded = await compute(jsonDecode, raw);
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
              final epgId = channel.epgLookupId;
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
        ..addEntries(cache.entries
            .map((entry) => MapEntry(entry.key, entry.value.length)));
      _categoryHasMore
        ..clear()
        ..addEntries(cache.entries.map((entry) => MapEntry(
            entry.key, entry.value.length >= _liveTvSnapshotRowLimit)));
      // Show all snapshot categories, not limited to _liveTvSnapshotCategoryLimit
      _visibleCategoryCount = _categoryNames.length;

      if (mounted) {
        setState(() {});
      }
      if (programSnapshot.isNotEmpty) {
        final epgService =
            Provider.of<IncrementalEpgService>(context, listen: false);
        epgService.applyProgramSnapshot(programSnapshot);
      }
      // Immediately merge any additional categories from the provider
      // This ensures we don't stay stuck on just the snapshot categories
      if (mounted) {
        final channelProvider =
            Provider.of<ChannelProvider>(context, listen: false);
        final providerCategories = channelProvider.getAllCategoryNames();
        if (providerCategories.isNotEmpty) {
          for (final name in providerCategories) {
            if (_categoryNameSet.add(name)) {
              _categoryNames.add(name);
            }
          }
          if (_categoryNames.length > _visibleCategoryCount) {
            _visibleCategoryCount = _categoryNames.length;
            setState(() {});
          }
        }
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
    final channelId = channel.epgLookupId;
    final programs = epgService.getProgramsForChannel(
      channelId,
      channelName: channel.epgLookupNameFallback,
      groupTitle: channel.groupTitle,
    );
    if (programs.isEmpty) return const [];
    final now = DateTime.now();
    Program? current;
    Program? next;
    for (final program in programs) {
      if (program.startTime.isBefore(now) && program.endTime.isAfter(now)) {
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

  void _scheduleLiveTvSnapshotSave() {
    _snapshotSaveDebounce?.cancel();
    _snapshotSaveDebounce = Timer(const Duration(seconds: 10), () {
      if (mounted) _saveLiveTvSnapshot();
    });
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
      for (final category
          in _categoryNames.take(_liveTvSnapshotCategoryLimit)) {
        final channels = _categoryChannelCache[category];
        if (channels == null || channels.isEmpty) continue;
        _prefetchRowArtworkForChannels(
          channels.take(_liveTvSnapshotRowLimit).toList(),
          limit: 6,
        );
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
    _tryInitialFocus();
  }

  void _tryInitialFocus() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      // FIX: Don't steal focus if the user is already focused on something else (like the Sidebar),
      // unless this is a fresh cold start of the app.
      final channelProvider = context.read<ChannelProvider>();
      final currentFocus = FocusManager.instance.primaryFocus;

      // If we are NOT in cold start, and something already has valid focus, respect it.
      if (!channelProvider.isColdStartLoad &&
          currentFocus != null &&
          currentFocus.context != null) {
        // Just return, let the user navigate naturally (e.g. D-pad Right from sidebar)
        return;
      }

      // Start with Watch Now button for better UX - user sees hero first
      if (_watchButtonFocus.canRequestFocus) {
        _watchButtonFocus.requestFocus();
      } else if (_firstFeaturedFocus.canRequestFocus) {
        _firstFeaturedFocus.requestFocus();
      } else if (_firstChannelFocus.canRequestFocus) {
        _firstChannelFocus.requestFocus();
      } else if (_skeletonFocus.canRequestFocus) {
        _skeletonFocus.requestFocus();
      } else {
        // None of the focus nodes are ready yet, retry after a short delay
        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted) _tryInitialFocus();
        });
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
    _idleTimer ??= Timer.periodic(_idleCheckInterval, (_) => _checkIdleState());
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
    _artworkService.enterIdleMode();
    MemoryManager.checkMemoryPressure();
  }

  void _exitIdleMode() {
    _isIdle = false;
    _artworkService.exitIdleMode();
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
    // Successfully showing content - remember this to prevent skeleton flicker
    _hasShownContent = true;
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
        now.difference(_lastRecoveryAttempt!) < const Duration(seconds: 12)) {
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

  /// Check if content is ready to display (EPG + artwork available for visible items)
  Future<void> _checkContentReadiness(
    List<Channel> channels,
    IncrementalEpgService epgService,
  ) async {
    // Skip if already ready or check in progress
    if (_initialContentReady || _readinessCheckInProgress) return;
    if (channels.isEmpty) return;

    _readinessCheckInProgress = true;

    try {
      // Start the timeout timer on first check
      _startReadinessTimeout();

      // Get current programs for visible channels
      final programs = <Program>[];
      final channelsWithPrograms = <Channel>[];
      final visibleCount = math.min(channels.length, 12);

      for (int i = 0; i < visibleCount; i++) {
        final channel = channels[i];
        final program = epgService.getCurrentProgram(
          channel.epgLookupId,
          channelName: channel.epgLookupNameFallback,
          groupTitle: channel.groupTitle,
        );
        if (program != null) {
          programs.add(program);
          channelsWithPrograms.add(channel);
        }
      }

      // Update progress
      final epgReady = programs.length;
      _readinessProgress = (epgReady / visibleCount).clamp(0.0, 0.5);

      if (programs.isEmpty) {
        _readinessStatus = 'Loading program data...';
        _readinessCheckInProgress = false;
        if (mounted) setState(() {});
        return;
      }

      _readinessStatus = 'Loading artwork...';
      if (mounted) setState(() {});

      // Check artwork readiness
      final artworkReady =
          _artworkService.countReadyArtwork(programs, channelsWithPrograms);
      _readinessProgress =
          0.5 + (artworkReady / programs.length * 0.5).clamp(0.0, 0.5);

      debugLog(
          'LiveTV readiness: EPG=$epgReady/$visibleCount, artwork=$artworkReady/${programs.length}');

      // Consider ready if we have minimum channels ready
      if (artworkReady >= _minReadyChannelsForDisplay ||
          artworkReady >= programs.length * 0.6) {
        _markContentReady();
        return;
      }

      // Trigger prefetch and wait briefly for more artwork
      if (programs.isNotEmpty) {
        // Queue high-priority artwork fetch for visible programs
        for (int i = 0; i < math.min(programs.length, 8); i++) {
          _artworkService.ensureFreshProgramArtwork(
            programs[i],
            channelsWithPrograms[i],
            highPriority: true,
          );
        }
      }

      if (mounted) setState(() {});
    } finally {
      _readinessCheckInProgress = false;
    }
  }

  void _startReadinessTimeout() {
    if (_readinessTimeout != null) return;
    _readinessTimeout = Timer(_readinessGracePeriod, () {
      if (!_initialContentReady && mounted) {
        debugLog(
            'LiveTV: Readiness timeout reached, showing content regardless');
        _markContentReady();
      }
    });
  }

  void _markContentReady() {
    if (_initialContentReady) return;
    _initialContentReady = true;
    _readinessTimeout?.cancel();
    _readinessTimeout = null;
    _readinessProgress = 1.0;
    _readinessStatus = 'Ready';
    debugLog('LiveTV: Content marked as ready, displaying UI');
    if (mounted) setState(() {});
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
    if (_loadingCategories) return;

    // Skip if we already have categories and they match what the provider has
    if (_categoryNames.isNotEmpty) {
      // Still allow refresh if provider might have more categories
      // The actual comparison happens in didChangeDependencies
      return;
    }

    debugLog(
        'LiveTV: Categories empty but channels present ($channelCount), requesting prefetch...');
    _categoryPrefetchRequested = false;
    _requestCategoryPrefetch();
  }

  void _ensureEpgForChannels(
      List<Channel> channels, IncrementalEpgService epgService) {
    final missingIds = <String>[];
    final missingNames = <String?>[];
    for (final channel in channels) {
      final channelId = channel.epgLookupId;
      final hasPrograms = epgService.hasProgramsForChannel(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );
      if (!hasPrograms) {
        missingIds.add(channelId);
        missingNames.add(channel.epgLookupNameFallback);
      }
    }

    if (missingIds.isNotEmpty) {
      // Priority load first 12 channels (visible on initial screen)
      // These load immediately without batching delay
      const visibleCount = 12;
      if (missingIds.length <= visibleCount) {
        unawaited(epgService.priorityLoadVisibleChannels(
          missingIds,
          channelNames: missingNames,
        ));
      } else {
        // Split: priority for visible, batch for rest
        unawaited(epgService.priorityLoadVisibleChannels(
          missingIds.sublist(0, visibleCount),
          channelNames: missingNames.sublist(0, visibleCount),
        ));
        unawaited(epgService.ensureChannelsLoadedBatch(
          missingIds.sublist(visibleCount),
          channelNames: missingNames.sublist(visibleCount),
        ));
      }
    }
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
    final contentTop = _contentTopForLayout(context, heroHeight, cardPeek);
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
        final channelId = channel.epgLookupId;
        final program = epgService.getCurrentProgram(
          channelId,
          channelName: channel.epgLookupNameFallback,
          groupTitle: channel.groupTitle,
        );
        if (program == null) continue;
        _artworkService.ensureFreshProgramArtwork(
          program,
          channel,
          highPriority: true,
        );
      }
    }
  }

  @override
  void dispose() {
    _artworkService.dispose();
    WidgetsBinding.instance.removeObserver(this);
    FocusManager.instance.removeListener(_handleFocusChange);
    _stopIdleTimer();
    _stopSkeletonWatchdog();
    _artworkRetryWindowTimer?.cancel();
    _readinessTimeout?.cancel();
    _focusChangeNotifier.dispose();
    _timerService.unregister('live_tv_carousel');
    _featuredRotationTimer?.cancel();

    _scrollController.dispose();
    for (final controller in _rowScrollControllers.values) {
      controller.dispose();
    }
    _rowScrollControllers.clear();
    _rowScrollInitialized.clear();

    // Dispose category row notifiers to prevent memory leaks
    for (final notifier in _categoryRowNotifiers.values) {
      notifier.dispose();
    }
    _categoryRowNotifiers.clear();

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
    final channelId = channel.epgLookupId;
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
      // Only limit visible count on initial load, not when we already have categories
      // This prevents resetting a properly expanded list back to 8
      if (_visibleCategoryCount < _categoryNames.length) {
        _visibleCategoryCount = _categoryNames.length;
      }
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
        _prefetchRowArtworkForChannels(channels, limit: 6);
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
    _categoryChannelLoading.add(category); // Mark as loading
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
    var timedOut = false;
    var retryLoad = false;
    var removeCategory = false;
    try {
      final channelProvider =
          Provider.of<ChannelProvider>(context, listen: false);
      final offset = append ? (_categoryOffsets[category] ?? 0) : 0;
      final limit = append ? _rowFetchStep : _rowInitialFetch;

      // Add timeout to prevent infinite waiting
      final channels = await channelProvider
          .getChannelsForCategoryAsync(
        category,
        offset: offset,
        limit: limit,
      )
          .timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          debugLog('LiveTV: Timeout loading category "$category"');
          timedOut = true;
          return <Channel>[];
        },
      );

      if (!mounted) return;
      if (timedOut) {
        retryLoad = true;
      }
      if (channels.isNotEmpty) {
        if (append && _categoryChannelCache.containsKey(category)) {
          _categoryChannelCache[category] = [
            ..._categoryChannelCache[category] ?? [],
            ...channels,
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
        _prefetchRowArtworkForChannels(channels, limit: 6);
        _categoryOffsets[category] = offset + channels.length;
        _trackCachedCategory(category);
      } else if (!append) {
        final channelCount =
            channelProvider.getChannelCountForCategory(category);
        if (channelCount == 0) {
          removeCategory = true;
        } else {
          retryLoad = true;
        }
      }
      if (!timedOut && channels.length < limit) {
        _categoryHasMore[category] = false;
      } else if (!timedOut) {
        _categoryHasMore[category] = true;
      }
      if (channels.isNotEmpty) {
        _scheduleLiveTvSnapshotSave();
      }
    } catch (e) {
      debugLog('LiveTV: Failed to load category "$category": $e');
      retryLoad = true;
    } finally {
      if (mounted) {
        _categoryChannelLoading.remove(category);
        _activeCategoryLoads = (_activeCategoryLoads - 1).clamp(0, 9999);
        _drainCategoryLoadQueue();
        if (removeCategory) {
          _removeCategoryRow(category);
        } else {
          if (retryLoad && _categoryChannelCache[category]?.isEmpty == true) {
            _categoryChannelCache.remove(category);
          }
          _notifyCategoryRow(category);
        }
        if (retryLoad && !removeCategory) {
          Future.delayed(const Duration(seconds: 2), () {
            if (!mounted) return;
            if (!_categoryNameSet.contains(category)) return;
            if (_categoryChannelLoading.contains(category)) return;
            if (_categoryChannelCache.containsKey(category)) return;
            _enqueueCategoryLoad(category);
          });
        }
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

  void _replaceCategories(List<String> categories) {
    final next = List<String>.from(categories);
    final nextSet = next.toSet();
    _categoryNames = next;
    _categoryNameSet
      ..clear()
      ..addAll(nextSet);
    _visibleCategoryCount = _categoryNames.length;
    _lastPrefetchAnchor = -1;
    _purgeCategoryState(nextSet);
    _startArtworkRetryWindow();
  }

  void _purgeCategoryState(Set<String> keep) {
    _categoryChannelCache.removeWhere((key, _) => !keep.contains(key));
    _categoryOffsets.removeWhere((key, _) => !keep.contains(key));
    _categoryHasMore.removeWhere((key, _) => !keep.contains(key));
    _categoryChannelLoading.removeWhere((key) => !keep.contains(key));
    _categoryLoadQueue.removeWhere((key) => !keep.contains(key));
    _categoryAppendQueue.removeWhere((key) => !keep.contains(key));
    _categoryRowNotifiers.removeWhere((key, _) => !keep.contains(key));
    _rowScrollControllers.removeWhere((key, _) => !keep.contains(key));
    _rowScrollInitialized.removeWhere((key) => !keep.contains(key));
  }

  void _removeCategoryRow(String category) {
    final removed = _categoryNameSet.remove(category);
    if (!removed) return;
    _categoryNames.remove(category);
    _purgeCategoryState(_categoryNameSet);
    if (_visibleCategoryCount > _categoryNames.length) {
      _visibleCategoryCount = _categoryNames.length;
    }
    _lastPrefetchAnchor = -1;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final provider = Provider.of<ChannelProvider>(context);

    // Refresh categories if we have channels but no categories loaded,
    // or if we have fewer categories than the provider knows about
    if (provider.hasChannels && !_loadingCategories) {
      final providerCategories = provider.getAllCategoryNames();
      if (providerCategories.isEmpty) {
        _maybeRefreshCategories(provider.channelCount);
      } else if (_categoryNames.isEmpty ||
          !listEquals(_categoryNames, providerCategories)) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          _replaceCategories(providerCategories);
          setState(() {});
        });
      }
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
        _initialFocusRequested = false;
        _requestInitialFocus();
        // Force category refresh if we have channels but incomplete categories
        if (provider.hasChannels && !_loadingCategories) {
          final providerCats = provider.getAllCategoryNames();
          if (_categoryNames.isEmpty ||
              providerCats.length > _categoryNames.length) {
            _categoryPrefetchRequested = false;
            _requestCategoryPrefetch();
          }
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
    final bool shouldScrollFirst =
        _scrollController.hasClients && _safeScrollOffset() > 100;
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
              final shouldReplace = _categoryNames.isEmpty ||
                  !listEquals(_categoryNames, latestCategories);
              if (shouldReplace) {
                debugLog(
                    'LiveTV: Syncing categories (provider: ${latestCategories.length}, current: ${_categoryNames.length})');
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (!mounted) return;
                  _replaceCategories(latestCategories);
                  setState(() {});
                  unawaited(_prefetchInitialCategoryRows());
                });
              } else if (_visibleCategoryCount < _categoryNames.length) {
                // No new categories but we're not showing all of them yet
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (!mounted) return;
                  _visibleCategoryCount = _categoryNames.length;
                  setState(() {});
                });
              }
            }

            Widget buildNoPlaylistState(String? errorMessage) {
              _markSkeletonVisibility(false);
              return Center(
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
              );
            }

            if (!hasChannels && channelProvider.noPlaylistConfigured) {
              return buildNoPlaylistState(channelProvider.errorMessage);
            }

            // Use Selector to only rebuild when loading state changes, not on every EPG update
            final epgLoadingState = context.select<
                IncrementalEpgService,
                ({
                  bool isDownloading,
                  bool isParsing,
                  bool isLoading,
                  bool hasEpgUrl,
                  bool hasLoadedPrograms
                })>(
              (epg) => (
                isDownloading: epg.isDownloading,
                isParsing: epg.isParsing,
                isLoading: epg.isLoading,
                hasEpgUrl: epg.hasEpgUrl,
                hasLoadedPrograms: epg.hasLoadedPrograms,
              ),
            );
            final hasDisplayData = hasChannels &&
                (_categoryNames.isNotEmpty || _categoryChannelCache.isNotEmpty);
            final epgBusy = epgLoadingState.isDownloading ||
                epgLoadingState.isParsing ||
                epgLoadingState.isLoading;
            final shouldBlockForEpg = hasDisplayData &&
                epgLoadingState.hasEpgUrl &&
                !epgLoadingState.hasLoadedPrograms;
            // Keep overlay visible until we have actual displayable data
            final categoriesNotReady = channelProvider.isColdStartLoad &&
                _categoryChannelCache.isEmpty &&
                hasChannels;
            final overlayBusy = channelProvider.isLoading ||
                epgLoadingState.isDownloading ||
                epgLoadingState.isParsing ||
                epgLoadingState.isLoading ||
                categoriesNotReady;
            // Show overlay during cold start or when EPG is actively parsing
            // Keep overlay visible for minimum 500ms to prevent flicker
            final now = DateTime.now();
            final minDisplayTime = _overlayShownAt != null &&
                now.difference(_overlayShownAt!) <
                    const Duration(milliseconds: 500);
            final allowBlockingUi = !_hasShownContent;
            final showStartupOverlay = allowBlockingUi &&
                ((channelProvider.isColdStartLoad &&
                        _startupOverlayActive &&
                        overlayBusy &&
                        !hasDisplayData) ||
                    (epgLoadingState.isParsing ||
                        epgLoadingState.isDownloading) ||
                    minDisplayTime);
            if (channelProvider.isColdStartLoad && !_startupOverlayActive) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (!mounted) return;
                if (!_startupOverlayActive) {
                  setState(() {
                    _startupOverlayActive = true;
                    _overlayShownAt = DateTime.now();
                  });
                }
              });
            }
            // Track when overlay is shown for EPG parsing
            if (showStartupOverlay && _overlayShownAt == null) {
              _overlayShownAt = DateTime.now();
            }
            if (_startupOverlayActive && hasDisplayData) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (!mounted) return;
                if (_startupOverlayActive) {
                  setState(() {
                    _startupOverlayActive = false;
                    _overlayShownAt = null;
                  });
                }
              });
            }
            if (_startupOverlayActive && !overlayBusy && !minDisplayTime) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (!mounted) return;
                if (_startupOverlayActive) {
                  setState(() {
                    _startupOverlayActive = false;
                    _overlayShownAt = null;
                  });
                }
              });
            }
            final epgStatus = epgLoadingState.isDownloading
                ? 'Downloading EPG data...'
                : epgLoadingState.isParsing
                    ? 'Parsing EPG data...'
                    : epgLoadingState.isLoading
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
                        // Reduced blur sigma for better performance on low-end/TV GPUs
                        // (was 18, lowered to 6 to avoid long GPU queue/dequeue delays).
                        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                        child: Container(
                          color: Colors.black.withValues(alpha: 0.45),
                          alignment: Alignment.center,
                          child: _buildColdStartOverlayCard(
                            titleText: epgStatus != null ? 'Loading EPG' : null,
                            statusText: _replaceEpgWithData(
                                channelProvider.loadingStatus),
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
                  titleText: epgStatus != null ? 'Loading EPG' : null,
                  statusText:
                      _replaceEpgWithData(channelProvider.loadingStatus),
                  secondaryStatusText: epgStatus,
                  progress: channelProvider.loadingProgress,
                );

            // Block UI until EPG is ready when we have displayable data.
            // But only block on initial load - don't re-display skeleton after content shown
            if ((shouldBlockForEpg || epgBusy) && !_hasShownContent) {
              return buildSkeleton();
            }

            // Show loading overlay during cold start, skeleton only for warm starts
            if (channelProvider.isColdStartLoad &&
                overlayBusy &&
                !_hasShownContent) {
              return buildSkeleton();
            }

            if (!hasChannels &&
                channelProvider.isLoading &&
                !channelProvider.noPlaylistConfigured) {
              return buildSkeleton();
            }

            // If we have categories (data), SHOW THE UI! The EPG can populate later.
            // FIX: If we have channels but no categories yet, extract them synchronously
            // from the in-memory channel list to avoid showing skeleton forever.
            var hasCategories = _categoryNames.isNotEmpty;

            if (!hasCategories && hasChannels && !_loadingCategories) {
              // Synchronously build categories from channels to unblock UI
              final syncCategories = _buildFallbackCategories(channelProvider);
              if (syncCategories.isNotEmpty) {
                debugLog(
                    'LiveTV: Sync-built ${syncCategories.length} categories from channels');
                _categoryNames = syncCategories;
                _categoryNameSet.clear();
                _categoryNameSet.addAll(_categoryNames);
                _visibleCategoryCount = _categoryNames.length;
                hasCategories = true;
                // Trigger async prefetch in background
                unawaited(_prefetchInitialCategoryRows());
              }
            }

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
              return buildNoPlaylistState(errorMessage);
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
                    // FIX: Don't filter out channels just because EPG is missing!
                    // We want to show the channels ASAP.
                    // final readyChannels = _filterChannelsWithLoadedEpg(previewList, epgService);

                    // Trigger EPG load for visible channels but don't hide them
                    _ensureEpgForChannels(previewList, epgService);

                    List<Channel> displayChannels = previewList;
                    final timeSinceInit = DateTime.now().difference(_initTime);

                    if (displayChannels.isEmpty) {
                      // Check for explicit EPG errors first
                      if (epgService.error != null &&
                          epgService.error!.isNotEmpty) {
                        _markSkeletonVisibility(false);
                        return _buildEpgError(epgService.error!);
                      }

                      final isEpgLoading = epgService.isLoading ||
                          epgService.isParsing ||
                          epgService.isDownloading;

                      // Also check if batch loading is in progress
                      final isBatchLoading = epgService.isBatchLoading;

                      // Only show skeleton if we haven't shown content yet
                      // This prevents flickering when EPG background refreshes occur
                      if ((isEpgLoading || isBatchLoading) &&
                          !_hasShownContent) {
                        debugLog(
                            'LiveTV: Waiting for EPG (${timeSinceInit.inMilliseconds}ms, batchLoading=$isBatchLoading)');
                        return buildSkeleton();
                      }

                      // Give EPG a short grace period to load programs if none are present yet
                      // But if we already have programs (just no matches), fail immediately
                      // Skip this if we've already shown content once
                      final gracefulWait = !epgService.hasLoadedPrograms &&
                          timeSinceInit.inSeconds < 5 &&
                          !_hasShownContent;

                      if (gracefulWait) {
                        debugLog(
                            'LiveTV: EPG not ready yet, waiting (${timeSinceInit.inMilliseconds}ms)');
                        return buildSkeleton();
                      }

                      // EPG NOT loading, no error, but still no channels with data after timeout
                      if (!epgService.hasEpgUrl) {
                        _markSkeletonVisibility(false);
                        return _buildEpgError(
                            'No EPG URL configured. Please add an EPG URL in Settings.');
                      }

                      // Check if EPG has any loaded programs at all
                      if (!epgService.hasLoadedPrograms) {
                        _markSkeletonVisibility(false);
                        return _buildEpgError(
                            'EPG data could not be loaded. Check your EPG URL in Settings.');
                      }

                      // EPG has programs but none matched - show error about mappings
                      _markSkeletonVisibility(false);
                      debugLog(
                          'LiveTV: EPG has ${epgService.availableChannels.length} channels but none matched ${previewList.length} playlist channels');
                      return _buildEpgError(
                          'EPG channels did not match playlist. Check EPG mappings in Settings.');
                    }

                    _markSkeletonVisibility(false);

                    // READY-FIRST DISPLAY: Check if content is ready before showing
                    // This ensures EPG data AND artwork are available for visible items
                    if (!_initialContentReady && !_hasShownContent) {
                      // Trigger readiness check
                      unawaited(
                          _checkContentReadiness(displayChannels, epgService));

                      // Show skeleton with readiness progress while waiting
                      return _buildSkeletonLoaderTracked(
                        showColdStartOverlay: false,
                        titleText: 'Preparing content',
                        statusText: _readinessStatus,
                        secondaryStatusText: null,
                        progress: _readinessProgress,
                      );
                    }

                    // Mark that we've shown content to prevent skeleton flicker
                    _hasShownContent = true;

                    // displayChannels already defined above

                    // Handle Stable ID vs Index
                    if (_featuredChannelId != null) {
                      final idx = displayChannels.indexWhere(
                          (c) => (c.epgLookupId) == _featuredChannelId);
                      if (idx != -1) {
                        _featuredIndex = idx;
                      }
                    }

                    final safeFeaturedIndex =
                        _featuredIndex % displayChannels.length;
                    final featuredChannel = displayChannels[safeFeaturedIndex];

                    _featuredChannelId = featuredChannel.epgLookupId;

                    // Ensure EPG is triggered for the selected hero
                    if (_featuredChannelId != null &&
                        _featuredChannelId!.isNotEmpty) {
                      unawaited(epgService.ensureChannelLoaded(
                          _featuredChannelId!,
                          channelName: featuredChannel.epgLookupNameFallback));
                    }

                    // Use AnimatedOpacity for smooth fade-in when content first appears
                    return AnimatedOpacity(
                      opacity: _initialContentReady ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                      child: Stack(
                        children: [
                          _buildFullScreenHero(
                            context,
                            featuredChannel,
                            displayChannels,
                          ),
                          _buildBackgroundUpdateIndicator(context),
                        ],
                      ),
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
    final epgService = context.read<IncrementalEpgService>();
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
    final List<String?> missingChannelNames = [];

    // Add most-watched channels first (up to 60% of featured slots)
    final maxMostWatched = math.min(mostWatched.length, 6);
    for (int i = 0; i < maxMostWatched; i++) {
      final channel = mostWatched[i];
      final channelId = channel.epgLookupId;

      // Check if this channel's current program is already featured
      final currentProgram = epgService.getCurrentProgram(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );

      if (currentProgram == null) {
        if (missingChannelIds.add(channelId)) {
          missingChannelNames.add(channel.epgLookupNameFallback);
        }
        continue;
      }

      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.epgLookupNameFallback,
      )) {
        continue;
      }

      final displayTitle = _displayProgramTitle(currentProgram, channel);
      final normalizedTitle = normalizeForFilter(displayTitle);
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
        .where((channel) => !addedChannelIds.contains(channel.epgLookupId))
        .toList();

    // Shuffle for randomness
    availableChannels.shuffle(math.Random());

    final targetFeaturedCount = 10; // Total featured channels to show
    final remainingSlots = targetFeaturedCount - featuredChannels.length;
    final randomCount = math.min(remainingSlots, availableChannels.length);

    for (int i = 0; i < randomCount; i++) {
      final channel = availableChannels[i];
      final channelId = channel.epgLookupId;

      // Check if this channel's current program is already featured
      final currentProgram = epgService.getCurrentProgram(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );

      if (currentProgram == null) {
        if (missingChannelIds.add(channelId)) {
          missingChannelNames.add(channel.epgLookupNameFallback);
        }
        continue;
      }

      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.epgLookupNameFallback,
      )) {
        continue;
      }

      final displayTitle = _displayProgramTitle(currentProgram, channel);
      final normalizedTitle = normalizeForFilter(displayTitle);
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
        final channelId = channel.epgLookupId;
        if (addedChannelIds.contains(channelId)) continue;
        if (epgService.shouldHideChannel(
          channelId,
          channelName: channel.epgLookupNameFallback,
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

    // Only stabilize featured list when EPG is ready and we have enough channels
    // This prevents locking in a sparse list before EPG finishes loading
    final epgReady = !epgService.isLoading &&
        !epgService.isParsing &&
        !epgService.isDownloading;
    final hasEnoughChannels = featuredChannels.length >= 5;
    if (featuredChannels.isNotEmpty && epgReady && hasEnoughChannels) {
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
    final contentTop = _contentTopForLayout(context, heroHeight, cardPeek);
    final contentInset = context.spacingSm() + _sidebarInset();
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

    final epgService = context.read<IncrementalEpgService>();
    final heroCandidates = _buildHeroCandidates(allChannels, epgService);
    final epgHeroCandidates =
        heroCandidates.where((candidate) => candidate.program != null).toList();
    // FIX: Don't block the entire screen just because EPG isn't loaded!
    // If no EPG data, just show the first channel as "hero" with a placeholder.
    // The user can still navigate and watch channels.
    if (epgHeroCandidates.isEmpty && allChannels.isEmpty) {
      // Only block if we have ZERO channels at all.
      return _buildSkeletonLoaderTracked();
    }

    final selectionPool = epgHeroCandidates;
    _lastHeroCandidateCount = selectionPool.length;
    _prefetchTitleLogosForCandidates(selectionPool);
    _prefetchRowArtworkForChannels(
      selectionPool.map((candidate) => candidate.channel).toList(),
      limit: 6,
    );
    // Removed state mutation of _featuredIndex from build method to avoid infinite loops
    // Safe indexing is handled below with modulo operator
    final selectedHero = _lastHeroCandidateCount == 0
        ? null
        : selectionPool[_featuredIndex % _lastHeroCandidateCount];
    final activeChannel = selectedHero?.channel ?? featuredChannel;
    final currentProgram = selectedHero?.program;
    final hasRowData = _categoryNames.any((name) {
      final cached = _categoryChannelCache[name];
      return cached != null && cached.isNotEmpty;
    });
    final showFailsafeRow = !hasRowData;
    final heroImage = _resolveHeroImage(
          currentProgram,
          activeChannel,
          allowFetch: true,
          highPriority: true,
          preferHighRes: true,
        ) ??
        '';
    if (selectedHero?.program != null) {
      _artworkService.ensureFreshProgramArtwork(
        selectedHero!.program!,
        selectedHero.channel,
        highPriority: true,
      );
    }

    if (_forceRowsVisible) {
      final rightInset = context.spacingLg();
      return Container(
        color: AppColors.background,
        child: CustomScrollView(
          key: const PageStorageKey<String>('live_tv_scroll_forced'),
          controller: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: heroHeight,
                child: _buildHeroContent(
                  activeChannel,
                  currentProgram,
                  heroImage,
                  0.0,
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                left: 0,
                right: rightInset,
              ),
              sliver: SliverToBoxAdapter(
                child: _buildFeaturedRow(context, allChannels),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                left: 0,
                right: rightInset,
                bottom: context.spacingXl(),
              ),
              sliver: SliverFixedExtentList(
                itemExtent: _estimateRowHeight(context),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index < 0 || index >= _categoryNames.length) {
                      return const SizedBox.shrink();
                    }
                    final categoryName = _categoryNames[index];
                    return _buildCategoryRowWidget(
                      context,
                      categoryName,
                      index,
                      isFirstRow: false,
                      isFirstCategoryRow: index == 0,
                    );
                  },
                  childCount:
                      math.min(_visibleCategoryCount, _categoryNames.length),
                ),
              ),
            ),
          ],
        ),
      );
    }
    return SizedBox.expand(
      child: Stack(
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
                      Positioned.fill(
                        child: IgnorePointer(
                          child: CustomPaint(
                            painter: const _HeroMattePainter(
                              revealWidthFactor: _heroMatteRevealWidthFactor,
                              edgeCurveFactor: _heroMatteEdgeCurveFactor,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: IgnorePointer(
                          child: const SizedBox.shrink(),
                        ),
                      ),
                      // Matte handled by _HeroMattePainter above.
                      // Bottom gradient for row blend.
                      Positioned(
                        top: contentTop +
                            _rowTitleBlockHeight(context) +
                            context.spacingXs(),
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: ClipPath(
                          clipper: const _HeroBottomScrimClipper(
                            revealWidthFactor: _heroMatteRevealWidthFactor,
                            edgeCurveFactor: _heroMatteEdgeCurveFactor,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppTheme.darkBackground.withAlpha(0),
                                  AppTheme.darkBackground
                                      .withAlpha((0.7 * 255).round()),
                                  AppTheme.darkBackground,
                                ],
                                stops: const [0.0, 0.5, 1.0],
                              ),
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
          // Start just above the peeking card row.
          Positioned(
            top: contentTop +
                _rowTitleBlockHeight(context) +
                context.spacingXs(),
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppTheme.darkBackground,
                    AppTheme.darkBackground,
                    AppTheme.darkBackground,
                  ],
                  stops: [0.0, 0.3, 1.0],
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
                if (_debugRowProbe)
                  SliverToBoxAdapter(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: _sidebarInset() + context.spacingSm(),
                        right: rightInset,
                        bottom: context.spacingSm(),
                      ),
                      height: 120,
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E7F3B).withValues(alpha: 0.8),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.3),
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'DEBUG: SCROLL CONTENT VISIBLE',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                    ) ??
                                const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                      ),
                    ),
                  ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: rightInset,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: KeyedSubtree(
                      key: const ValueKey<String>('live_tv_featured_row'),
                      child: _buildFeaturedRow(context, allChannels),
                    ),
                  ),
                ),
                if (showFailsafeRow)
                  SliverPadding(
                    padding: EdgeInsets.only(
                      left: 0,
                      right: rightInset,
                    ),
                    sliver: SliverToBoxAdapter(
                      child: KeyedSubtree(
                        key: const ValueKey<String>('live_tv_failsafe_row'),
                        child: _buildChannelSection(
                          context,
                          'All Channels',
                          allChannels,
                          allowCategoryPaging: false,
                        ),
                      ),
                    ),
                  ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: rightInset,
                    bottom: context.spacingXl(),
                  ),
                  sliver: SliverFixedExtentList(
                    itemExtent: _estimateRowHeight(context),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index < 0 || index >= _categoryNames.length) {
                          return const SizedBox.shrink();
                        }
                        final categoryName = _categoryNames[index];
                        return KeyedSubtree(
                          key: ValueKey<String>('live_tv_row_$categoryName'),
                          child: _buildCategoryRowWidget(
                            context,
                            categoryName,
                            index,
                            // Category rows don't filter by EPG, but first one gets special focus
                            isFirstRow: false,
                            isFirstCategoryRow: index == 0,
                          ),
                        );
                      },
                      childCount: math.min(
                          _visibleCategoryCount, _categoryNames.length),
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

          // Small non-intrusive updating indicator for background sync
          _buildBackgroundUpdateIndicator(context),
        ],
      ),
    );
  }

  Widget _buildBackgroundUpdateIndicator(BuildContext context) {
    final channelProvider = Provider.of<ChannelProvider>(context);
    if (!channelProvider.isBackgroundSyncing) return const SizedBox.shrink();

    return Positioned(
      top: AppSizes.lg + 60,
      right: AppSizes.lg,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.white24, width: 1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 12,
              height: 12,
              child: CircularProgressIndicator(
                  strokeWidth: 2, color: Colors.white),
            ),
            const SizedBox(width: 8),
            Text('Updating...',
                style: AppTypography.smallText(context)
                    .copyWith(color: Colors.white)),
          ],
        ),
      ),
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
    final title =
        program == null ? channel.name : _displayProgramTitle(program, channel);
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
    final contentTop = _contentTopForLayout(context, heroHeight, cardPeek);
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
              // Focus the first card in the featured row, not a regular category row
              _firstFeaturedFocus.requestFocus();
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
      // Try enrichment for channels missing playlist logos.
      return ChannelLogoWidget(
        channelName: channel.name,
        tvgId: channel.tvgId,
        width: 72,
        height: 48,
        fit: BoxFit.contain,
        backgroundColor: Colors.transparent,
        borderRadius: BorderRadius.circular(6),
      );
    }
    return ChannelLogoWidget(
      channelName: channel.name,
      logoUrl: channel.logoUrl,
      tvgId: channel.tvgId,
      width: 72,
      height: 48,
      fit: BoxFit.contain,
      backgroundColor: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
    );
  }

  String? _getChannelCardImage(
    Program? program,
    Channel? channel,
    bool allowPrefetch, {
    bool highPriority = false,
  }) {
    if (program == null || channel == null) return null;

    // 1. Check service for cached artwork
    final cached = _artworkService.getArtwork(program.id);
    final cachedUrl = _normalizeArtworkUrl(cached, isHero: false);
    if (cachedUrl != null &&
        cachedUrl.isNotEmpty &&
        _isValidProgramArtwork(cachedUrl, channel,
            programTitle: program.title, source: 'cached')) {
      final normalized = normalizeImageUrl(cachedUrl);
      _logArtworkDecision(
        'LiveTV artwork: card source=cached program="${program.title}" url=$normalized',
      );
      return normalized;
    }

    // 2. Check service for title-based cached artwork
    final byTitle = _artworkService.getArtworkByTitle(program, channel);
    final byTitleUrl = _normalizeArtworkUrl(byTitle, isHero: false);
    if (byTitleUrl != null &&
        byTitleUrl.isNotEmpty &&
        _isValidProgramArtwork(byTitleUrl, channel,
            programTitle: program.title, source: 'title_cache')) {
      final normalized = normalizeImageUrl(byTitleUrl);
      _logArtworkDecision(
        'LiveTV artwork: card source=title_cache program="${program.title}" url=$normalized',
      );
      return normalized;
    }

    // 3. Trigger fetch if needed
    if (allowPrefetch) {
      _artworkService.ensureFreshProgramArtwork(program, channel,
          highPriority: highPriority);
    }

    // 4. Skip EPG-provided art for cards (too many poster/portrait assets).
    return null;
  }

  bool _isLikelyPosterUrl(String url) {
    if (url.isEmpty) return false;
    final lower = url.toLowerCase();

    // Explicit keywords in path or query
    if (lower.contains('/poster') ||
        lower.contains('/portrait') ||
        lower.contains('/cover') ||
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

  bool _isLikelyLandscapeUrl(String url) {
    if (url.isEmpty) return false;
    if (_isExplicitBackdropUrl(url)) return true;
    final lower = url.toLowerCase();
    if (lower.contains('backdrop') ||
        lower.contains('background') ||
        lower.contains('fanart') ||
        lower.contains('landscape') ||
        lower.contains('banner')) {
      return true;
    }
    if (lower.contains('image.tmdb.org') &&
        (lower.contains('/w1280/') ||
            lower.contains('/w1920/') ||
            lower.contains('/original/'))) {
      return true;
    }
    final dimensionPattern = RegExp(r'[_/](\d+)x(\d+)[_/.]');
    final match = dimensionPattern.firstMatch(lower);
    if (match != null) {
      final width = int.tryParse(match.group(1) ?? '') ?? 0;
      final height = int.tryParse(match.group(2) ?? '') ?? 0;
      if (width > 0 && height > 0) {
        return width >= (height * 1.2);
      }
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
    if (ImageValidationService.isKnownInvalid(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_invalid_cached',
      );
      return false;
    }
    if (_isLikelyChannelLogoUrl(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_channel_logo_hint',
      );
      return false;
    }
    // Reject poster/portrait artwork to keep hero/cards landscape only.
    if (_isLikelyPosterUrl(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_poster',
      );
      return false;
    }
    if (!_isLikelyLandscapeUrl(url)) {
      _logArtworkDecision(
        'LiveTV artwork: source=${source ?? "unknown"} program="${programTitle ?? "unknown"}" url=$url result=reject_not_landscape',
      );
      return false;
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

  String? _resolveProgramTitleLogo(Program? program, Channel channel) {
    if (program == null) return null;

    // Check TMDB title logo cache first
    final cachedUrl = _artworkService.getTitleLogoForProgram(program, channel);
    if (_isValidTitleLogo(cachedUrl, channel)) {
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
        !_artworkService.isTitleLogoRequestPendingForProgram(
            program, channel)) {
      unawaited(_artworkService.fetchTitleLogo(program, channel));
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
    // Fallback: assume false without size check
    return false;
  }

  String _displayProgramTitle(Program program, Channel? channel) {
    final trimmed = program.title.trim();
    if (trimmed.isEmpty) return program.title;
    final isNews =
        channel != null && ProgramClassifier.isNewsProgram(program, channel);
    final isSports = ProgramClassifier.isSportsProgram(program, channel);
    final isMovie =
        channel != null && ProgramClassifier.isMovieProgram(program, channel);
    return EPGMatchingUtils.normalizeForDisplayTitle(
      trimmed,
      stripEpisodeSubtitle: !(isNews || isSports || isMovie),
    );
  }

  void _logArtworkDecision(String message) {
    if (!_logArtworkMatches) return;
    ArtworkDiagnostics.record(message);
    debugLog(message);
  }

  void _trackCachedCategory(String category) {
    // Only tracking for cache size management now
    if (_categoryChannelCache.containsKey(category)) {
      // handled by map
    }
  }

  List<_HeroCandidate> _buildHeroCandidates(
    List<Channel> channels,
    IncrementalEpgService epgService,
  ) {
    if (channels.isEmpty) return [];

    final candidates = <_HeroCandidate>[];
    // Scan all channels in the preview list (usually 60) to find the best heroes
    for (final channel in channels) {
      final channelId = channel.epgLookupId;
      final program = epgService.getCurrentProgram(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );

      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.epgLookupNameFallback,
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
      final cached = _normalizeArtworkUrl(
          _artworkService.getArtwork(program.id),
          isHero: true);
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
        _artworkService.getArtworkByTitle(program, channel),
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
      // Note: service checks enabled flags internally
      if (allowFetch) {
        _artworkService.ensureFreshProgramArtwork(
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
      } else {
        // Log why EPG image was rejected or missing
        final rawEpgUrl = program.imageUrl;
        if (rawEpgUrl == null || rawEpgUrl.isEmpty) {
          debugLog(
            'LiveTV artwork NONE: program="${program.title}" channel="${channel.name}" '
            'reason=no_epg_image_url',
          );
        } else if (direct == null || direct.isEmpty) {
          debugLog(
            'LiveTV artwork NONE: program="${program.title}" channel="${channel.name}" '
            'reason=epg_url_normalization_failed (raw="$rawEpgUrl")',
          );
        }
      }
    } else {
      // Log more details about why no program was found
      final epgService =
          Provider.of<IncrementalEpgService>(context, listen: false);
      final channelId = channel.epgLookupId;
      final hasPrograms = epgService.hasProgramsForChannel(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );
      debugLog(
        'LiveTV artwork NONE: channel="${channel.name}" (id=$channelId) '
        'reason=no_current_program_from_epg '
        '(hasProgramsForChannel=$hasPrograms, '
        'isLoading=${epgService.isLoading}, '
        'isParsing=${epgService.isParsing}, '
        'availableChannels=${epgService.availableChannels.length})',
      );
    }

    return null;
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
    final window = MemoryManager.isLowMemory
        ? 1
        : (isFirstRow ? _heroPrefetchWindow : _rowPrefetchWindow);
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
      {bool isFirstRow = false,
      bool isFirstCategoryRow = false,
      bool allowCategoryPaging = true}) {
    if (channels.isEmpty) return const SizedBox.shrink();
    final epgService = context.read<IncrementalEpgService>();
    final filteredChannels = <Channel>[];
    final seenProgramKeys = <String>{};
    final missingIds = <String>[];
    final missingNames = <String?>[];
    for (var i = 0; i < channels.length; i++) {
      final channel = channels[i];
      final channelId = channel.epgLookupId;
      final program = epgService.getCurrentProgram(
        channelId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );
      if (program == null) {
        missingIds.add(channelId);
        missingNames.add(channel.epgLookupNameFallback);
        // Don't skip channels in featured row - show them even without EPG
        // This allows users to see channels while EPG is still loading
        // Only skip if we have many channels with EPG and this one doesn't match
        final hasManyWithEpg = filteredChannels.length > 10;
        if (isFirstRow && hasManyWithEpg) {
          // Skip only if we already have enough channels with EPG
          continue;
        }
      }

      // Removed shouldHideChannel check strictly hiding channels.
      // We always show available channels, even if EPG is missing or failed.

      if (isFirstRow && program != null) {
        if (program.title.isNotEmpty) {
          final displayTitle = _displayProgramTitle(program, channel);
          final normalizedTitle = normalizeForFilter(displayTitle);
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
    // Match actual card content spacing: 4dp gap + title + 2dp gap + time
    const infoGapAboveTitle = 4.0;
    const infoGapBelowTitle = 2.0;
    const titleFontSize = 11.0;
    const timeFontSize = 10.0;
    const lineHeight = 1.1;
    final infoHeight = infoGapAboveTitle +
        (titleFontSize * lineHeight) +
        infoGapBelowTitle +
        (timeFontSize * lineHeight);
    // Tight row height - no extra padding
    final rowHeight = cardHeight + infoHeight + focusExtra * 0.5;
    final rowInset = context.spacingSm() + _sidebarInset();

    final sectionKey = title;
    // Visible count logic moved to HorizontalChannelRow widget

    if (allowCategoryPaging) {
      final initialVisible =
          _initialRowVisibleCount(context, cardWidth, rowInset);
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
          padding: EdgeInsets.only(
              left: rowInset, bottom: context.spacingXs() * 0.5),
          child: Text(
            title,
            style: AppTypography.caption(context).copyWith(
              color: AppTheme.textPrimary,
              fontWeight: FontWeight.w600,
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
                // Use isFirstRow OR isFirstCategoryRow for focus node assignment
                isFirstRow: isFirstRow || isFirstCategoryRow,
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
        SizedBox(height: context.spacingXs() * 0.5),
      ],
    );
  }

  Widget _buildCategoryRowWidget(
    BuildContext context,
    String category,
    int index, {
    bool isFirstRow = false,
    bool isFirstCategoryRow = false,
  }) {
    final notifier = _categoryRowNotifierFor(category);
    return ValueListenableBuilder<int>(
      valueListenable: notifier,
      builder: (context, _, __) {
        final channels = _categoryChannelCache[category];
        if (channels == null) {
          // Still loading - show placeholder
          _enqueueCategoryLoad(category);
          return _buildCategoryRowLoading(context, category);
        }
        // FALLBACK: If cache is empty, try sync load from ChannelProvider in-memory list
        var effectiveChannels = channels;
        if (effectiveChannels.isEmpty) {
          final channelProvider =
              Provider.of<ChannelProvider>(context, listen: false);
          final syncChannels = channelProvider.getFilteredChannels(
              category: category, limit: 20);
          if (syncChannels.isNotEmpty) {
            _categoryChannelCache[category] = syncChannels;
            effectiveChannels = syncChannels;
          }
        }
        if (effectiveChannels.isEmpty) {
          // Treat empty as transient unless the provider confirms no channels.
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted) return;
            final channelProvider =
                Provider.of<ChannelProvider>(context, listen: false);
            final channelCount =
                channelProvider.getChannelCountForCategory(category);
            if (channelCount == 0) {
              _removeCategoryRow(category);
              setState(() {});
            } else {
              _categoryChannelCache.remove(category);
              _enqueueCategoryLoad(category);
            }
          });
          return _buildCategoryRowLoading(context, category);
        }
        _prefetchEpgForRow(category, effectiveChannels);
        return _buildChannelSection(
          context,
          category,
          effectiveChannels,
          isFirstRow: isFirstRow,
          isFirstCategoryRow: isFirstCategoryRow,
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
        left: context.spacingSm() + _sidebarInset(),
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
                    color:
                        AppTheme.cardBackground.withAlpha((0.5 * 255).round()),
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
    // Match actual card content spacing: 4dp gap + title + 2dp gap + time
    const infoGapAboveTitle = 4.0;
    const infoGapBelowTitle = 2.0;
    const titleFontSize = 11.0;
    const timeFontSize = 10.0;
    const lineHeight = 1.1;
    final infoHeight = infoGapAboveTitle +
        (titleFontSize * lineHeight) +
        infoGapBelowTitle +
        (timeFontSize * lineHeight);
    // Account for category header + spacers (no underline anymore)
    final captionStyle = AppTypography.caption(context);
    final captionHeight =
        (captionStyle.fontSize ?? 13.0) * (captionStyle.height ?? 1.2);
    // Header spacing: title bottom padding only
    final headerSpacing = context.spacingXs() * 0.5;
    final rowBottomSpacing = context.spacingXs() * 0.5;

    // Total calculated height of one full row block in the list
    final cardRowHeight = cardHeight + infoHeight + focusExtra * 0.5;
    final totalHeight =
        cardRowHeight + captionHeight + headerSpacing + rowBottomSpacing;
    // Safety minimum to prevent zero-height rows if measurements fail
    return math.max(120.0, totalHeight);
  }

  double _sidebarInset() => AppSpacing.sidebarCollapsedWidth;

  void _prefetchEpgForRow(String category, List<Channel> channels) {
    if (_epgPrefetchedRows.contains(category)) return;
    _epgPrefetchedRows.add(category);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final epgService =
          Provider.of<IncrementalEpgService>(context, listen: false);
      final channelIds = channels
          .map((c) => c.epgLookupId)
          .where((id) => id.isNotEmpty)
          .toList();
      final channelNames =
          channels.map((c) => c.epgLookupNameFallback).toList();
      if (channelIds.isEmpty) return;
      unawaited(epgService.ensureChannelsLoadedBatch(
        channelIds,
        channelNames: channelNames,
      ));
    });
  }

  void _prefetchTitleLogosForCandidates(
    List<_HeroCandidate> candidates, {
    int limit = 4,
  }) {
    if (candidates.isEmpty) return;
    var queued = 0;
    for (final candidate in candidates) {
      if (queued >= limit) break;
      final program = candidate.program;
      if (program == null) continue;

      final normalized = EPGMatchingUtils.normalizeForArtwork(program.title);
      if (normalized.isEmpty) continue;
      final key = '${candidate.channel.epgLookupId}|$normalized';

      if (_prefetchedTitleLogoKeys.contains(key)) continue;

      final cached =
          _artworkService.getTitleLogoForProgram(program, candidate.channel);
      if (cached != null && cached.isNotEmpty) {
        _prefetchedTitleLogoKeys.add(key);
        _prefetchedTitleLogoOrder.add(key);
        _trimPrefetchedTitleLogos();
        continue;
      }

      if (_artworkService.isTitleLogoRequestPendingForProgram(
          program, candidate.channel)) {
        continue;
      }

      _prefetchedTitleLogoKeys.add(key);
      _prefetchedTitleLogoOrder.add(key);
      _trimPrefetchedTitleLogos();
      unawaited(_artworkService.fetchTitleLogo(program, candidate.channel));
      queued++;
    }
  }

  void _trimPrefetchedTitleLogos() {
    const maxEntries = 120;
    while (_prefetchedTitleLogoOrder.length > maxEntries) {
      final removed = _prefetchedTitleLogoOrder.removeFirst();
      _prefetchedTitleLogoKeys.remove(removed);
    }
  }

  void _prefetchRowArtworkForChannels(List<Channel> channels, {int limit = 8}) {
    if (channels.isEmpty) return;
    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);
    var queued = 0;
    for (final channel in channels) {
      if (queued >= limit) break;
      final program = epgService.getCurrentProgram(
        channel.epgLookupId,
        channelName: channel.epgLookupNameFallback,
        groupTitle: channel.groupTitle,
      );
      if (program == null) continue;

      final normalized = EPGMatchingUtils.normalizeForArtwork(program.title);
      if (normalized.isEmpty) continue;

      final key = '${channel.epgLookupId}|$normalized';
      if (_prefetchedArtworkKeys.contains(key)) continue;

      _prefetchedArtworkKeys.add(key);
      _prefetchedArtworkOrder.add(key);
      _trimPrefetchedArtwork();
      _artworkService.ensureFreshProgramArtwork(
        program,
        channel,
        highPriority: false,
      );
      queued++;
    }
  }

  void _trimPrefetchedArtwork() {
    const maxEntries = 200;
    while (_prefetchedArtworkOrder.length > maxEntries) {
      final removed = _prefetchedArtworkOrder.removeFirst();
      _prefetchedArtworkKeys.remove(removed);
    }
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
    // RepaintBoundary prevents repaints from propagating to/from other cards
    return RepaintBoundary(
      child: SizedBox(
        width: cardWidth,
        height: rowHeight,
        child: Focus(
          focusNode: focusNode,
          canRequestFocus: true,
          onFocusChange: (hasFocus) {
            if (hasFocus) {
              // Update focused index without triggering full screen rebuild if possible
              _focusedIndexBySection[sectionKey] = index;
              _lastFocusedCardKey = '$sectionKey|${channel.epgLookupId}|$index';
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
                // Let Flutter handle focus traversal naturally
                return KeyEventResult.ignored;
              }
              if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
                // Let Flutter handle focus traversal naturally
                return KeyEventResult.ignored;
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
          child: Selector<IncrementalEpgService, _EpgCardData>(
            selector: (context, epgService) {
              // Always try to get program data, even during loading if available
              // This prevents flickering by showing data as soon as it's ready
              final channelId = channel.epgLookupId;
              final program = epgService.getCurrentProgram(
                channelId,
                channelName: channel.epgLookupNameFallback,
                groupTitle: channel.groupTitle,
              );
              return _EpgCardData(
                program: program,
                hasUsableData: epgService.hasUsableData,
                isLoading: epgService.isParsing || epgService.isDownloading,
              );
            },
            shouldRebuild: (previous, next) {
              // Only rebuild if program actually changed (not just state changes)
              // Compare program by ID and title to detect real changes
              final prevId = previous.program?.id;
              final nextId = next.program?.id;
              final prevTitle = previous.program?.title;
              final nextTitle = next.program?.title;

              // If both are null, don't rebuild
              // unless transitioning from loading to loaded
              if (prevId == null && nextId == null) {
                // Only rebuild if we went from loading to not loading (but still no data)
                return previous.isLoading && !next.isLoading;
              }

              // Rebuild if program ID changed
              if (prevId != nextId) return true;

              // Rebuild if program title changes (same program ID, different show... unlikely but safe)
              if (prevTitle != nextTitle) return true;

              return false;
            },
            builder: (context, epgData, _) {
              final isFocused = Focus.of(context).hasFocus;
              final epgService =
                  Provider.of<IncrementalEpgService>(context, listen: false);

              // Load EPG for focused channel or if we have usable data but no program yet
              if (isFocused &&
                  epgData.program == null &&
                  epgData.hasUsableData) {
                unawaited(epgService.ensureChannelLoaded(
                  channel.epgLookupId,
                  channelName: channel.epgLookupNameFallback,
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
                    epgData.program,
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
    final displayTitle = currentProgram == null
        ? ''
        : _displayProgramTitle(currentProgram, channel);
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
              width: isFocused ? 4 : 1,
            ),
            boxShadow: isFocused
                ? [
                    ...TVFocusStyle.focusedShadow,
                    BoxShadow(
                      color: AppTheme.focusBorder.withValues(alpha: 0.5),
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                  ]
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
              displayTitle,
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

  Widget _buildChannelCardFallback(Program? program, Channel channel) {
    // Try to use channel logo as fallback instead of showing an empty card
    final logoUrl = channel.logoUrl;
    if (logoUrl != null && logoUrl.isNotEmpty) {
      return _buildLogoAsFallback(logoUrl, channel.name);
    }
    return _buildMissingArtworkFallback(channel.name);
  }

  Widget _buildLogoAsFallback(String logoUrl, String channelName) {
    final normalizedUrl = normalizeImageUrl(logoUrl);
    final isSvg = normalizedUrl.toLowerCase().endsWith('.svg') ||
        normalizedUrl.toLowerCase().contains('.svg?');

    return BrandFallbackBackground(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: isSvg
              ? SvgPicture.network(
                  normalizedUrl,
                  fit: BoxFit.contain,
                  headers: HttpClientService().imageHeaders,
                  placeholderBuilder: (_) =>
                      _buildMissingArtworkFallback(channelName),
                )
              : (ImageFailureCache.shouldSkip(normalizedUrl)
                  ? _buildMissingArtworkFallback(channelName)
                  : CachedNetworkImage(
                      imageUrl: normalizedUrl,
                      httpHeaders: HttpClientService().imageHeaders,
                      fit: BoxFit.contain,
                      imageBuilder: (context, imageProvider) {
                        ImageFailureCache.recordSuccess(normalizedUrl);
                        return Image(
                          image: imageProvider,
                          fit: BoxFit.contain,
                          gaplessPlayback: true,
                        );
                      },
                      placeholder: (_, __) =>
                          _buildMissingArtworkFallback(channelName),
                      errorWidget: (_, url, error) {
                        ImageFailureCache.recordFailure(url, error);
                        return _buildMissingArtworkFallback(channelName);
                      },
                      useOldImageOnUrlChange: true,
                    )),
        ),
      ),
    );
  }


  Widget _buildMissingArtworkFallback([String? channelName]) {
    return BrandFallbackBackground(
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = constraints.maxWidth;
            final maxHeight = constraints.maxHeight;
            final logoWidth = (maxWidth * 0.6).clamp(40.0, maxWidth);
            final logoHeight = (maxHeight * 0.35).clamp(24.0, maxHeight);
            if (channelName == null || channelName.isEmpty) {
              return Icon(
                Icons.tv,
                color: Colors.white.withValues(alpha: 0.55),
                size: math.min(maxWidth, maxHeight) * 0.3,
              );
            }
            return ChannelLogoWidget(
              channelName: channelName,
              logoUrl: null,
              tvgId: null,
              width: logoWidth,
              height: logoHeight,
              fit: BoxFit.contain,
              backgroundColor: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              placeholder: Icon(
                Icons.tv,
                color: Colors.white.withValues(alpha: 0.55),
                size: math.min(logoWidth, logoHeight) * 0.8,
              ),
              errorWidget: Icon(
                Icons.tv,
                color: Colors.white.withValues(alpha: 0.55),
                size: math.min(logoWidth, logoHeight) * 0.8,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildGradientPlaceholder({Widget? child}) {
    return BrandFallbackBackground(child: child);
  }

  Widget _buildChannelLogoWidget(
    Channel channel,
    Program? program,
    int cacheWidth,
    int cacheHeight,
  ) {
    return ChannelLogoWidget(
      channelName: channel.name,
      logoUrl: channel.logoUrl,
      tvgId: channel.tvgId,
      width: 40,
      height: 24,
      fit: BoxFit.contain,
      backgroundColor: Colors.transparent,
      borderRadius: BorderRadius.circular(4),
    );
  }

  // Removed unused _buildLogoHeroFallbackWithBlur to avoid analyzer unused_element warning.

  Widget _buildLogoHeroFallback(Channel channel) {
    final label = _resolveFallbackCategoryLabel(channel);
    return _buildCategoryHeroFallback(
      channel,
      icon: Icons.tv,
      label: label,
      showLogo: false,
    );
  }

  String _resolveFallbackCategoryLabel(Channel channel) {
    final rawGroup = (channel.groupTitle ?? '').trim();
    if (rawGroup.isEmpty) {
      return 'LIVE TV';
    }
    final cleaned = rawGroup.replaceAll(RegExp(r'[^A-Za-z0-9]+'), ' ').trim();
    if (cleaned.isEmpty) {
      return 'LIVE TV';
    }
    final stopWords = <String>{
      'hd',
      'sd',
      'uhd',
      '4k',
      'tv',
      'us',
      'uk',
      'ca',
    };
    final tokens = cleaned.split(RegExp(r'\s+'));
    String? pick;
    for (final token in tokens) {
      final lower = token.toLowerCase();
      if (lower.length < 3) continue;
      if (stopWords.contains(lower)) continue;
      pick = token;
      break;
    }
    pick ??= tokens.first;
    if (pick.length > 12) {
      pick = pick.substring(0, 12);
    }
    return pick.toUpperCase();
  }

  Widget _buildCategoryHeroFallback(
    Channel channel, {
    required IconData icon,
    String? label,
    bool showLogo = true,
  }) {
    final logoUrl = channel.logoUrl;
    final normalizedLogoUrl = logoUrl == null ? null : normalizeImageUrl(logoUrl);

    return BrandFallbackBackground(
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipPath(
            clipper: const _HeroRevealClipper(
              revealWidthFactor: _heroMatteRevealWidthFactor,
              edgeCurveFactor: _heroMatteEdgeCurveFactor,
            ),
            child: SizedBox.expand(
              child: Align(
                alignment: Alignment.centerRight,
                child: FractionallySizedBox(
                  widthFactor: _heroMatteRevealWidthFactor,
                  heightFactor: 1.0,
                  child: Center(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final dpr = MediaQuery.of(context).devicePixelRatio;
                        final maxLogoWidth = constraints.maxWidth * 0.65;
                        final maxLogoHeight = constraints.maxHeight * 0.34;
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
                                  padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(color: Colors.white.withValues(alpha: 0.36), width: 1.5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(alpha: 0.4),
                                        blurRadius: 28,
                                        offset: const Offset(0, 14),
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
                                child: Transform.translate(offset: const Offset(0, -4), child: child),
                              ),
                            ),
                          );
                        }

                        Widget buildLabelBlock(String labelText) {
                          final resolvedLabel = labelText.toUpperCase();
                          final baseFontSize = maxLogoHeight * 0.6;
                          return SizedBox(
                            width: maxLogoWidth,
                            height: maxLogoHeight,
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  resolvedLabel,
                                  maxLines: 1,
                                  style: AppTypography.heroTitle(context).copyWith(
                                    fontSize: baseFontSize,
                                    letterSpacing: 6,
                                    color: Colors.white70,
                                  ),
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
                                if (showLogo) ...[
                                  buildLogoBlock(fallbackIcon),
                                  const SizedBox(height: 12),
                                ],
                                buildLabelBlock(labelText),
                              ],
                            ),
                          );
                        }

                        if (!showLogo || normalizedLogoUrl == null || normalizedLogoUrl.isEmpty || ImageFailureCache.shouldSkip(normalizedLogoUrl)) {
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
                            ImageFailureCache.recordSuccess(normalizedLogoUrl);
                            final logo = Image(
                              image: imageProvider,
                              fit: BoxFit.contain,
                              width: maxLogoWidth,
                              height: maxLogoHeight,
                              gaplessPlayback: true,
                            );
                            final labelText = label;
                            if (labelText == null || labelText.isEmpty) {
                              return buildCenteredLogo(logo);
                            }
                            return buildCenteredLogo(
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (showLogo) ...[
                                    buildLogoBlock(logo),
                                    const SizedBox(height: 12),
                                  ],
                                  buildLabelBlock(labelText),
                                ],
                              ),
                            );
                          },
                          placeholder: (_, __) => buildFallbackContent(),
                          errorWidget: (_, url, error) {
                            ImageFailureCache.recordFailure(url, error);
                            logHandshakeIfNeeded(url, error, context: 'LiveTV hero logo');
                            return buildFallbackContent();
                          },
                          useOldImageOnUrlChange: true,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsHeroFallback(Channel channel) {
    return _buildCategoryHeroFallback(
      channel,
      icon: Icons.newspaper,
      label: 'NEWS',
      showLogo: false,
    );
  }

  Widget _buildSportsHeroFallback(Channel channel) {
    return _buildCategoryHeroFallback(
      channel,
      icon: Icons.sports,
      label: 'SPORTS',
      showLogo: false,
    );
  }

  Widget _buildWeatherHeroFallback(Channel channel) {
    return _buildCategoryHeroFallback(
      channel,
      icon: Icons.cloud,
      label: 'WEATHER',
      showLogo: false,
    );
  }

  Widget _buildKidsHeroFallback(Channel channel) {
    return _buildCategoryHeroFallback(
      channel,
      icon: Icons.child_care,
      label: 'KIDS',
      showLogo: false,
    );
  }

  Widget _buildMusicHeroFallback(Channel channel) {
    return _buildCategoryHeroFallback(
      channel,
      icon: Icons.music_note,
      label: 'MUSIC',
      showLogo: false,
    );
  }

  Widget _buildDocumentaryHeroFallback(Channel channel) {
    return _buildCategoryHeroFallback(
      channel,
      icon: Icons.menu_book,
      label: 'DOCS',
      showLogo: false,
    );
  }

  Widget _buildMovieHeroFallback(Channel channel) {
    return _buildCategoryHeroFallback(
      channel,
      icon: Icons.movie,
      label: 'MOVIES',
      showLogo: false,
    );
  }

  String _formatTime(DateTime dt) {
    final hour = dt.hour == 0 ? 12 : (dt.hour > 12 ? dt.hour - 12 : dt.hour);
    final period = dt.hour < 12 ? 'AM' : 'PM';
    return '${hour.toString().padLeft(2, "0")}:${dt.minute.toString().padLeft(2, "0")} $period';
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
    _artworkService.pauseFetching();
    _artworkService.suspendCaches();
    _suspendHeroBackground = true;

    // INSTRUMENTATION: Log channel tap details
    final channelId = channel.epgLookupId;
    final streamUrl = channel.url;
    debugLog('=== CHANNEL TAP START ===');
    debugLog('Channel: ${channel.name} (ID: $channelId)');
    debugLog('Stream URL: $streamUrl');
    debugLog('Group: ${channel.groupTitle ?? "none"}');
    logToSystem('TAP: ${channel.name} -> $streamUrl', name: 'RisaTap');

    // Aggressive memory cleanup before player
    _releaseArtworkCachesForPlayback();
    MemoryManager.checkMemoryPressure();
    MemoryManager.clearCaches();
    MemoryManager.forceGarbageCollection();

    // Clear hero image cache to free memory

    if (!mounted) return;
    try {
      debugLog('Navigating to player screen...');
      await context.push('/player', extra: channel);
      debugLog('=== CHANNEL TAP END (returned from player) ===');
    } catch (e, st) {
      debugLog('=== CHANNEL TAP ERROR ===');
      debugLog('Error: $e');
      debugLog('Stack: $st');
      logToSystem('TAP ERROR: $e', name: 'RisaTap');
    } finally {
      if (mounted) {
        _isOpeningPlayer = false;
        _artworkService.resumeFetching();
        _artworkService.resumeCaches();
        _suspendHeroBackground = false;
        // Reload categories since _releaseArtworkCachesForPlayback cleared the cache
        unawaited(_prefetchInitialRows(force: true));
      }
    }
  }

  void _releaseArtworkCachesForPlayback() {
    _artworkService.pauseFetching();
    _artworkService.suspendCaches();

    // Clear local caches that are not in service
    MemoryManager.checkMemoryPressure();
    MemoryManager.clearCaches();
    MemoryManager.forceGarbageCollection();
    _categoryChannelCache.clear();
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
          AppTheme.darkBackground.withAlpha(0),
          AppTheme.darkBackground.withAlpha((0.7 * 255).round()),
          AppTheme.darkBackground,
        ],
        stops: const [0.0, 0.5, 1.0],
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

    // Force skeleton loader if EPG is doing initial heavy lifting or parsing
    // This ensures the user sees "Loading..." instead of a partially empty screen.
    final epgService = context.read<IncrementalEpgService>();
    final isInitialLoad = epgService.isLoading || epgService.isParsing;

    // Check if we have actual PROGRAM data, not just channel definitions.
    // If parsing is happening and we have no programs yet, we must show the loader.
    final hasPrograms = epgService.hasLoadedPrograms;

    // Show skeleton if we are loading AND don't have program data yet
    if (isInitialLoad && !hasPrograms) {
      return _buildSkeletonLoaderTracked(
        showColdStartOverlay: true,
        titleText: 'Loading TV Guide',
        statusText: epgService.epgProgressLabel ?? 'Parsing channel data...',
        progress: epgService.epgProgress > 0 ? epgService.epgProgress : null,
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
            if (ImageFailureCache.shouldSkip(normalizedHeroUrl)) {
              return heroFallback;
            }
            ImageLoadProbe.recordAttempt(normalizedHeroUrl, 'hero_image');
            final dpr = MediaQuery.of(context).devicePixelRatio;
            // Increase cache limits for better 4K support
            final cacheWidth =
                math.min(2500, (constraints.maxWidth * dpr).round());
            final cacheHeight =
                math.min(1500, (constraints.maxHeight * dpr).round());

            const heroImageWidthFactor = _heroImageWidthFactor;

            if (isChannelLogoFallback) {
              // Special handling for channel logo fallback with blurred background
              return ClipPath(
                clipper: const _HeroRevealClipper(
                  revealWidthFactor: _heroMatteRevealWidthFactor,
                  edgeCurveFactor: _heroMatteEdgeCurveFactor,
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Blurred background
                    Align(
                      alignment: Alignment.centerRight,
                      child: FractionallySizedBox(
                        widthFactor: heroImageWidthFactor,
                        heightFactor: 1.0,
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
                              imageFilter:
                                  ImageFilter.blur(sigmaX: 20, sigmaY: 20),
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
                          placeholder: (_, __) => _buildGradientPlaceholder(),
                          errorWidget: (_, url, error) {
                            ImageFailureCache.recordFailure(url, error);
                            ImageLoadProbe.recordFailure(
                                url, 'hero_logo_bg', error);
                            return _buildGradientPlaceholder();
                          },
                          useOldImageOnUrlChange: true,
                        ),
                      ),
                    ),
                    // Right-aligned logo
                    Align(
                      alignment: Alignment.centerRight,
                      child: CachedNetworkImage(
                        imageUrl: normalizedHeroUrl,
                        httpHeaders: HttpClientService().imageHeaders,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                        filterQuality: FilterQuality.high,
                        width: constraints.maxWidth * 0.3,
                        height: constraints.maxHeight * 0.25,
                        memCacheWidth:
                            (constraints.maxWidth * 0.3 * dpr).round(),
                        memCacheHeight:
                            (constraints.maxHeight * 0.25 * dpr).round(),
                        imageBuilder: (context, imageProvider) {
                          ImageFailureCache.recordSuccess(normalizedHeroUrl);
                          ImageLoadProbe.recordSuccess(
                              normalizedHeroUrl, 'hero_logo');
                          return Image(
                            image: imageProvider,
                            fit: BoxFit.contain,
                            alignment: Alignment.center,
                            filterQuality: FilterQuality.high,
                            gaplessPlayback: true,
                          );
                        },
                        placeholder: (_, __) => const SizedBox.shrink(),
                        errorWidget: (_, url, error) {
                          ImageFailureCache.recordFailure(url, error);
                          ImageLoadProbe.recordFailure(url, 'hero_logo', error);
                          logHandshakeIfNeeded(url, error,
                              context: 'LiveTV hero logo');
                          return heroFallback;
                        },
                        useOldImageOnUrlChange: true,
                      ),
                    ),
                  ],
                ),
              );
            }

            // Render only landscape artwork. Portrait gets rejected by the
            // image guard and falls back to the category/hero fallback.
            return ClipPath(
              clipper: const _HeroRevealClipper(
                revealWidthFactor: _heroMatteRevealWidthFactor,
                edgeCurveFactor: _heroMatteEdgeCurveFactor,
              ),
              child: SizedBox.expand(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FractionallySizedBox(
                    widthFactor: _heroImageWidthFactor,
                    heightFactor: 1.0,
                    child: CachedNetworkImage(
                      imageUrl: normalizedHeroUrl,
                      httpHeaders: HttpClientService().imageHeaders,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.high,
                      memCacheWidth: cacheWidth,
                      memCacheHeight: cacheHeight,
                      imageBuilder: (context, imageProvider) {
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            _LandscapeGuardedImage(
                              url: normalizedHeroUrl,
                              imageProvider: imageProvider,
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              fallback: heroFallback,
                              probeTag: 'hero_backdrop',
                            ),
                          ],
                        );
                      },
                      placeholder: (_, __) => _buildGradientPlaceholder(),
                      errorWidget: (_, url, error) {
                        ImageFailureCache.recordFailure(url, error);
                        ImageLoadProbe.recordFailure(
                            url, 'hero_backdrop', error);
                        logHandshakeIfNeeded(url, error,
                            context: 'LiveTV hero backdrop');
                        return heroFallback;
                      },
                      fadeInDuration: const Duration(milliseconds: 300),
                      useOldImageOnUrlChange: true,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeroLoadingFallback(
      Channel featuredChannel, Program? currentProgram) {
    if (ProgramClassifier.isNewsProgram(currentProgram, featuredChannel)) {
      return _buildNewsHeroFallback(featuredChannel);
    }
    if (currentProgram != null &&
        ProgramClassifier.isSportsProgram(currentProgram, featuredChannel)) {
      return _buildSportsHeroFallback(featuredChannel);
    }
    if (ProgramClassifier.isWeatherProgram(currentProgram, featuredChannel)) {
      return _buildWeatherHeroFallback(featuredChannel);
    }
    if (ProgramClassifier.isKidsProgram(currentProgram, featuredChannel)) {
      return _buildKidsHeroFallback(featuredChannel);
    }
    if (ProgramClassifier.isMusicProgram(currentProgram, featuredChannel)) {
      return _buildMusicHeroFallback(featuredChannel);
    }
    if (ProgramClassifier.isDocumentaryProgram(
        currentProgram, featuredChannel)) {
      return _buildDocumentaryHeroFallback(featuredChannel);
    }
    if (ProgramClassifier.isMovieProgram(currentProgram, featuredChannel)) {
      return _buildMovieHeroFallback(featuredChannel);
    }
    return _buildLogoHeroFallback(featuredChannel);
  }

  Widget _buildColdStartOverlayCard({
    String? titleText,
    String? statusText,
    String? secondaryStatusText,
    double? progress,
  }) {
    final trimmedTitle = (titleText ?? '').trim();
    final resolvedTitle =
        trimmedTitle.isNotEmpty ? trimmedTitle : 'Loading playlist';
    final trimmedStatus = (statusText ?? '').trim();
    final resolvedStatus =
        trimmedStatus.isNotEmpty ? trimmedStatus : 'Preparing playlist...';
    final trimmedSecondary = (secondaryStatusText ?? '').trim();
    final resolvedSecondary =
        trimmedSecondary.isNotEmpty ? trimmedSecondary : '';
    final resolvedProgress = (progress ?? 0.0).clamp(0.0, 1.0);
    final showProgressValue = resolvedProgress > 0.02;
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 520, minWidth: 280),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            resolvedTitle,
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
    String? titleText,
    String? statusText,
    String? secondaryStatusText,
    double? progress,
  }) {
    _markSkeletonVisibility(true);
    final channelProvider = context.read<ChannelProvider>();
    final epgService = context.read<IncrementalEpgService>();
    final resolvedOverlay = showColdStartOverlay ?? true;
    var resolvedTitle = titleText;
    String? resolvedStatus = statusText ?? channelProvider.loadingStatus;
    var resolvedProgress = progress ?? channelProvider.loadingProgress;
    var resolvedSecondary = secondaryStatusText;
    var resolvedOverlayFinal = resolvedOverlay;
    final epgBusy = epgService.isParsing ||
        epgService.isDownloading ||
        epgService.isLoading;
    if (epgBusy) {
      resolvedTitle ??= 'Loading EPG';
      resolvedStatus =
          _replaceEpgWithData(epgService.epgProgressLabel ?? resolvedStatus);
      if (epgService.epgProgress > 0.0) {
        resolvedProgress = epgService.epgProgress;
      }
      resolvedSecondary ??= 'Parsing guide data...';
    }
    return _buildSkeletonLoader(
      showColdStartOverlay: resolvedOverlayFinal,
      titleText: resolvedTitle,
      statusText: resolvedStatus,
      secondaryStatusText: resolvedSecondary,
      progress: resolvedProgress,
    );
  }

  Widget _buildSkeletonLoader({
    bool showColdStartOverlay = false,
    String? titleText,
    String? statusText,
    String? secondaryStatusText,
    double? progress,
  }) {
    final heroHeight = context.heroHeight();
    final contentInset = context.spacingSm() + _sidebarInset();
    final rightInset = context.spacingLg();
    final screenSize = MediaQuery.of(context).size;
    final skeletonCardWidth = context.cardWidth();
    final skeletonCardHeight = context.cardHeight();
    final cardPeek = 80.0;
    final contentTop = _contentTopForLayout(context, heroHeight, cardPeek);
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
                      titleText: titleText,
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

  Widget _buildAdaptiveImage(BuildContext context, String url,
      BoxFit defaultFit, int? cacheWidth, int? cacheHeight, Widget fallback) {
    if (ImageFailureCache.shouldSkip(url)) {
      return fallback;
    }
    ImageLoadProbe.recordAttempt(url, 'live_tv_adaptive');
    return CachedNetworkImage(
      imageUrl: url,
      httpHeaders: HttpClientService().imageHeaders,
      fit: defaultFit,
      memCacheWidth: cacheWidth,
      memCacheHeight: cacheHeight,
      fadeInDuration: Duration.zero,
      fadeOutDuration: Duration.zero,
      useOldImageOnUrlChange: true,
      imageBuilder: (context, imageProvider) {
        return _LandscapeGuardedImage(
          url: url,
          imageProvider: imageProvider,
          fit: defaultFit,
          fallback: fallback,
          probeTag: 'live_tv_card',
        );
      },
      placeholder: (context, url) => fallback,
      errorWidget: (context, url, err) {
        ImageFailureCache.recordFailure(url, err);
        ImageLoadProbe.recordFailure(url, 'live_tv_card', err);
        logHandshakeIfNeeded(url, err, context: 'LiveTV Adaptive');
        return fallback;
      },
    );
  }

  double _contentTopForLayout(
      BuildContext context, double heroHeight, double cardPeek) {
    return heroHeight - cardPeek;
  }

  double _rowTitleBlockHeight(BuildContext context) {
    final style = AppTypography.caption(context).copyWith(
      fontWeight: FontWeight.w600,
    );
    final painter = TextPainter(
      text: TextSpan(text: 'Ag', style: style),
      maxLines: 1,
      textScaler: MediaQuery.of(context).textScaler,
      textDirection: TextDirection.ltr,
    )..layout();
    return painter.height + (context.spacingXs() * 0.5);
  }

  int _initialRowVisibleCount(
      BuildContext context, double cardWidth, double rowInset) {
    if (cardWidth <= 0) return 6;
    final width = MediaQuery.of(context).size.width - rowInset;
    return (width / cardWidth).ceil() + 1;
  }

  void _showEpgChannelSelector(Channel channel) async {
    if (!mounted) return;

    // Use the helper from epg_channel_selector_dialog.dart
    final result = await showEpgChannelSelector(
      context: context,
      channel: channel,
    );

    if (!mounted || result == null) return;

    final epgService =
        Provider.of<IncrementalEpgService>(context, listen: false);

    if (result.isEmpty) {
      unawaited(epgService.removeManualMapping(channel.epgLookupId));
      if (mounted) {
        showAppSnackBar(
          context,
          const SnackBar(
            content: Text('Mapping removed. Reloading EPG...'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
      }
    } else {
      unawaited(epgService.setManualMapping(channel.epgLookupId, result));
      if (mounted) {
        showAppSnackBar(
          context,
          const SnackBar(
            content: Text('Channel mapped successfully. Reloading EPG...'),
            backgroundColor: AppTheme.accentGreen,
          ),
        );
      }
    }

    // Refresh EPG data for this channel
    unawaited(epgService.ensureChannelLoaded(
      channel.epgLookupId,
      channelName: channel.epgLookupNameFallback,
      // forceRefresh parameter removed as it does not exist
    ));

    // Force generic rebuild if needed
    if (mounted) setState(() {});
  }
}
