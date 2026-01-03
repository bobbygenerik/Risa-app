import 'package:iptv_player/utils/debug_helper.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:math' as math;

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
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/go_to_settings_button.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/service_validator.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
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
  final Set<String> _artworkRequests = {};
  final List<Program> _artworkQueue = [];
  Timer? _artworkThrottle;
  late final bool _tmdbEnabled;
  bool _initialFocusRequested = false;
  final Map<String, int> _focusedIndexBySection = {};
  final Map<String, DateTime> _artworkRetryAfter = {};
  final Map<String, String?> _programTitleLogos = {};
  final Set<String> _titleLogoRequests = {};
  final Map<String, List<Channel>> _categoryChannelCache = {};
  final Set<String> _categoryChannelLoading = {};
  List<String> _categoryNames = [];
  final Set<String> _epgPrefetchedRows = {};
  bool _loadingCategories = false;
  static const int _initialCategoryPrefetchCount = 8;
  static const int _rowInitialFetch = 12;
  static const int _rowFetchStep = 16;
  static const int _rowVisibleBuffer = 2;
  int _visibleCategoryCount = 12;
  static const int _categoryChunkSize = 8;
  static const double _categoryPrefetchExtent = 900;
  final Queue<String> _categoryLoadQueue = Queue<String>();
  int _activeCategoryLoads = 0;
  static const int _maxCategoryLoads = 2;
  int _lastPrefetchAnchor = -1;
  static const int _prefetchWindowRows = 4;
  final Map<String, ValueNotifier<int>> _categoryRowNotifiers = {};
  Future<List<Channel>>? _previewFuture;
  int _lastPreviewChannelCount = -1;
  final Map<String, ScrollController> _rowScrollControllers = {};
  final Set<String> _rowScrollInitialized = {};
  final Map<String, int> _rowVisibleCountBySection = {};
  final Map<String, int> _categoryOffsets = {};
  final Map<String, bool> _categoryHasMore = {};
  final Set<String> _categoryAppendQueue = {};
  bool _userHasScrolled = false;
  int _lastCategoryChannelCount = 0;
  int _lastHeroCandidateCount = 0;

  bool _categoryPrefetchRequested = false;

  // Featured content rotation
  Timer? _featuredRotationTimer;
  static const Duration _featuredRotationInterval = Duration(minutes: 5);
  List<Channel> _stableFeaturedChannels = [];
  bool _featuredChannelsInitialized = false;

  @override
  void initState() {
    super.initState();
    _tmdbEnabled = ServiceValidator.isTmdbAvailable;

    // Initialize scroll controller
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScrollPrefetch);

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
    _skeletonFocus =
        _focusPool.getFocusNode('live_tv_skeleton', debugLabel: 'Live TV Skeleton');
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
    _timerService.unregister('live_tv_carousel');
    _artworkThrottle?.cancel();
    _featuredRotationTimer?.cancel();
    _artworkQueue.clear();
    _artworkRequests.clear();
    _scrollController.dispose();
    for (final controller in _rowScrollControllers.values) {
      controller.dispose();
    }
    _rowScrollControllers.clear();
    _focusPool.returnFocusNodes(
      ['live_tv_watch', 'live_tv_settings', 'live_tv_first_card', 'live_tv_skeleton'],
    );
    super.dispose();
  }

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
        _categoryOffsets[category] = offset + channels.length;
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
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) router.go('/settings');
    });
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
          // Improved EPG loading detection - only show skeleton if truly loading
          final epgBusy = epgService.hasEpgUrl &&
              (epgService.isDownloading ||
                  epgService.isParsing ||
                  epgService.isLoading) &&
              epgService.loadedChannelCount == 0;

          if (!hasChannels && channelProvider.isLoading) {
            return _buildSkeletonLoader();
          }

          if (epgBusy) {
            return _buildSkeletonLoader();
          }

          if (!hasChannels) {
            final errorMessage = channelProvider.errorMessage;
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
              final readyChannels =
                  _filterChannelsWithLoadedEpg(previewList, epgService);
              if (readyChannels.isEmpty) {
                return _buildSkeletonLoader();
              }
              if (_featuredIndex >= readyChannels.length) _featuredIndex = 0;
              if (_featuredIndex == 0 && readyChannels.isNotEmpty) {
                _featuredIndex = math.Random().nextInt(readyChannels.length);
              }
              final featuredChannel = readyChannels[_featuredIndex];
              final channelId = featuredChannel.tvgId ?? featuredChannel.id;
              Future.microtask(() => epgService.ensureChannelLoaded(channelId,
                  channelName: featuredChannel.name));

              return _buildFullScreenHero(
                context,
                featuredChannel,
                readyChannels,
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
    final contentInset =
        context.spacingSm() + AppSpacing.sidebarCollapsedWidth;
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
                  (scrollPos / (heroHeight * 0.3)).clamp(0.0, 1.0);

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
              if (currentProgram == null) {
                return const SizedBox.shrink();
              }
              final scrollPos =
                  _scrollController.hasClients ? _scrollController.offset : 0.0;
              final fadeProgress =
                  (scrollPos / (heroHeight * 0.12)).clamp(0.0, 1.0);
              final opacity = 1.0 - fadeProgress;
              if (opacity <= 0.01) {
                return const SizedBox.shrink();
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
                child: SizedBox(height: contentTop),
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
                        return _buildFeaturedRow(context, allChannels);
                      }
                      final categoryIndex = index - 1;
                      if (categoryIndex < 0 ||
                          categoryIndex >= _categoryNames.length) {
                        return const SizedBox.shrink();
                      }
                      return _buildCategoryRowWidget(
                        context,
                        _categoryNames[categoryIndex],
                        categoryIndex,
                        isFirstRow: false,
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
                (scrollPos / (heroHeight * 0.3)).clamp(0.0, 1.0);
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
    final titleStyle = AppTypography.heroTitle(context);
    final descriptionStyle = AppTypography.heroDescription(context);
    final logoSlotHeight = context.tvSpacing(64); // Increased from 30 for higher resolution

    // Safe max height: visible area above the row with buffer
    final heroHeight = context.heroHeight();
    final cardPeek = 80.0;
    final contentTop = (heroHeight - cardPeek).clamp(0.0, heroHeight);
    final safeMaxHeight = contentTop - 40; // Tighter buffer since we are shrinking it

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
                maxLines: 1, // Stricter lines for stability
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: context.tvSpacing(6)),
            ],
            if (description.isNotEmpty) ...[
              Text(
                description,
                style: descriptionStyle,
                maxLines: 4, // Increased from 3
                overflow: TextOverflow.ellipsis,
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
                      fontSize: context.tvTextSize(12), // Slightly smaller
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
              width: context.cardWidth() * 0.5, // Slimmer button
              child: BrandPrimaryButton(
                onPressed: () => context.push('/player', extra: channel),
                label: 'Watch Now',
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                fontSize: 13,
                minHeight: 28,
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
    return HeroInfoSkeleton(width: width);
  }

  Widget _buildChannelLogo(BuildContext context, Channel channel) {
    if (channel.logoUrl == null || channel.logoUrl!.isEmpty) {
      return const SizedBox.shrink();
    }
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final logoCacheWidth = (40 * dpr).round();
    final logoCacheHeight = (24 * dpr).round();
    return SizedBox(
      height: 48,
      width: 72,
      child: Center(
        child: Builder(builder: (context) {
          final url = channel.logoUrl!;
          final isSvg = url.toLowerCase().endsWith('.svg') || url.toLowerCase().contains('.svg?');
          if (isSvg) {
            return SvgPicture.network(
              url,
              // Removed fixed width/height to let it fill available space
              fit: BoxFit.contain,
              placeholderBuilder: (_) => const SizedBox.shrink(),
              // onPictureError handler to avoid crashing on bad svg
              clipBehavior: Clip.hardEdge,
            );
          }

          return CachedNetworkImage(
            imageUrl: url,
            memCacheWidth: logoCacheWidth,
            memCacheHeight: logoCacheHeight,
            placeholder: (_, __) => const SizedBox.shrink(),
            errorWidget: (_, __, ___) => const SizedBox.shrink(),
            imageBuilder: (context, imageProvider) => Image(
              image: imageProvider,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              // Removed fixed width/height to let it fill available space
            ),
          );
        }),
      ),
    );
  }

  String? _getChannelCardImage(
      Program? program, Channel? channel, bool allowPrefetch) {
    // Strictly prefer program artwork when it's not a poster/portrait image.
    final channelLogo = channel?.logoUrl;
    if (program != null) {
      final cached = _programArtwork[program.id];
      if (cached != null && cached.isNotEmpty && !_isLikelyPosterUrl(cached)) {
        return cached;
      }

      // Side-effect free artwork fetching check
      if (_tmdbEnabled &&
          allowPrefetch &&
          (!_programArtwork.containsKey(program.id) ||
              _shouldRetryArtwork(program.id))) {
        // Schedule fetch for after build to avoid side effects during build
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) _fetchProgramArtwork(program);
        });
      }

      // Fall back to EPG-provided art while TMDB is resolving.
      final programImage = program.imageUrl;
      if (programImage != null &&
          programImage.isNotEmpty &&
          !_isLikelyPosterUrl(programImage) &&
          !_isLikelyTitleLogoUrl(programImage) &&
          channelLogo != programImage) {
        return programImage;
      }
    }

    return null;
  }

  bool _isLikelyPosterUrl(String url) {
    // Relaxed check: Only filter out very obvious portrait poster formats
    // from TMDB, but allow images that might be legitimate program art.
    final lower = url.toLowerCase();
    
    // Explicit portrait orientations
    if (lower.contains('poster') ||
        lower.contains('portrait')) {
      return true;
    }
    
    // TMDB specific portrait patterns (common poster sizes)
    if (lower.contains('tmdb.org') && 
       (lower.contains('/w342') || lower.contains('/w185'))) {
      return true;
    }
    
    return false;
  }

  bool _isValidProgramArtwork(String? url, Channel channel) {
    if (url == null || url.isEmpty) return false;
    if (_isLikelyPosterUrl(url) || _isLikelyTitleLogoUrl(url)) {
      return false;
    }
    final channelLogo = channel.logoUrl;
    if (channelLogo != null && channelLogo == url) {
      return false;
    }
    if (_matchesChannelLogo(url, channel)) {
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
    if (lower.contains('clearlogo') ||
        lower.contains('logo') ||
        lower.contains('logotype') ||
        lower.contains('titlecard')) {
      return true;
    }
    return lower.endsWith('.svg');
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

    // Trigger async TMDB fetch if not already requested
    if (_tmdbEnabled && !_titleLogoRequests.contains(cacheKey)) {
      _titleLogoRequests.add(cacheKey);
      _fetchTitleLogo(program, channel);
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
      final scheme = uri.scheme.toLowerCase();
      final host = uri.host.toLowerCase();
      final path = uri.path.replaceAll(RegExp(r'/+$'), '').toLowerCase();
      return '$scheme://$host$path';
    } catch (_) {
      return url.toLowerCase();
    }
  }
  
  Future<void> _fetchTitleLogo(Program program, Channel channel) async {
    final cacheKey = program.id;
    try {
      final logo = await TMDBService.getTitleLogo(program.title);
      final isValid = _isValidTitleLogo(logo, channel);
      final stored = isValid ? (logo ?? '') : '';
      if (mounted) {
        setState(() {
          _programTitleLogos[cacheKey] = stored;
        });
      } else {
        _programTitleLogos[cacheKey] = stored;
      }
    } catch (e) {
      debugLog('Error fetching title logo for "${program.title}": $e');
      if (mounted) {
        setState(() {
          _programTitleLogos[cacheKey] = '';
        });
      } else {
        _programTitleLogos[cacheKey] = '';
      }
    } finally {
      _titleLogoRequests.remove(cacheKey);
    }
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
        return cached;
      }

      // 2. Trigger a fetch if TMDB is enabled
      if (_tmdbEnabled) {
        _ensureFreshProgramArtwork(program, channel);
      }

      // 3. Fall back to the direct image URL provided in the EPG XML itself
      final direct = program.imageUrl;
      if (_isValidProgramArtwork(direct, channel)) {
        return direct;
      }
    }

    return null;
  }

  void _ensureFreshProgramArtwork(Program program, Channel channel) {
    if (!_tmdbEnabled) return;
    if (_artworkRequests.contains(program.id)) return;
    final existing = _programArtwork[program.id];
    if (existing != null && existing.isNotEmpty &&
        _isValidProgramArtwork(existing, channel)) {
      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final current = _programArtwork[program.id];
      if (current != null && current.isNotEmpty &&
          _isValidProgramArtwork(current, channel)) {
        return;
      }
      _programArtwork[program.id] = '';
      _fetchProgramArtwork(program);
    });
  }


  Future<void> _fetchProgramArtwork(Program program) async {
    final existing = _programArtwork[program.id];
    if (_artworkRequests.contains(program.id) ||
        (existing != null && existing.isNotEmpty)) {
      return;
    }
    if (!_shouldAttemptArtwork(program.id)) return;
    _artworkRequests.add(program.id);
    _artworkQueue.add(program);
    _scheduleArtworkDrain();
  }

  void _scheduleArtworkDrain() {
    _artworkThrottle ??=
        Timer(const Duration(milliseconds: 400), _drainArtworkQueue);
  }

  Future<void> _drainArtworkQueue() async {
    _artworkThrottle?.cancel();
    _artworkThrottle = null;
    if (_artworkQueue.isEmpty || !mounted) return;

    const int batchSize = 3;
    final batch = _artworkQueue.take(batchSize).toList();
    _artworkQueue.removeRange(0, batch.length);

    for (final program in batch) {
      try {
        debugLog('LiveTV: Fetching TMDB art for: "${program.title}"');
        final image = await TMDBService.getBestBackdrop(program.title);
        if (!mounted) return;
        if (image != null) {
          debugLog('LiveTV: Found TMDB art for "${program.title}": $image');
        } else {
          debugLog('LiveTV: No TMDB art found for "${program.title}"');
        }
        setState(() {
          _programArtwork[program.id] = image ?? '';
        });
      } catch (e) {
        debugLog('LiveTV: Error fetching TMDB art for "${program.title}": $e');
        if (mounted) {
          setState(() {
            _programArtwork[program.id] = '';
          });
        }
        _markArtworkFailure(program.id);
      }
      _artworkRequests.remove(program.id);
    }

    if (_artworkQueue.isNotEmpty) {
      _scheduleArtworkDrain();
    }
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
    _artworkRetryAfter[key] = DateTime.now().add(const Duration(minutes: 10));
  }

  bool _shouldPrefetchArt(String sectionKey, int index) {
    final focusedIndex = _focusedIndexBySection[sectionKey];
    if (focusedIndex == null) {
      return index < 6;
    }
    return (index - focusedIndex).abs() <= 4;
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
    final infoSpacing = 2.0;
    final infoHeight = titleHeight + timeHeight + infoSpacing;
    // Minimal vertical padding, just enough for focus scaling
    final rowHeight = cardHeight + infoHeight + focusExtra * 0.5;
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
          padding: EdgeInsets.only(left: rowInset, bottom: 8), // Added bottom spacing
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
                        isFirstRow: isFirstRow,
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
        SizedBox(height: context.spacingMd()), // Increased from 0
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
    final infoSpacing = 2.0;
    final infoHeight = titleHeight + timeHeight + infoSpacing;
    // Account for category header + underline + spacers
    final captionStyle = AppTypography.caption(context);
    final captionHeight = (captionStyle.fontSize ?? 13.0) * (captionStyle.height ?? 1.2);
    // Header spacing structure: title bottom(2) + underline height(3) + underline bottom(8)
    const headerSpacing = 2 + 3 + 8;
    final rowBottomSpacing = context.spacingMd();

    // Total calculated height of one full row block in the list
    final cardRowHeight = cardHeight + infoHeight + focusExtra * 0.5;
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
      {required bool isFirstRow,
      FocusNode? focusNode,
      VoidCallback? onItemFocus}) {
    return SizedBox(
      width: cardWidth,
      child: Focus(
        focusNode: focusNode,
        canRequestFocus: true,
        onFocusChange: (hasFocus) {
          if (hasFocus) {
            // Update focused index without triggering full screen rebuild if possible

            _focusedIndexBySection[sectionKey] = index;
            

            
            _scrollToHeroPeekOnFocus();
            onItemFocus?.call();
          }
        },
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent) {
            if (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter ||
                event.logicalKey == LogicalKeyboardKey.space) {
              context.push('/player', extra: channel);
              return KeyEventResult.handled;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
              if (isFirstRow) {
                _watchButtonFocus.requestFocus();
                return KeyEventResult.handled;
              }
              // Return ignored to allow default Focus traversal to the row above
              return KeyEventResult.ignored;
            }
            if (event.logicalKey == LogicalKeyboardKey.arrowLeft &&
                index == 0) {
              // Only open sidebar if we are at the start of the list
              final moved = requestNavigationFocus();
              return moved ? KeyEventResult.handled : KeyEventResult.ignored;
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
              onTap: () => context.push('/player', extra: channel),
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
                  allowPrefetch
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
  ) {
    final progress = currentProgram?.progressPercentage ?? 0.0;
    final imageUrl = _getChannelCardImage(currentProgram, channel, allowPrefetch);
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final cacheWidth = (cardWidth * dpr).round();
    final cacheHeight = (cardHeight * dpr).round();
    final logoCacheWidth = (150 * dpr).round();
    final logoCacheHeight = (80 * dpr).round();

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
                if (imageUrl != null)
                  Positioned.fill(
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      memCacheWidth: cacheWidth,
                      memCacheHeight: cacheHeight,
                      placeholder: (_, __) => _buildChannelPlaceholder(),
                      errorWidget: (_, __, ___) => _buildChannelPlaceholder(),
                    ),
                  )
                else
                  _buildChannelPlaceholder(),
                Positioned(
                  top: 8,
                  left: 8,
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

  Widget _buildChannelLogoWidget(
    Channel channel,
    int cacheWidth,
    int cacheHeight,
  ) {
    if (channel.logoUrl != null &&
        channel.logoUrl!.isNotEmpty &&
        !_isLikelyPosterUrl(channel.logoUrl!)) {
      return CachedNetworkImage(
        imageUrl: channel.logoUrl!,
        fit: BoxFit.contain,
        memCacheWidth: cacheWidth,
        memCacheHeight: cacheHeight,
        placeholder: (_, __) => Container(
          decoration: BoxDecoration(
            color: Colors.white.withAlpha((0.1 * 255).round()),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Icon(
            Icons.tv,
            color: Colors.white.withAlpha((0.6 * 255).round()),
            size: 16,
          ),
        ),
        errorWidget: (_, __, ___) => Container(
          decoration: BoxDecoration(
            color: Colors.white.withAlpha((0.1 * 255).round()),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Icon(
            Icons.tv,
            color: Colors.white.withAlpha((0.6 * 255).round()),
            size: 16,
          ),
        ),
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

  Widget _buildHeroFallback() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF2a2a3e),
            Color(0xFF1a1a2e),
            AppTheme.cardBackground,
          ],
        ),
      ),
      child: const SizedBox.shrink(),
    );
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

  Widget _buildHeroContent(
    Channel featuredChannel,
    Program? currentProgram,
    String? heroImage, // Keep as String? for imageUrl
    double scrollProgress,
  ) {
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final heroWidth = MediaQuery.sizeOf(context).width;
    final heroHeight = context.heroHeight();
    final heroCacheWidth = (heroWidth * dpr).round();
    final heroCacheHeight = (heroHeight * dpr).round();
    // Default: show static image
    return heroImage != null && heroImage.isNotEmpty
        ? Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: heroImage,
              fit: BoxFit.cover,
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              memCacheWidth: heroCacheWidth,
              memCacheHeight: heroCacheHeight,
              placeholder: (_, __) => _buildHeroFallback(),
              errorWidget: (_, __, ___) => _buildHeroFallback(),
            ),
          )
        : _buildHeroFallback();
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
    final heroInfoWidth = context.heroInfoWidth();

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
          Positioned(
            top: 0,
            right: rightInset,
            child: SafeArea(
              bottom: false,
              child: Shimmer(
                child: Container(
                  height: context.tvSpacing(24),
                  width: context.tvSpacing(64),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
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
                  SliverToBoxAdapter(child: SizedBox(height: contentTop))
                      .child!, // Hacky way to reuse spacing logic
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
                            // Category Title Skeleton
                            Padding(
                              padding: EdgeInsets.only(
                                  left: rowInset, bottom: 2),
                              child: SkeletonLine(
                                140,
                                height: 16,
                                borderRadius: 4,
                              ),
                            ),
                            // Underline Skeleton
                            Padding(
                              padding: EdgeInsets.only(
                                  left: rowInset, bottom: 8),
                              child: Container(
                                height: 3,
                                width: context.spacingXl(),
                                decoration: BoxDecoration(
                                  color: AppTheme.primaryBlue.withValues(alpha: 0.15),
                                  borderRadius: BorderRadius.circular(999),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: skeletonCardHeight +
                                  context.spacingXs() +
                                  context.tvTextSize(30), // info area space
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
                                      Stack(
                                        children: [
                                          Skeleton(
                                            width: skeletonCardWidth,
                                            height: skeletonCardHeight,
                                            borderRadius: 12,
                                          ),
                                          // Logo placeholder
                                          Positioned(
                                            top: 8,
                                            left: 8,
                                            child: Container(
                                              width: 40,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                color: Colors.white.withValues(alpha: 0.1),
                                                borderRadius: BorderRadius.circular(3),
                                              ),
                                            ),
                                          ),
                                          // Progress bar placeholder
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            right: 0,
                                            child: Container(
                                              height: 4,
                                              decoration: BoxDecoration(
                                                color: Colors.white.withValues(alpha: 0.15),
                                                borderRadius: const BorderRadius.only(
                                                  bottomLeft: Radius.circular(12),
                                                  bottomRight: Radius.circular(12),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      // Title Line
                                      SkeletonLine(skeletonCardWidth * 0.8,
                                          height: 12, borderRadius: 4),
                                      SizedBox(height: 2),
                                      // Time Line
                                      SkeletonLine(skeletonCardWidth * 0.4,
                                          height: 10, borderRadius: 4),
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: context.spacingLg()),
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
}
