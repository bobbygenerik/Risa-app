import 'package:iptv_player/utils/debug_helper.dart';
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
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/go_to_settings_button.dart';
import 'package:iptv_player/services/fanart_service.dart';
import 'package:iptv_player/services/omdb_service.dart';
import 'package:iptv_player/services/sportradar_service.dart';
import 'package:iptv_player/services/thesportsdb_service.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/tvdb_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/sports_classifier.dart';
import 'package:iptv_player/widgets/brand_button.dart';
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
import 'package:iptv_player/utils/no_text_selection_controls.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';
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
        ContentFocusRegistrant<LiveTVScreen> {
  int _featuredIndex = 0;
  final TimerService _timerService = TimerService();
  final FocusPoolService _focusPool = FocusPoolService();
  late final ScrollController _scrollController;
  String? _lastRoutePath;

  late final FocusNode _watchButtonFocus;
  late final FocusNode _settingsButtonFocus;
  late final FocusNode _firstChannelFocus;
  late final FocusNode _skeletonFocus;
  final Map<String, String?> _programArtwork = {};
  final Map<String, String> _programArtworkByTitle = {};
  final Map<String, DateTime> _programArtworkNegativeByTitle = {};
  final Set<String> _artworkRequests = {};
  final Map<String, Future<String?>> _pendingArtworkRequests =
      {}; // Deduplication
  final Queue<Program> _artworkQueue = Queue<Program>();
  final Set<String> _queuedArtworkIds = {};
  final Queue<String> _programArtworkOrder = Queue<String>();
  final Queue<String> _programArtworkTitleOrder = Queue<String>();
  final Queue<String> _programArtworkNegativeTitleOrder = Queue<String>();
  final Queue<String> _programTitleLogoOrder = Queue<String>();
  final Queue<String> _categoryCacheOrder = Queue<String>();
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
      'live_tv_program_artwork_title_cache_v1';
  static const String _programArtworkNegativeCacheKey =
      'live_tv_program_artwork_negative_cache_v1';
  Timer? _artworkTitleSaveDebounce;
  Timer? _artworkNegativeSaveDebounce;
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
  final Map<String, ValueNotifier<int>> _categoryRowNotifiers = {};
  Future<List<Channel>>? _previewFuture;
  int _lastPreviewChannelCount = -1;
  final Map<String, ScrollController> _rowScrollControllers = {};
  final Set<String> _rowScrollInitialized = {};
  final Map<String, int> _rowVisibleCountBySection = {};
  final Map<String, int> _categoryOffsets = {};
  final Map<String, bool> _categoryHasMore = {};
  final Set<String> _categoryAppendQueue = {};
  final Map<String, bool> _heroImageCacheHits = {};
  bool _userHasScrolled = false;
  int _lastCategoryChannelCount = 0;
  int _lastHeroCandidateCount = 0;

  bool _categoryPrefetchRequested = false;
  static const bool _logArtworkMatches = true;

  // Featured content rotation
  Timer? _featuredRotationTimer;
  static const Duration _featuredRotationInterval = Duration(minutes: 5);
  List<Channel> _stableFeaturedChannels = [];
  bool _featuredChannelsInitialized = false;
  bool _isOpeningPlayer = false;
  bool _pauseArtworkFetching = false;
  bool _suspendArtworkCaches = false;
  bool _suspendHeroBackground = false;
  DateTime? _epgReadySince;
  static const Duration _epgReadyGrace = Duration(seconds: 2);

  @override
  void initState() {
    super.initState();
    _tmdbEnabled = ServiceValidator.isTmdbAvailable;
    _fanartEnabled = true;
    _sportsDbEnabled = true;
    _tvdbEnabled = ServiceValidator.isTvdbAvailable;
    // Initialize scroll controller
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScrollPrefetch);
    unawaited(_loadProgramArtworkTitleCache());
    unawaited(_loadProgramArtworkNegativeCache());

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
    _skeletonFocus = _focusPool.getFocusNode('live_tv_skeleton',
        debugLabel: 'Live TV Skeleton');
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

  void _startFeaturedRotation() {
    _featuredRotationTimer?.cancel();
    _featuredRotationTimer = Timer.periodic(_featuredRotationInterval, (_) {
      if (mounted) {
        setState(() {
          // Trigger UI update for rotation
        });
      }
    });
  }

  void _maybeRefreshCategories(int channelCount) {
    if (channelCount <= 0) return;
    if (_categoryNames.isNotEmpty) return;
    if (_loadingCategories) return;
    if (_categoryPrefetchRequested &&
        channelCount == _lastCategoryChannelCount) {
      return;
    }
    _lastCategoryChannelCount = channelCount;
    _categoryPrefetchRequested = false;
    _requestCategoryPrefetch();
  }

  List<Channel> _filterChannelsWithLoadedEpg(
      List<Channel> channels, IncrementalEpgService epgService) {
    final ready = <Channel>[];
    for (final channel in channels) {
      final channelId = channel.tvgId ?? channel.id;
      final hasPrograms = epgService.hasProgramsForChannel(
        channelId,
        channelName: channel.name,
        groupTitle: channel.groupTitle,
      );
      if (!hasPrograms) {
        unawaited(epgService.ensureChannelLoaded(
          channelId,
          channelName: channel.name,
        ));
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
    return ready;
  }

  int _initialRowVisibleCount(
      BuildContext context, double cardWidth, double rowInset) {
    final screenWidth = MediaQuery.of(context).size.width;
    final availableWidth = screenWidth - rowInset - context.spacingLg();
    final perRow = (availableWidth / (cardWidth + context.cardGap())).floor();
    return (perRow + _rowVisibleBuffer).clamp(6, 12);
  }

  int _rowVisibleCountFor(BuildContext context, String sectionKey,
      double cardWidth, double rowInset) {
    return _rowVisibleCountBySection.putIfAbsent(
      sectionKey,
      () => _initialRowVisibleCount(context, cardWidth, rowInset),
    );
  }

  void _bumpRowVisibleCount(String sectionKey, int totalCount, int index,
      double cardWidth, double rowInset) {
    final current =
        _rowVisibleCountFor(context, sectionKey, cardWidth, rowInset);
    if (index < current - 2) return;
    final next = (current + _rowVisibleBuffer).clamp(0, totalCount);
    if (next != current && mounted) {
      setState(() => _rowVisibleCountBySection[sectionKey] = next);
    }
  }

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
    }
    final heroHeight = context.heroHeight();
    final cardPeek = context.spacingXl();
    final contentTop = (heroHeight - cardPeek).clamp(0.0, heroHeight);
    final rowHeight = _estimateRowHeight(context);
    final offset = _scrollController.offset - contentTop;
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

  @override
  void dispose() {
    _focusChangeNotifier.dispose();
    _timerService.unregister('live_tv_carousel');
    _artworkThrottle?.cancel();
    _artworkTitleSaveDebounce?.cancel();
    _artworkNegativeSaveDebounce?.cancel();
    unawaited(_saveProgramArtworkTitleCache());
    unawaited(_saveProgramArtworkNegativeCache());
    _featuredRotationTimer?.cancel();

    // Clear all caches
    _artworkQueue.clear();
    _artworkRequests.clear();
    _pendingArtworkRequests.clear();
    _programArtwork.clear();
    _programArtworkByTitle.clear();
    _programArtworkNegativeByTitle.clear();
    _programTitleLogos.clear();
    _titleLogoRequests.clear();
    _programChannelLookup.clear();
    _categoryChannelCache.clear();
    _categoryChannelLoading.clear();
    _categoryNames.clear();
    _categoryNameSet.clear();
    _epgPrefetchedRows.clear();
    _focusedIndexBySection.clear();
    _artworkRetryAfter.clear();
    _artworkFailureCounts.clear();
    _queuedArtworkIds.clear();
    _programArtworkOrder.clear();
    _programArtworkTitleOrder.clear();
    _programArtworkNegativeTitleOrder.clear();
    _programTitleLogoOrder.clear();
    _categoryCacheOrder.clear();
    _categoryLoadQueue.clear();
    _categoryRowNotifiers.clear();
    _rowVisibleCountBySection.clear();
    _categoryOffsets.clear();
    _categoryHasMore.clear();
    _categoryAppendQueue.clear();
    _heroImageCacheHits.clear();

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
        'live_tv_first_card',
        'live_tv_skeleton'
      ],
    );
    super.dispose();
  }

  final ValueNotifier<bool> _focusChangeNotifier = ValueNotifier(false);

  @override
  bool get wantKeepAlive => true;

  Future<void> _prefetchInitialRows() async {
    if (_loadingCategories || _categoryNames.isNotEmpty) return;
    _loadingCategories = true;
    final channelProvider =
        Provider.of<ChannelProvider>(context, listen: false);
    final categories = await channelProvider.getAllCategoryNamesAsync();
    if (!mounted) return;
    _categoryNames = categories;
    _categoryNameSet
      ..clear()
      ..addAll(_categoryNames);
    _loadingCategories = false;
    _categoryRowNotifiers.clear();
    _rowScrollInitialized.clear();
    _lastPrefetchAnchor = -1;
    _visibleCategoryCount =
        math.min(_initialCategoryPrefetchCount, _categoryNames.length);
    setState(() {});
    await _prefetchInitialCategoryRows();
  }

  Future<void> _prefetchInitialCategoryRows() async {
    if (_categoryNames.isEmpty) return;
    final end = math.min(_initialCategoryPrefetchCount, _categoryNames.length);
    for (var i = 0; i < end; i++) {
      _enqueueCategoryLoad(_categoryNames[i]);
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
            ..._categoryChannelCache[category]!,
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
    if (_scrollController.offset >= targetOffset) return;
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
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.background,
      ),
      child: Consumer<ChannelProvider>(
        builder: (context, channelProvider, _) {
          final epgService = context.watch<IncrementalEpgService>();
          final hasChannels = channelProvider.hasChannels;
          final epgReady = !epgService.hasEpgUrl ? true : epgService.isReady;
          if (epgReady) {
            _epgReadySince ??= DateTime.now();
          } else {
            _epgReadySince = null;
          }
          final epgReadyStable = epgReady &&
              _epgReadySince != null &&
              DateTime.now().difference(_epgReadySince!) >= _epgReadyGrace;
          final latestCategories = channelProvider.getAllCategoryNames();
          if (latestCategories.isNotEmpty) {
            final newNames = _categoryNames.isEmpty
                ? latestCategories
                : latestCategories
                    .where((name) => !_categoryNameSet.contains(name))
                    .toList();
            if (newNames.isNotEmpty) {
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
                if (_visibleCategoryCount < _initialCategoryPrefetchCount) {
                  _visibleCategoryCount = math.min(
                    _initialCategoryPrefetchCount,
                    _categoryNames.length,
                  );
                } else {
                  _visibleCategoryCount =
                      math.min(_visibleCategoryCount, _categoryNames.length);
                }
                _lastPrefetchAnchor = -1;
                setState(() {});
                unawaited(_prefetchInitialCategoryRows());
              });
            }
          }

          // Improved EPG loading detection - only show skeleton if truly loading

          if (!hasChannels && channelProvider.isLoading) {
            return _buildSkeletonLoader();
          }

          // Show skeleton only if we have NO categories AND (loading OR (waiting for EPG while having no content))
          // If we have categories (data), SHOW THE UI! The EPG can populate later.
          if (_categoryNames.isEmpty && (channelProvider.isLoading || !epgReadyStable)) {
            return _buildSkeletonLoader();
          }

          if (!hasChannels) {
            final errorMessage = channelProvider.errorMessage;
            if (!channelProvider.hasLoadedPlaylist ||
                channelProvider.isLoading) {
              return _buildSkeletonLoader();
            }
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
                      'No Live TV Available',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: context.tvSpacing(8)),
                    Text(
                      errorMessage != null && errorMessage.isNotEmpty
                          ? errorMessage
                          : 'Load a playlist with Live TV channels from Settings',
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
              final previewList = snapshot.data ?? channelProvider.channels;
              if (previewList.isEmpty) {
                return _buildSkeletonLoader();
              }
              final epgService =
                  Provider.of<IncrementalEpgService>(context, listen: false);
              // Just start with whatever channels we have, don't block UI on EPG readiness filter
              // This is critical for "progressive loading" perception
              // Try to find channels with EPG data ready, but don't block if none are ready
              final readyChannels = _filterChannelsWithLoadedEpg(previewList, epgService);
              
              // Use ready channels if available, otherwise show whatever we have (progressive loading)
              final displayChannels = readyChannels.isNotEmpty ? readyChannels : previewList;
              
              if (displayChannels.isEmpty) {
                // If even the raw preview list is empty, keep showing skeleton
                 return _buildSkeletonLoader();
              }

              if (_featuredIndex >= displayChannels.length) _featuredIndex = 0;
              if (_featuredIndex == 0 && displayChannels.isNotEmpty) {
                _featuredIndex = math.Random().nextInt(displayChannels.length);
              }
              final featuredChannel = displayChannels[_featuredIndex];
              
              // Try to load EPG for featured channel in background
              final channelId = featuredChannel.tvgId ?? featuredChannel.id;
              if (channelId.isNotEmpty) {
                 unawaited(Future.microtask(() => epgService.ensureChannelLoaded(
                    channelId,
                    channelName: featuredChannel.name)));
              }

              return _buildFullScreenHero(
                context,
                featuredChannel,
                displayChannels,
              );
            },
          );
        },
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
        unawaited(epgService.ensureChannelLoaded(
          channelId,
          channelName: channel.name,
        ));
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
        unawaited(epgService.ensureChannelLoaded(
          channelId,
          channelName: channel.name,
        ));
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
    _lastHeroCandidateCount = heroCandidates.length;
    if (_lastHeroCandidateCount == 0) {
      _featuredIndex = 0;
    } else if (_featuredIndex >= _lastHeroCandidateCount) {
      _featuredIndex = 0;
    }
    final selectedHero = _lastHeroCandidateCount == 0
        ? null
        : heroCandidates[_featuredIndex % _lastHeroCandidateCount];
    final activeChannel = selectedHero?.channel ?? featuredChannel;
    final currentProgram = selectedHero?.program;
    final heroImage = selectedHero?.heroImage;
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
              final scrollPos =
                  _scrollController.hasClients ? _scrollController.offset : 0.0;
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
                    // Gradient fade at bottom
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: 180,
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
              final scrollPos =
                  _scrollController.hasClients ? _scrollController.offset : 0.0;
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
        // Hero info overlay
        Positioned(
          top: 0,
          left: contentInset,
          right: rightInset,
          height: contentTop, // Limit height to visible area above channels
          child: AnimatedBuilder(
            animation: _scrollController,
            child: Builder(builder: (context) {
              final scrollPos =
                  _scrollController.hasClients ? _scrollController.offset : 0.0;
              final fadeProgress =
                  (scrollPos / (heroHeight * 0.3)).clamp(0.0, 1.0);
              final opacity = 1.0 - fadeProgress;
              if (opacity <= 0.01) {
                // Always show focusable tap area when fully faded
                return Focus(
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
              }
              return Opacity(
                opacity: opacity,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: _buildHeroInfoPanel(
                      context,
                      heroInfoWidth,
                      _buildFeaturedInfoWithFocus(
                          context, activeChannel, currentProgram),
                    ),
                  ),
                ),
              );
            }),
            builder: (context, child) {
              final scrollPos =
                  _scrollController.hasClients ? _scrollController.offset : 0.0;
              return Transform.translate(
                offset: Offset(0, -scrollPos),
                child: child,
              );
            },
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
                          isFirstRow: false,
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
        // Channel logo
        Positioned(
          top: AppSizes.lg,
          right: AppSizes.lg,
          child: Builder(builder: (context) {
            final scrollPos =
                _scrollController.hasClients ? _scrollController.offset : 0.0;
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
            GestureDetector(
              onTap: () => _openChannelPlayer(channel),
              child: SizedBox(
                width: context.cardWidth() * 0.5, // Slimmer button
                child: BrandPrimaryButton(
                  onPressed: () => _openChannelPlayer(channel),
                  label: 'Watch Now',
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  fontSize: 13,
                  minHeight: 28,
                  focusNode: _watchButtonFocus,
                ),
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
            errorBuilder: (context, error, stackTrace) =>
                const SizedBox.shrink(),
          );
        }),
      ),
    );
  }

  String? _getChannelCardImage(
      Program? program, Channel? channel, bool allowPrefetch) {
    // Strictly prefer program artwork when it's not a poster/portrait image.
    if (program != null) {
      final cached = _programArtwork[program.id];
      if (cached != null && cached.isNotEmpty) {
        _logArtworkDecision(
          'LiveTV artwork: card source=cached program="${program.title}" url=$cached',
        );
        return cached;
      }

      final byTitle = _getProgramArtworkByTitle(program, channel);
      if (byTitle != null && byTitle.isNotEmpty) {
        _logArtworkDecision(
          'LiveTV artwork: card source=title_cache program="${program.title}" url=$byTitle',
        );
        return byTitle;
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
          _enqueueArtwork(program);
        });
      }

      // Fall back to EPG-provided art while services are resolving.
      final programImage = program.imageUrl;
      if (_isValidProgramArtwork(programImage, channel!)) {
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

    // Standard OMDb posters
    if (lower.contains('omdbapi.com')) return true;

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

    // Common file naming patterns
    if (lower.endsWith('_poster.jpg') ||
        lower.endsWith('_poster.png') ||
        lower.endsWith('_cover.jpg') ||
        lower.endsWith('_cover.png')) {
      return true;
    }

    return false;
  }

  bool _isValidProgramArtwork(String? url, Channel channel) {
    if (url == null || url.isEmpty) return false;
    // We now allow posters because _buildAdaptiveImage handles them well.
    // However, we still avoid title logos (clearart) for backgrounds.
    if (_isLikelyTitleLogoUrl(url)) {
      return false;
    }
    final channelLogo = channel.logoUrl;
    if (channelLogo != null && channelLogo == url) {
      return false;
    }
    if (_matchesChannelLogo(url, channel)) {
      return false;
    }
    // Block small images that would look bad when scaled up
    if (_isLikelySmallImage(url)) {
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

  void _registerProgramArtworkEntry(String key, String value) {
    _programArtwork[key] = value;
    _programArtworkOrder.remove(key);
    _programArtworkOrder.addLast(key);
    while (_programArtworkOrder.length > _maxProgramArtworkEntries) {
      final removed = _programArtworkOrder.removeFirst();
      _programArtwork.remove(removed);
      _programChannelLookup.remove(removed);
    }
  }

  void _registerProgramArtworkTitle(String key, String value) {
    _programArtworkByTitle[key] = value;
    _programArtworkTitleOrder.remove(key);
    _programArtworkTitleOrder.addLast(key);
    while (_programArtworkTitleOrder.length > _maxProgramArtworkTitleEntries) {
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
        _maxProgramArtworkNegativeEntries) {
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
    if (channelForKey == null || !_isGenericTitle(base)) {
      return base;
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
    normalized = normalized.replaceAll(RegExp(r'\b(19|20)\d{2}\b'), '');
    normalized = normalized.replaceAll(RegExp(r'\s+'), ' ').trim();
    return normalized.isEmpty ? title : normalized;
  }

  bool _isGenericTitle(String title) {
    final normalized = normalizeForFilter(title);
    const generic = <String>{
      'news',
      'live',
      'sports',
      'sport',
      'movie',
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
    cleaned = cleaned.replaceAll(RegExp(r'\s+'), ' ').trim();
    return cleaned;
  }

  List<String> _buildArtworkQueryTitles(Program program, Channel? channel) {
    final original = program.title.trim();
    final canonical = _canonicalArtworkTitle(original).trim();
    final titles = <String>[];
    void add(String value) {
      if (value.isEmpty || titles.contains(value)) return;
      titles.add(value);
    }

    final channelName =
        channel == null ? '' : _cleanChannelNameForQuery(channel.name);
    if (_isGenericTitle(canonical) && channelName.isNotEmpty) {
      add('$canonical $channelName');
    }
    add(canonical);
    if (canonical != original) add(original);
    if (_isGenericTitle(canonical) && channelName.isNotEmpty) {
      add(channelName);
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
    while (_programTitleLogoOrder.length > _maxProgramTitleLogoEntries) {
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

  void _enqueueArtwork(Program program) {
    if (_pauseArtworkFetching || _suspendArtworkCaches) return;
    if (_queuedArtworkIds.contains(program.id)) return;
    _queuedArtworkIds.add(program.id);
    _artworkQueue.add(program);
    _scheduleArtworkDrain();
  }

  Future<void> _fetchTitleLogo(Program program, Channel channel) async {
    final cacheKey = program.id;
    try {
      String? logo;

      // Check if it's a sports program
      final isSports = _isSportsProgram(program, channel);

      if (isSports) {
        // Sports: SportRadar -> TheSportsDB -> TMDB -> Fanart -> OMDB
        logo = await _fetchSportsLogo(program);
      } else {
        // Regular: TMDB -> Fanart -> OMDB
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
    const timeout = Duration(seconds: 5);
    final title = program.title;
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

    // Fallback to OMDB
    try {
      final omdbLogo = await OmdbService.getLogo(title).timeout(timeout);
      if (omdbLogo != null && omdbLogo.isNotEmpty) {
        return omdbLogo;
      }
    } catch (e) {
      debugLog('OMDB logo failed: $e');
    }

    return null;
  }

  List<_HeroCandidate> _buildHeroCandidates(
    List<Channel> channels,
    IncrementalEpgService epgService,
  ) {
    if (channels.isEmpty) return [];

    final candidates = <_HeroCandidate>[];
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

      // If no program, still consider as candidate but with null program
      // This ensures we always have something to show in the Hero section
      final heroImage = _resolveHeroImage(program, channel);

      candidates.add(_HeroCandidate(
        channel: channel,
        program: program,
        heroImage: heroImage ?? '',
      ));

      // Limit to 15 candidates for performance
      if (candidates.length >= 15) break;
    }

    // Sort: channels with programs first
    candidates.sort((a, b) {
      if (a.program != null && b.program == null) return -1;
      if (a.program == null && b.program != null) return 1;
      return 0;
    });

    return candidates;
  }

  String? _resolveHeroImage(Program? program, Channel channel) {
    // Only return artwork if we have a specific program from the EPG
    if (program != null) {
      // 1. Try cached TMDB/OMDb program artwork
      final cached = _programArtwork[program.id];
      if (_isValidProgramArtwork(cached, channel)) {
        _logArtworkDecision(
          'LiveTV artwork: hero source=cached program="${program.title}" url=$cached',
        );
        return cached;
      }

      // 1b. Try cached artwork by title to avoid repeated fetches across airings
      final byTitle = _getProgramArtworkByTitle(program, channel);
      if (_isValidProgramArtwork(byTitle, channel)) {
        _logArtworkDecision(
          'LiveTV artwork: hero source=title_cache program="${program.title}" url=$byTitle',
        );
        return byTitle;
      }

      // 2. Trigger a fetch if any image service is enabled
      if (_tmdbEnabled || _fanartEnabled || _sportsDbEnabled || _tvdbEnabled) {
        _ensureFreshProgramArtwork(program, channel);
      }

      // 3. Fall back to the direct image URL provided in the EPG XML itself
      final direct = program.imageUrl;
      if (_isValidProgramArtwork(direct, channel)) {
        _logArtworkDecision(
          'LiveTV artwork: hero source=epg program="${program.title}" url=$direct',
        );
        return direct;
      }
    }

    return null;
  }

  void _ensureFreshProgramArtwork(Program program, Channel channel) {
    if (!(_tmdbEnabled || _fanartEnabled || _sportsDbEnabled || _tvdbEnabled)) {
      return;
    }
    if (_artworkRequests.contains(program.id)) return;
    if (!_shouldAttemptArtworkByTitle(program, channel)) return;
    final existing = _programArtwork[program.id];
    if (existing != null &&
        existing.isNotEmpty &&
        _isValidProgramArtwork(existing, channel)) {
      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _programChannelLookup[program.id] = channel;
      if (!_shouldAttemptArtworkByTitle(program, channel)) return;
      final current = _programArtwork[program.id];
      if (current != null &&
          current.isNotEmpty &&
          _isValidProgramArtwork(current, channel)) {
        return;
      }
      _setProgramArtwork(program.id, '');
      _enqueueArtwork(program);
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

    final cachedByTitle = _getProgramArtworkByTitle(
      program,
      _programChannelLookup[program.id],
    );
    if (cachedByTitle != null && cachedByTitle.isNotEmpty) {
      _setProgramArtwork(program.id, cachedByTitle);
      return cachedByTitle;
    }

    // Check for pending request
    if (_pendingArtworkRequests.containsKey(program.id)) {
      return _pendingArtworkRequests[program.id]!;
    }

    if (!_shouldAttemptArtwork(program.id)) return '';
    _artworkRequests.add(program.id);

    // Create and store the future for deduplication
    final future = _fetchArtworkWithFallback(program);
    _pendingArtworkRequests[program.id] = future;

    try {
      final result = await future;
      _setProgramArtwork(program.id, result ?? '');
      if (result != null && result.isNotEmpty) {
        _setProgramArtworkByTitle(
          program,
          result,
          _programChannelLookup[program.id],
        );
        _clearArtworkNoMatch(
          program,
          _programChannelLookup[program.id],
        );
        _clearArtworkFailure(program.id);
      } else {
        _markArtworkNoMatch(
          program,
          _programChannelLookup[program.id],
        );
      }
      return result ?? '';
    } finally {
      // Removing the stored future object is synchronous; don't pass it to unawaited
      await _pendingArtworkRequests.remove(program.id);
      _artworkRequests.remove(program.id);
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
    _artworkThrottle ??=
        Timer(const Duration(milliseconds: 700), _drainArtworkQueue);
  }

  Future<void> _drainArtworkQueue() async {
    _artworkThrottle?.cancel();
    _artworkThrottle = null;
    if (_artworkQueue.isEmpty ||
        !mounted ||
        _pauseArtworkFetching ||
        _suspendArtworkCaches) {
      return;
    }

    const int batchSize = 1;
    final batch = <Program>[];
    for (var i = 0; i < batchSize && _artworkQueue.isNotEmpty; i++) {
      final program = _artworkQueue.removeFirst();
      _queuedArtworkIds.remove(program.id);
      batch.add(program);
    }

    for (final program in batch) {
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
    }

    if (_artworkQueue.isNotEmpty) {
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
    const timeout = Duration(seconds: 5);
    final title = program.title;
    final queryTitles = _buildArtworkQueryTitles(program, channel);
    // Try SportRadar first (if quota available)
    for (final queryTitle in queryTitles) {
      try {
        final sportRadarImage =
            await SportradarService.getHeroImage(queryTitle).timeout(timeout);
        if (sportRadarImage != null && sportRadarImage.isNotEmpty) {
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
        if (sportsDbImage != null && sportsDbImage.isNotEmpty) {
          _logArtworkDecision(
            'LiveTV artwork: source=thesportsdb program="$title" query="$queryTitle" url=$sportsDbImage',
          );
          return sportsDbImage;
        }
      } catch (e) {
        debugLog('TheSportsDB failed: $e');
      }
    }

    // Do not fall back to movie/TV artwork for sports programs.
    _logArtworkDecision(
      'LiveTV artwork: source=none program="$title" reason=sports_no_match',
    );
    return null;
  }

  Future<String?> _fetchRegularImage(Program program) async {
    const timeout = Duration(seconds: 5);
    final channel = _programChannelLookup[program.id];
    final isNews = channel != null && _isNewsProgram(program, channel);
    final title = program.title;
    final queryTitles = _buildArtworkQueryTitles(program, channel);

    // Try TMDB first
    for (final queryTitle in queryTitles) {
      try {
        if (isNews) {
          final details = await TMDBService.getBestBackdropDetails(queryTitle)
              .timeout(timeout);
          if (!_isBlacklistedNewsArtwork(details, program.title)) {
            final tmdbImage = (details?['image'] as String?)?.trim();
            if (tmdbImage != null && tmdbImage.isNotEmpty) {
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
          if (tmdbImage != null && tmdbImage.isNotEmpty) {
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

    if (_tvdbEnabled) {
      for (final queryTitle in queryTitles) {
        try {
          final tvdbImage =
              await TvdbService.getBestImage(queryTitle).timeout(timeout);
          if (tvdbImage != null && tvdbImage.isNotEmpty) {
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

    // Fallback to Fanart.tv
    try {
      final fanartImage = await _fetchFanartArtwork(program);
      if (fanartImage != null && fanartImage.isNotEmpty) {
        _logArtworkDecision(
          'LiveTV artwork: source=fanart program="$title" url=$fanartImage',
        );
        return fanartImage;
      }
    } catch (e) {
      debugLog('Fanart failed: $e');
    }

    // Fallback to OMDB
    for (final queryTitle in queryTitles) {
      try {
        final omdbImage =
            await OmdbService.getHeroImage(queryTitle).timeout(timeout);
        if (omdbImage != null && omdbImage.isNotEmpty) {
          _logArtworkDecision(
            'LiveTV artwork: source=omdb program="$title" query="$queryTitle" url=$omdbImage',
          );
          return omdbImage;
        }
      } catch (e) {
        debugLog('OMDB failed: $e');
      }
    }

    _logArtworkDecision(
      'LiveTV artwork: source=none program="$title" reason=no_match',
    );
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

  bool _shouldPrefetchArt(String sectionKey, int index) {
    final focusedIndex = _focusedIndexBySection[sectionKey];
    if (focusedIndex == null) {
      return index < 4;
    }
    return (index - focusedIndex).abs() <= 3;
  }

  Widget _buildChannelSection(
      BuildContext context, String title, List<Channel> channels,
      {bool isFirstRow = false, bool allowCategoryPaging = true}) {
    if (channels.isEmpty) return const SizedBox.shrink();
    final epgService = context.watch<IncrementalEpgService>();
    final filteredChannels = <Channel>[];
    final seenProgramKeys = <String>{};
    for (var i = 0; i < channels.length; i++) {
      final channel = channels[i];
      final channelId = channel.tvgId ?? channel.id;
      final program = epgService.getCurrentProgram(
        channelId,
        channelName: channel.name,
        groupTitle: channel.groupTitle,
      );
      if (program == null) {
        unawaited(epgService.ensureChannelLoaded(
          channelId,
          channelName: channel.name,
        ));
        continue;
      }

      if (epgService.shouldHideChannel(
        channelId,
        channelName: channel.name,
      )) {
        continue;
      }
      if (isFirstRow) {
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
    final visibleCount =
        _rowVisibleCountFor(context, sectionKey, cardWidth, rowInset);
    if (allowCategoryPaging) {
      if (filteredChannels.length <= visibleCount &&
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
          padding: EdgeInsets.only(left: rowInset, bottom: 2),
          child: Text(
            title,
            style: AppTypography.caption(context).copyWith(
              color: AppTheme.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: rowInset, bottom: 4),
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
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                width: constraints.maxWidth,
                child: NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    if (notification.metrics.maxScrollExtent <= 0) {
                      return false;
                    }
                    final remaining = notification.metrics.maxScrollExtent -
                        notification.metrics.pixels;
                    if (remaining < context.cardGap() * 6) {
                      _requestMoreCategoryChannels(sectionKey);
                      _bumpRowVisibleCount(sectionKey, filteredChannels.length,
                          filteredChannels.length - 1, cardWidth, rowInset);
                    }
                    return false;
                  },
                  child: ListView.separated(
                    controller: rowController,
                    key: ValueKey<String>('live_tv_row_$sectionKey'),
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    cacheExtent: 800,
                    padding: EdgeInsets.only(
                      left: rowInset,
                      right: context.spacingLg(),
                    ),
                    clipBehavior: Clip.none,
                    itemCount: math.min(filteredChannels.length, visibleCount),
                    itemBuilder: (context, index) {
                      final focusNode =
                          isFirstRow && index == 0 ? _firstChannelFocus : null;
                      final allowPrefetch =
                          _shouldPrefetchArt(sectionKey, index);
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
                        onItemFocus: () => _bumpRowVisibleCount(
                          sectionKey,
                          filteredChannels.length,
                          index,
                          cardWidth,
                          rowInset,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(width: context.cardGap()),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: context.spacingSm()),
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
          return const SizedBox.shrink();
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
    const headerSpacing = 2 + 3 + 8;
    final rowBottomSpacing = context.spacingMd();

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
                final nextOffset = (_scrollController.offset - rowHeight).clamp(
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
            final program = (epgService.isLoading || epgService.isParsing)
                ? null
                : epgService.getCurrentProgram(
                    channel.tvgId ?? channel.id,
                    channelName: channel.name,
                    groupTitle: channel.groupTitle,
                  );

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
                child: _buildCardContent(context, channel, program, isFocused,
                    cardWidth, cardHeight, allowPrefetch),
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
  ) {
    final progress = currentProgram?.progressPercentage ?? 0.0;
    final imageUrl =
        _getChannelCardImage(currentProgram, channel, allowPrefetch);
    final normalizedImageUrl =
        imageUrl == null ? null : normalizeImageUrl(imageUrl);
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
            border: isFocused
                ? Border.all(color: AppTheme.focusBorder, width: 3)
                : null,
            boxShadow: isFocused
                ? TVFocusStyle.focusedShadow
                : TVFocusStyle.defaultShadow,
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
                Positioned(
                  top: 6,
                  left: 6,
                  child: SizedBox(
                    width: 40,
                    height: 24,
                    child: _buildChannelLogoWidget(
                      channel,
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

  Widget _buildChannelPlaceholder() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF2a2a3e),
            Color(0xFF1a1a2e),
            AppTheme.cardBackground
          ],
        ),
      ),
      child: Center(
        child: Icon(
          Icons.tv,
          color: AppTheme.primaryBlue.withValues(alpha: 0.4),
          size: 32,
        ),
      ),
    );
  }

  Widget _buildChannelCardFallback(Program? program, Channel channel) {
    if (_isNewsProgram(program, channel)) {
      return _buildNewsCardFallback(channel);
    }
    if (program != null && _isSportsProgram(program, channel)) {
      return _buildSportsCardFallback(channel);
    }
    if (channel.logoUrl != null && channel.logoUrl!.isNotEmpty) {
      return _buildLogoCardFallback(channel);
    }
    return _buildChannelPlaceholder();
  }

  Widget _buildLogoCardFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF1B1E2B),
        Color(0xFF141722),
        AppTheme.cardBackground,
      ],
    );
    final logoUrl = channel.logoUrl;
    final normalizedLogoUrl =
        logoUrl == null ? null : normalizeImageUrl(logoUrl);
    return Container(
      decoration: const BoxDecoration(gradient: gradient),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dpr = MediaQuery.of(context).devicePixelRatio;
          final maxLogoWidth = constraints.maxWidth * 0.6;
          final maxLogoHeight = constraints.maxHeight * 0.45;
          final logoCacheWidth = math.min(320, (maxLogoWidth * dpr).round());
          final logoCacheHeight = math.min(320, (maxLogoHeight * dpr).round());
          return Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(gradient: gradient),
                ),
              ),
              if (normalizedLogoUrl != null && normalizedLogoUrl.isNotEmpty)
                Center(
                  child: CachedNetworkImage(
                    imageUrl: normalizedLogoUrl,
                    httpHeaders: HttpClientService().imageHeaders,
                    fit: BoxFit.contain,
                    width: maxLogoWidth,
                    height: maxLogoHeight,
                    memCacheWidth: logoCacheWidth,
                    memCacheHeight: logoCacheHeight,
                    errorWidget: (_, url, error) {
                      logHandshakeIfNeeded(url, error,
                          context: 'LiveTV card logo');
                      return const Icon(
                        Icons.tv,
                        color: Colors.white70,
                        size: 32,
                      );
                    },
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSportsCardFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF1A2E1A),
        Color(0xFF0F1F0F),
        Color(0xFF0A1A0A),
      ],
    );
    final logoUrl = channel.logoUrl;
    final normalizedLogoUrl =
        logoUrl == null ? null : normalizeImageUrl(logoUrl);
    return Container(
      decoration: const BoxDecoration(gradient: gradient),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dpr = MediaQuery.of(context).devicePixelRatio;
          final maxLogoWidth = constraints.maxWidth * 0.6;
          final maxLogoHeight = constraints.maxHeight * 0.45;
          final logoCacheWidth = math.min(320, (maxLogoWidth * dpr).round());
          final logoCacheHeight = math.min(320, (maxLogoHeight * dpr).round());
          return Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(gradient: gradient),
                ),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (normalizedLogoUrl != null &&
                        normalizedLogoUrl.isNotEmpty)
                      CachedNetworkImage(
                        imageUrl: normalizedLogoUrl,
                        httpHeaders: HttpClientService().imageHeaders,
                        fit: BoxFit.contain,
                        width: maxLogoWidth,
                        height: maxLogoHeight,
                        memCacheWidth: logoCacheWidth,
                        memCacheHeight: logoCacheHeight,
                        errorWidget: (_, url, error) {
                          logHandshakeIfNeeded(url, error,
                              context: 'LiveTV sports card logo');
                          return const Icon(
                            Icons.sports,
                            color: Colors.white70,
                            size: 32,
                          );
                        },
                      )
                    else
                      const Icon(
                        Icons.sports,
                        color: Colors.white70,
                        size: 32,
                      ),
                    const SizedBox(height: 6),
                    Text(
                      'SPORTS',
                      style: AppTypography.caption(context).copyWith(
                        letterSpacing: 4,
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildNewsCardFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF0B1E3A),
        Color(0xFF102A4A),
        Color(0xFF0A1426),
      ],
    );
    final logoUrl = channel.logoUrl;
    final normalizedLogoUrl =
        logoUrl == null ? null : normalizeImageUrl(logoUrl);
    return Container(
      decoration: const BoxDecoration(gradient: gradient),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dpr = MediaQuery.of(context).devicePixelRatio;
          final maxLogoWidth = constraints.maxWidth * 0.6;
          final maxLogoHeight = constraints.maxHeight * 0.45;
          final logoCacheWidth = math.min(320, (maxLogoWidth * dpr).round());
          final logoCacheHeight = math.min(320, (maxLogoHeight * dpr).round());
          return Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(gradient: gradient),
                ),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (normalizedLogoUrl != null &&
                        normalizedLogoUrl.isNotEmpty)
                      CachedNetworkImage(
                        imageUrl: normalizedLogoUrl,
                        httpHeaders: HttpClientService().imageHeaders,
                        fit: BoxFit.contain,
                        width: maxLogoWidth,
                        height: maxLogoHeight,
                        memCacheWidth: logoCacheWidth,
                        memCacheHeight: logoCacheHeight,
                        errorWidget: (_, url, error) {
                          logHandshakeIfNeeded(url, error,
                              context: 'LiveTV news card logo');
                          return const Icon(
                            Icons.newspaper,
                            color: Colors.white70,
                            size: 32,
                          );
                        },
                      )
                    else
                      const Icon(
                        Icons.newspaper,
                        color: Colors.white70,
                        size: 32,
                      ),
                    const SizedBox(height: 6),
                    Text(
                      'NEWS',
                      style: AppTypography.caption(context).copyWith(
                        letterSpacing: 4,
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildChannelLogoWidget(
    Channel channel,
    int cacheWidth,
    int cacheHeight,
  ) {
    if (channel.logoUrl != null &&
        channel.logoUrl!.isNotEmpty &&
        !_isLikelyPosterUrl(channel.logoUrl!)) {
      final provider = LogoImageCache.providerFor(
        channel.logoUrl!,
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
        errorBuilder: (context, error, stackTrace) => placeholder,
      );
    }
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
        AppTheme.cardBackground,
      ],
    );
    final logoUrl = channel.logoUrl;
    final normalizedLogoUrl =
        logoUrl == null ? null : normalizeImageUrl(logoUrl);

    return Container(
      decoration: const BoxDecoration(gradient: gradient),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dpr = MediaQuery.of(context).devicePixelRatio;
          final maxLogoWidth = constraints.maxWidth * 0.55;
          final maxLogoHeight = constraints.maxHeight * 0.32;
          final logoCacheWidth = math.min(480, (maxLogoWidth * dpr).round());
          final logoCacheHeight = math.min(480, (maxLogoHeight * dpr).round());

          final fallbackIcon = Container(
            decoration: const BoxDecoration(gradient: gradient),
            child: const Center(
              child: Icon(
                Icons.tv,
                color: Colors.white70,
                size: 64,
              ),
            ),
          );

          if (normalizedLogoUrl == null || normalizedLogoUrl.isEmpty) {
            return fallbackIcon;
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
              return Container(
                decoration: const BoxDecoration(gradient: gradient),
                child: Center(
                  child: Image(
                    image: imageProvider,
                    fit: BoxFit.contain,
                    width: maxLogoWidth,
                    height: maxLogoHeight,
                  ),
                ),
              );
            },
            placeholder: (_, __) => fallbackIcon,
            errorWidget: (_, url, error) {
              logHandshakeIfNeeded(url, error, context: 'LiveTV hero logo');
              return fallbackIcon;
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
        Color(0xFF0A1426),
      ],
    );
    final logoUrl = channel.logoUrl;
    final normalizedLogoUrl =
        logoUrl == null ? null : normalizeImageUrl(logoUrl);

    return Container(
      decoration: const BoxDecoration(gradient: gradient),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dpr = MediaQuery.of(context).devicePixelRatio;
          final maxLogoWidth = constraints.maxWidth * 0.55;
          final maxLogoHeight = constraints.maxHeight * 0.32;
          final logoCacheWidth = math.min(480, (maxLogoWidth * dpr).round());
          final logoCacheHeight = math.min(480, (maxLogoHeight * dpr).round());

          final fallbackContent = Container(
            decoration: const BoxDecoration(gradient: gradient),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.newspaper,
                    color: Colors.white70,
                    size: 64,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'NEWS',
                    style: AppTypography.heroTitle(context).copyWith(
                      letterSpacing: 6,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          );

          if (normalizedLogoUrl == null || normalizedLogoUrl.isEmpty) {
            return fallbackContent;
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
              return Container(
                decoration: const BoxDecoration(gradient: gradient),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(
                        image: imageProvider,
                        fit: BoxFit.contain,
                        width: maxLogoWidth,
                        height: maxLogoHeight,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'NEWS',
                        style: AppTypography.heroTitle(context).copyWith(
                          letterSpacing: 6,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            placeholder: (_, __) => fallbackContent,
            errorWidget: (_, url, error) {
              logHandshakeIfNeeded(url, error,
                  context: 'LiveTV news hero logo');
              return fallbackContent;
            },
          );
        },
      ),
    );
  }

  Widget _buildSportsHeroFallback(Channel channel) {
    const gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF1A2E1A),
        Color(0xFF0F1F0F),
        Color(0xFF0A1A0A),
      ],
    );
    final logoUrl = channel.logoUrl;
    final normalizedLogoUrl =
        logoUrl == null ? null : normalizeImageUrl(logoUrl);

    return Container(
      decoration: const BoxDecoration(gradient: gradient),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dpr = MediaQuery.of(context).devicePixelRatio;
          final maxLogoWidth = constraints.maxWidth * 0.55;
          final maxLogoHeight = constraints.maxHeight * 0.32;
          final logoCacheWidth = math.min(480, (maxLogoWidth * dpr).round());
          final logoCacheHeight = math.min(480, (maxLogoHeight * dpr).round());

          final fallbackContent = Container(
            decoration: const BoxDecoration(gradient: gradient),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.sports,
                    color: Colors.white70,
                    size: 64,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'SPORTS',
                    style: AppTypography.heroTitle(context).copyWith(
                      letterSpacing: 6,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          );

          if (normalizedLogoUrl == null || normalizedLogoUrl.isEmpty) {
            return fallbackContent;
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
              return Container(
                decoration: const BoxDecoration(gradient: gradient),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(
                        image: imageProvider,
                        fit: BoxFit.contain,
                        width: maxLogoWidth,
                        height: maxLogoHeight,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'SPORTS',
                        style: AppTypography.heroTitle(context).copyWith(
                          letterSpacing: 6,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            placeholder: (_, __) => fallbackContent,
            errorWidget: (_, url, error) {
              logHandshakeIfNeeded(url, error,
                  context: 'LiveTV sports hero logo');
              return fallbackContent;
            },
          );
        },
      ),
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

  bool _isPosterStyleUrl(String? url) {
    if (url == null || url.isEmpty) return false;
    return _isLikelyPosterUrl(url);
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
    _artworkQueue.clear();
    _queuedArtworkIds.clear();
    _artworkRequests.clear();
    _pendingArtworkRequests.clear();
    _programArtwork.clear();
    _programArtworkOrder.clear();
    _programTitleLogos.clear();
    _programTitleLogoOrder.clear();
    _programChannelLookup.clear();
    _heroImageCacheHits.clear();

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
          AppTheme.darkBackground,
          AppTheme.darkBackground.withAlpha((0.95 * 255).round()),
          AppTheme.darkBackground,
        ],
        stops: const [0.0, 0.6, 1.0],
      ),
    );

    final normalizedHeroUrl = normalizeImageUrl(heroImage ?? '');
    final hasHeroImage =
        normalizedHeroUrl.isNotEmpty && !_suspendHeroBackground;
    if (hasHeroImage && !_heroImageCacheHits.containsKey(normalizedHeroUrl)) {
      _checkHeroImageCache(normalizedHeroUrl);
    }
    final heroFallback = _buildHeroLoadingFallback(
      featuredChannel,
      currentProgram,
    );
    final isCachedHero = _heroImageCacheHits[normalizedHeroUrl] == true;
    final heroFit =
        _isPosterStyleUrl(heroImage) ? BoxFit.contain : BoxFit.cover;
    final heroAlignment =
        heroFit == BoxFit.cover ? Alignment.topCenter : Alignment.center;

    // Check if this is a channel logo fallback
    final isChannelLogoFallback = heroImage == featuredChannel.logoUrl;

    if (!hasHeroImage) {
      return Positioned.fill(
        child: DecoratedBox(
          decoration: heroGradient,
          child: heroFallback,
        ),
      );
    }

    return Positioned.fill(
      child: DecoratedBox(
        decoration: heroGradient,
        child: LayoutBuilder(
          builder: (context, constraints) {
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
                  Positioned.fill(
                    child: CachedNetworkImage(
                      imageUrl: normalizedHeroUrl,
                      httpHeaders: HttpClientService().imageHeaders,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.low,
                      memCacheWidth: cacheWidth ~/ 2,
                      memCacheHeight: cacheHeight ~/ 2,
                      imageBuilder: (context, imageProvider) {
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
                      errorWidget: (_, __, ___) => Container(
                        color: AppTheme.darkBackground,
                      ),
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
                      placeholder: (_, __) => const SizedBox.shrink(),
                      errorWidget: (_, url, error) {
                        logHandshakeIfNeeded(url, error,
                            context: 'LiveTV hero logo');
                        return heroFallback;
                      },
                    ),
                  ),
                ],
              );
            }

            // Adaptive handling for ALL hero images (Posters, Backdrops, etc.)
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
                  placeholder: (_, __) => Container(color: AppTheme.darkBackground),
                  errorWidget: (_, __, ___) => Container(color: AppTheme.darkBackground),
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
                      return Image(
                        image: imageProvider,
                        fit: BoxFit.contain,
                        filterQuality: FilterQuality.high,
                      );
                    },
                    placeholder: (_, __) => const SizedBox.shrink(),
                    errorWidget: (_, url, error) {
                      logHandshakeIfNeeded(url, error, context: 'LiveTV hero main');
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

  Widget _buildSkeletonLoader() {
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
              final scrollPos =
                  _scrollController.hasClients ? _scrollController.offset : 0.0;
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
            errorWidget: (context, url, err) => fallback,
          ),
          // Centered image content (Contain)
          CachedNetworkImage(
            imageUrl: url,
            httpHeaders: HttpClientService().imageHeaders,
            fit: BoxFit.contain,
            memCacheWidth: cacheWidth,
            memCacheHeight: cacheHeight,
            placeholder: (context, url) => const SizedBox.shrink(),
            errorWidget: (context, url, err) => fallback,
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
      placeholder: (context, url) => fallback,
      errorWidget: (context, url, err) {
        logHandshakeIfNeeded(url, err, context: 'LiveTV Adaptive');
        return fallback;
      },
      fadeInDuration: const Duration(milliseconds: 240),
    );
  }
}
