// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:video_player/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/compat_pop_scope.dart';
import 'package:iptv_player/widgets/brand_button.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/utils/snackbar_helper.dart';

class EPGScreen extends StatefulWidget {
  const EPGScreen({super.key});

  @override
  State<EPGScreen> createState() => _EPGScreenState();
}

class _EPGScreenState extends State<EPGScreen> {
  final DateTime _selectedDate = DateTime.now();
  final bool _isHourlyView = true;
  String? _selectedChannelId;
  String? _selectedCategory;
  Channel? _playingChannel;
  VideoPlayerController? _miniPlayerController;
  late DateTime _currentTime;

  final ScrollController _horizontalScrollController = ScrollController();
  final ScrollController _verticalScrollController = ScrollController();
  final FocusNode _firstContentFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    Future.delayed(const Duration(seconds: 1), _updateTime);
    
    // Check if we're coming back from player with mini player data
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final routeState = GoRouterState.of(context);
      final extra = routeState.extra as Map<String, dynamic>?;
      
      if (extra != null) {
        final channel = extra['channel'] as Channel?;
        final continuePlayback = extra['continuePlayback'] as bool? ?? false;
        
        if (channel != null && continuePlayback) {
          // Auto-play the channel in mini player
          Future.delayed(const Duration(milliseconds: 100), () {
            _playChannelInMiniPlayer(channel);
          });
        }
      }
    });
  }

  void _updateTime() {
    if (!mounted) return;
    setState(() {
      _currentTime = DateTime.now();
    });
    Future.delayed(const Duration(seconds: 1), _updateTime);
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  void requestFirstContentFocus() {
    if (_firstContentFocusNode.canRequestFocus) {
      _firstContentFocusNode.requestFocus();
    }
  }

  @override
  void dispose() {
    _horizontalScrollController.dispose();
    _verticalScrollController.dispose();
    _miniPlayerController?.dispose();
    super.dispose();
  }

  void _playChannelInMiniPlayer(Channel channel) async {
    // Dispose previous controller
    _miniPlayerController?.dispose();

    setState(() {
      _playingChannel = channel;
    });

    try {
      _miniPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(channel.url),
      );

      await _miniPlayerController!.initialize();
      await _miniPlayerController!.play();

      if (mounted) {
        setState(() {});
      }
    } catch (e) {
      debugPrint('Error initializing mini player: $e');
    }
  }

  void _expandMiniPlayer() {
    if (_playingChannel != null) {
      // Pause mini player
      _miniPlayerController?.pause();

      // Navigate to full player
      context.push('/player', extra: _playingChannel);
    }
  }

  void _closeMiniPlayer() {
    _miniPlayerController?.dispose();
    _miniPlayerController = null;
    setState(() {
      _playingChannel = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Keep using WillPopScope for now to remain compatible with current SDK.
    // TODO: Replace with `PopScope` when the project SDK is upgraded.
    // ignore: deprecated_member_use
    return CompatPopScope(
      onWillPop: () async {
        context.go('/home');
        return false;
      },
      child: Consumer2<ChannelProvider, EpgService>(
        builder: (context, channelProvider, epgService, child) {
          final channels = channelProvider.channels;
          final hasChannels = channels.isNotEmpty;

          if (!hasChannels) {
            return _buildEmptyState(context);
          }

          // Get categories
          final categories = channelProvider.getGroupedChannels();
          final categoryNames = categories.keys.toList()..sort();

          // Filter channels by selected category and hidden status
          final filteredChannels =
              channels.where((ch) {
                // Filter by hidden status
                if (ch.isHidden == true) return false;
                // Filter by category
                if (_selectedCategory != null &&
                    ch.groupTitle != _selectedCategory) {
                  return false;
                }
                return true;
              }).toList()..sort((a, b) {
                // Sort by custom order first, then by channel number, then by name
                if (a.sortOrder != null && b.sortOrder != null) {
                  return a.sortOrder!.compareTo(b.sortOrder!);
                }
                if (a.channelNumber != null && b.channelNumber != null) {
                  return a.channelNumber!.compareTo(b.channelNumber!);
                }
                return a.name.compareTo(b.name);
              });

          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    _buildHeader(epgService),
                    Divider(height: 1, color: AppTheme.darkBackgroundOpacity(0.12), thickness: 2),
                    Expanded(
                      child: Row(
                        children: [
                          // Category sidebar
                          _buildCategorySidebar(categoryNames),
                          const VerticalDivider(width: 1, color: AppTheme.divider),
                          // Channel list
                          _buildChannelList(filteredChannels),
                          const VerticalDivider(width: 1, color: AppTheme.divider),
                          // Program grid
                          Expanded(
                            child: _buildProgramGrid(filteredChannels, epgService),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Mini player overlay
                if (_playingChannel != null) _buildMiniPlayer(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF050710),
            Color(0xFF0d1140),
          ],
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.xl,
              vertical: AppSizes.xl,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.05 * 255).round()),
              borderRadius: BorderRadius.circular(AppSizes.radiusXl),
              border: Border.all(
                color: Colors.white.withAlpha((0.12 * 255).round()),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha((0.35 * 255).round()),
                  blurRadius: 40,
                  spreadRadius: 4,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSizes.lg),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [
                        AppTheme.primaryBlue,
                        AppTheme.accentPink,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.tv_off_outlined,
                    size: 42,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: AppSizes.xl),
                Text(
                  'Guide Not Set Up',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.sm),
                Text(
                  'Upload a playlist or EPG source to bring this screen to life. Your favorites, downloads, and guide will all share the same polished layout once data is loaded.',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppTheme.textSecondary),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.lg),
                const Wrap(
                  alignment: WrapAlignment.center,
                  spacing: AppSizes.sm,
                  runSpacing: AppSizes.sm,
                  children: [
                    _EmptyStateChip(icon: Icons.playlist_add, label: 'Upload Playlist'),
                    _EmptyStateChip(icon: Icons.calendar_today, label: 'Add EPG URL'),
                    _EmptyStateChip(icon: Icons.settings, label: 'Configure Sources'),
                  ],
                ),
                const SizedBox(height: AppSizes.xl),
                BrandPrimaryButton(
                  icon: Icons.playlist_add_circle,
                  label: 'Add Playlist or EPG',
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.xl,
                    vertical: AppSizes.md,
                  ),
                  onPressed: () => context.go('/playlist-login'),
                ),
                const SizedBox(height: AppSizes.md),
                OutlinedButton.icon(
                  onPressed: () => context.go('/settings'),
                  icon: const Icon(Icons.settings_outlined, color: AppTheme.textPrimary),
                  label: const Text('Open Settings'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppTheme.textPrimary,
                    side: BorderSide(color: Colors.white.withAlpha((0.2 * 255).round())),
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.lg,
                      vertical: AppSizes.md,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(EpgService epgService) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg, vertical: AppSizes.md),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha((0.08 * 255).round()),
        border: Border(
          bottom: BorderSide(color: AppTheme.darkBackgroundOpacity(0.12), width: 2),
        ),
      ),
      child: Row(
        children: [
          const Icon(Icons.tv, color: AppTheme.primaryBlue, size: 24),
          const SizedBox(width: AppSizes.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Electronic Program Guide',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                DateFormat('EEEE, MMM dd').format(_selectedDate),
                style: const TextStyle(fontSize: 12, color: AppTheme.textSecondary),
              ),
            ],
          ),
          const Spacer(),
          // Refresh button
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: epgService.isLoading
                ? null
                : () async {
                    
                    final prefs = await SharedPreferences.getInstance();
                    final epgUrl = prefs.getString('epg_url') ?? 
                                   prefs.getString('custom_epg_url');

                    if (epgUrl != null && epgUrl.isNotEmpty) {
                      await epgService.refresh(epgUrl);
                      if (mounted) {
                        showAppSnackBar(
                          context,
                          SnackBar(
                            content: Text(
                              epgService.error != null
                                  ? 'EPG refresh failed: ${epgService.error}'
                                  : 'EPG data refreshed successfully',
                            ),
                            backgroundColor: epgService.error != null
                                ? AppTheme.accentRed
                                : AppTheme.accentGreen,
                          ),
                        );
                      }
                    }
                  },
            tooltip: 'Refresh EPG Data',
          ),
          const SizedBox(width: AppSizes.sm),
          Text(
            _formatTime(_currentTime),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySidebar(List<String> categories) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: Colors.white.withAlpha((0.05 * 255).round()),
        border: Border(
          right: BorderSide(color: Colors.white.withAlpha((0.1 * 255).round()), width: 1),
        ),
      ),
      child: Column(
        children: [
          // All Channels option
          _buildCategoryItem(
            name: 'All Channels',
            isSelected: _selectedCategory == null,
            onTap: () {
              setState(() {
                _selectedCategory = null;
              });
            },
          ),
          const Divider(height: 1, color: AppTheme.divider),
          // Category list
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return _buildCategoryItem(
                  name: category,
                  isSelected: _selectedCategory == category,
                  onTap: () {
                    setState(() {
                      _selectedCategory = category;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem({
    required String name,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Focus(
        onFocusChange: (_) => setState(() {}),
        child: Builder(builder: (context) {
          final bool isFocused = Focus.of(context).hasFocus;
          final Color iconColor = isFocused
              ? Colors.white
              : (isSelected ? AppTheme.primaryBlue : AppTheme.textSecondary);
          final Color textColor = isFocused
              ? Colors.white
              : (isSelected ? AppTheme.primaryBlue : AppTheme.textSecondary);
          return AnimatedScale(
            scale: isFocused ? 1.02 : 1.0,
            duration: AppDurations.fast,
            curve: Curves.easeOut,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.md,
                vertical: AppSizes.sm,
              ),
              child: Row(
                children: [
                  // Left selected indicator bar with fade-in
                  AnimatedOpacity(
                    opacity: isSelected ? 1.0 : 0.0,
                    duration: AppDurations.fast,
                    child: AnimatedContainer(
                      duration: AppDurations.fast,
                      width: isSelected ? (isFocused ? 3 : 2) : 0,
                      height: 18,
                      decoration: isSelected
                          ? const BoxDecoration(
                              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
                            )
                          : null,
                    ),
                  ),
                  if (isSelected) const SizedBox(width: AppSizes.sm),
                  Icon(Icons.folder, size: 18, color: iconColor),
                  const SizedBox(width: AppSizes.sm),
                  Expanded(
                    child: Text(
                      name,
                      style: TextStyle(
                        color: textColor,
                        fontWeight:
                            (isFocused || isSelected) ? FontWeight.bold : FontWeight.normal,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildMiniPlayer() {
    if (_playingChannel == null) return const SizedBox.shrink();

    // Get current program for the channel
    final epgService = Provider.of<EpgService>(context, listen: false);
    final currentProgram = epgService.getCurrentProgram(
      _playingChannel!.tvgId ?? _playingChannel!.id,
    );

    return Positioned(
      bottom: 16,
      right: 16,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Channel info panel
          _buildChannelInfoPanel(currentProgram),
          const SizedBox(width: 12),
          // Video player
          Material(
            elevation: 8,
            borderRadius: BorderRadius.circular(AppSizes.radiusLg),
            child: Container(
              width: 400,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                border: Border.all(color: AppTheme.primaryBlue, width: 2),
              ),
              child: Stack(
                children: [
                  // Video player
                  if (_miniPlayerController != null &&
                      _miniPlayerController!.value.isInitialized)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                      child: SizedBox.expand(
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: SizedBox(
                            width: _miniPlayerController!.value.size.width,
                            height: _miniPlayerController!.value.size.height,
                            child: VideoPlayer(_miniPlayerController!),
                          ),
                        ),
                      ),
                    )
                  else
                    const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(height: 8),
                          Text(
                            'Loading stream...',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),

                  // Controls overlay
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(AppSizes.sm),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF050710),
                  Color(0xFF0d1140),
                ],
              )
                      ),
                      child: Row(
                        children: [
                          // Channel logo
                          if (_playingChannel!.logoUrl != null)
                            Container(
                              width: 40,
                              height: 40,
                              margin: const EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.network(
                                  _playingChannel!.logoUrl!,
                                  fit: BoxFit.contain,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Icon(
                                      Icons.tv,
                                      color: AppTheme.primaryBlue,
                                    );
                                  },
                                ),
                              ),
                            ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _playingChannel!.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (currentProgram != null)
                                  Text(
                                    currentProgram.title,
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20,
                            ),
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: _closeMiniPlayer,
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Expand button
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: IconButton(
                      icon: const Icon(Icons.fullscreen, color: Colors.white),
                      onPressed: _expandMiniPlayer,
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.black.withAlpha((0.5 * 255).round()),
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

  Widget _buildChannelInfoPanel(Program? currentProgram) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(AppSizes.radiusLg),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(AppSizes.md),
        decoration: BoxDecoration(
          color: AppTheme.cardBackground,
          borderRadius: BorderRadius.circular(AppSizes.radiusLg),
          border: Border.all(color: AppTheme.divider),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Current program
            if (currentProgram != null) ...[
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppTheme.accentRed,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          size: 8,
                          color: Colors.white,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'LIVE',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${DateFormat.Hm().format(currentProgram.startTime)} - ${DateFormat.Hm().format(currentProgram.endTime)}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                currentProgram.title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              if (currentProgram.description != null)
                Text(
                  currentProgram.description!,
                  style: const TextStyle(fontSize: 13, color: AppTheme.textSecondary),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
            ] else ...[
              const Text(
                'No Program Information',
                style: TextStyle(fontSize: 14, color: AppTheme.textSecondary),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildChannelList(List<Channel> channels) {
    return Container(
      width: 200,
      color: AppTheme.sidebarBackground,
      child: Column(
        children: [
          // Header
          Container(
            height: 60,
            padding: const EdgeInsets.all(AppSizes.md),
            alignment: Alignment.centerLeft,
            child: Text(
              'CHANNELS',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(height: 1, color: AppTheme.divider),

          // Channel list
          Expanded(
            child: ListView.builder(
              controller: _verticalScrollController,
              itemCount: channels.length,
              itemBuilder: (context, index) {
                final channel = channels[index];
                if (index == 0) {
                  return Focus(
                    focusNode: _firstContentFocusNode,
                    child: _buildChannelItem(channel),
                  );
                }
                return _buildChannelItem(channel);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChannelItem(Channel channel) {
    final isSelected = _selectedChannelId == channel.id;
    final isPlaying = _playingChannel?.id == channel.id;

    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: isSelected ? AppTheme.primaryBlue.withAlpha((0.2 * 255).round()) : null,
        border: Border(
          bottom: const BorderSide(color: AppTheme.divider, width: 0.5),
          left: BorderSide(
            color: isPlaying ? AppTheme.accentGreen : Colors.transparent,
            width: 3,
          ),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            setState(() {
              _selectedChannelId = channel.id;
            });
            // Play in mini player
            _playChannelInMiniPlayer(channel);
          },
          onLongPress: () {
            _showChannelOptions(channel);
          },
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.sm),
            child: Row(
              children: [
                // Channel logo
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppTheme.cardBackground,
                    borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                  ),
                  child: channel.logoUrl != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(
                            AppSizes.radiusSm,
                          ),
                          child: Image.network(
                            channel.logoUrl!,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Center(
                                child: Icon(
                                  Icons.tv,
                                  color: AppTheme.primaryBlue,
                                  size: 24,
                                ),
                              );
                            },
                          ),
                        )
                      : const Center(
                          child: Icon(
                            Icons.tv,
                            color: AppTheme.primaryBlue,
                            size: 24,
                          ),
                        ),
                ),

                const SizedBox(width: AppSizes.sm),

                // Channel info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        channel.name,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (channel.channelNumber != null)
                        Text(
                          '${channel.channelNumber}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProgramGrid(List<Channel> channels, EpgService epgService) {
    if (epgService.isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: AppSizes.md),
            Text('Loading EPG data...'),
          ],
        ),
      );
    }

    if (!epgService.hasData) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_today,
              size: 60,
              color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
            ),
            const SizedBox(height: AppSizes.md),
            Text(
              'No EPG Data Available',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: AppSizes.sm),
            Text(
              'Configure EPG URL in Settings',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppTheme.textSecondary),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // Time header
        _buildTimeHeader(),
        const Divider(height: 1, color: AppTheme.divider),

        // Programs grid
        Expanded(
          child: SingleChildScrollView(
            controller: _horizontalScrollController,
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: _calculateGridWidth(),
              child: ListView.builder(
                controller: _verticalScrollController,
                itemCount: channels.length,
                itemBuilder: (context, index) {
                  final channel = channels[index];
                  return _buildProgramRow(channel, epgService);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTimeHeader() {
    final hours = _isHourlyView ? 24 : 48;

    return Container(
      height: 60,
      child: Row(
        children: List.generate(hours, (index) {
          final hour = _isHourlyView ? index : index ~/ 2;
          final minute = _isHourlyView ? 0 : (index % 2) * 30;
          final time = TimeOfDay(hour: hour, minute: minute);

          return Container(
            width: _isHourlyView ? 120 : 60,
            padding: const EdgeInsets.all(AppSizes.sm),
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(color: AppTheme.divider, width: 0.5),
              ),
            ),
            child: Center(
              child: Text(
                time.format(context),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildProgramRow(Channel channel, EpgService epgService) {
    // Get programs for this channel from EPG service
    final programs = epgService.epgData[channel.tvgId ?? channel.id] ?? [];

    // Filter programs for selected date
    final startOfDay = DateTime(
      _selectedDate.year,
      _selectedDate.month,
      _selectedDate.day,
    );
    final endOfDay = startOfDay.add(const Duration(days: 1));

    final dayPrograms = programs.where((program) {
      return program.startTime.isBefore(endOfDay) &&
          program.endTime.isAfter(startOfDay);
    }).toList();

    return Container(
      height: 80,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppTheme.divider, width: 0.5)),
      ),
      child: dayPrograms.isEmpty
          ? Center(
              child: Text(
                'No EPG data',
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
              ),
            )
          : Row(
              children: dayPrograms.map((program) {
                return _buildProgramCell(program);
              }).toList(),
            ),
    );
  }

  Widget _buildProgramCell(Program program) {
    final duration = program.duration.inMinutes;
    final width = (duration / 60) * 120; // 120px per hour
    final isLive = program.isCurrentlyPlaying;
    final hasCatchup = program.hasCatchup;

    return Container(
      width: width,
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: isLive
            ? AppTheme.primaryBlue
            : hasCatchup
            ? AppTheme.accentOrange.withAlpha((0.3 * 255).round())
            : AppTheme.cardBackground,
        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
        border: Border.all(
          color: isLive
              ? AppTheme.primaryBlue
              : hasCatchup
              ? AppTheme.accentOrange
              : AppTheme.divider,
          width: isLive || hasCatchup ? 2 : 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _showProgramDetails(program),
          borderRadius: BorderRadius.circular(AppSizes.radiusSm),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    if (hasCatchup) ...[
                          const Icon(
                            Icons.replay,
                            size: 14,
                            color: AppTheme.accentOrange,
                          ),
                          const SizedBox(width: 4),
                        ],
                    Expanded(
                      child: Text(
                        program.title,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: isLive
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  '${DateFormat.Hm().format(program.startTime)} - ${DateFormat.Hm().format(program.endTime)}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showProgramDetails(Program program) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: AppTheme.cardBackground,
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(AppSizes.lg),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Program image
              if (program.imageUrl != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppSizes.radiusLg),
                  child: Image.network(
                    program.imageUrl!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF050710),
                              Color(0xFF0d1140),
                            ],
                          ),
                        ),
                        child: const Icon(Icons.tv, size: 64),
                      );
                    },
                  ),
                ),

              const SizedBox(height: AppSizes.lg),

              // Title
              Text(
                program.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),

              const SizedBox(height: AppSizes.sm),

              // Time and status
              Row(
                children: [
                  const Icon(
                    Icons.access_time,
                    size: 16,
                    color: AppTheme.textSecondary,
                  ),
                  const SizedBox(width: AppSizes.xs),
                  Text(
                    '${DateFormat.Hm().format(program.startTime)} - ${DateFormat.Hm().format(program.endTime)}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(width: AppSizes.md),
                  if (program.isCurrentlyPlaying)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.sm,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.accentRed,
                        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.fiber_manual_record,
                            size: 8,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'LIVE',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),

              const SizedBox(height: AppSizes.md),

              // Description
              if (program.description != null)
                Text(
                  program.description!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

              const SizedBox(height: AppSizes.xl),

              // Action buttons
              Row(
                children: [
                  // Watch Now / Watch Catch-up button
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                        if (program.hasCatchup) {
                          // Play catch-up stream
                          _playCatchup(program);
                        } else if (program.isCurrentlyPlaying) {
                          // Play live channel
                          _playLive(program);
                        } else if (program.isFutureProgram) {
                          // Show message for future programs
                            showAppSnackBar(
                              context,
                              const SnackBar(
                                content: Text('This program hasn\'t aired yet'),
                              ),
                            );
                        }
                      },
                      icon: Icon(
                        program.hasCatchup ? Icons.replay : Icons.play_arrow,
                      ),
                      label: Text(
                        program.hasCatchup
                            ? 'Watch Catch-up'
                            : program.isCurrentlyPlaying
                            ? 'Watch Live'
                            : 'Watch',
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: program.hasCatchup
                            ? AppTheme.accentOrange
                            : AppTheme.primaryBlue,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSizes.sm),
                  // Record button (only for future programs)
                  if (program.isFutureProgram)
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // Record functionality
                          showAppSnackBar(
                            context,
                            SnackBar(
                              content: Text(
                                'Recording scheduled for ${program.title}',
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.fiber_manual_record),
                        label: const Text('Record'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          side: const BorderSide(color: AppTheme.accentRed),
                        ),
                      ),
                    ),
                  // Remind button (only for future programs)
                  if (program.isFutureProgram) ...[
                    const SizedBox(width: AppSizes.sm),
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // Set reminder
                          showAppSnackBar(
                            context,
                            SnackBar(
                              content: Text(
                                'Reminder set for ${program.title}',
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.alarm),
                        label: const Text('Remind'),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          side: const BorderSide(color: AppTheme.primaryBlue),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _calculateGridWidth() {
    final hours = _isHourlyView ? 24 : 48;
    final cellWidth = _isHourlyView ? 120.0 : 60.0;
    return hours * cellWidth;
  }

  void _showChannelOptions(Channel channel) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Channel Options'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                channel.isFavorite == true
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: AppTheme.accentRed,
              ),
              title: Text(
                channel.isFavorite == true
                    ? 'Remove from Favorites'
                    : 'Add to Favorites',
              ),
              onTap: () {
                Navigator.pop(context);
                _toggleFavorite(channel);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.visibility_off,
                color: AppTheme.textSecondary,
              ),
              title: const Text('Hide Channel'),
              onTap: () {
                Navigator.pop(context);
                _hideChannel(channel);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit, color: AppTheme.primaryBlue),
              title: const Text('Edit Channel Number'),
              onTap: () {
                Navigator.pop(context);
                _editChannelNumber(channel);
              },
            ),
            ListTile(
              leading: const Icon(Icons.link, color: AppTheme.accentGreen),
              title: const Text('Assign EPG Source'),
              onTap: () {
                Navigator.pop(context);
                _assignEPGSource(channel);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _toggleFavorite(Channel channel) {
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    if (channel.isFavorite == true) {
      channelProvider.removeFromFavorites(channel);
    } else {
      channelProvider.addToFavorites(channel);
    }
    showAppSnackBar(
      context,
      SnackBar(
        content: Text(
          channel.isFavorite == true
              ? 'Removed from favorites'
              : 'Added to favorites',
        ),
      ),
    );
  }

  void _hideChannel(Channel channel) {
    // This would update the channel provider to mark channel as hidden
    showAppSnackBar(
      context,
      SnackBar(
        content: Text('${channel.name} has been hidden'),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            // Undo hide action
          },
        ),
      ),
    );
  }

  void _editChannelNumber(Channel channel) {
    final controller = TextEditingController(
      text: channel.channelNumber?.toString() ?? '',
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Edit Channel Number'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Channel Number',
            hintText: 'Enter channel number',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Update channel number
              final localContext = context;
              if (localContext.mounted) {
                showAppSnackBar(localContext, const SnackBar(content: Text('Channel number updated')));
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _assignEPGSource(Channel channel) {
    final controller = TextEditingController(text: channel.tvgId ?? '');

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppTheme.cardBackground,
        title: const Text('Assign EPG Source'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Enter the TVG ID or EPG channel ID to link this channel to EPG data.',
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 13),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'EPG Channel ID',
                hintText: 'e.g., cnn.us or BBCOne.uk',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Update EPG source
              final localContext = context;
              if (localContext.mounted) {
                showAppSnackBar(localContext, const SnackBar(content: Text('EPG source assigned')));
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _playCatchup(Program program) {
    if (program.catchupUrl == null) return;

    // Create a temporary channel object with catch-up URL
    final catchupChannel = Channel(
      id: '${program.channelId}_catchup_${program.id}',
      name: '${program.title} (Catch-up)',
      url: program.catchupUrl!,
      logoUrl: program.imageUrl,
      groupTitle: 'Catch-up TV',
      tvgId: program.channelId,
    );

    // Navigate to player with catch-up stream
    context.push('/player', extra: catchupChannel);
  }

  void _playLive(Program program) {
    // Find the channel and navigate to live player
    final channelProvider = Provider.of<ChannelProvider>(
      context,
      listen: false,
    );
    final channel = channelProvider.channels.firstWhere(
      (ch) => ch.id == program.channelId,
      orElse: () => Channel(
        id: program.channelId,
        name: 'Unknown Channel',
        url: '',
        groupTitle: '',
      ),
    );

    if (channel.url.isNotEmpty) {
      context.push('/player', extra: channel);
    } else {
      final localContext = context;
      if (localContext.mounted) {
        showAppSnackBar(localContext, const SnackBar(content: Text('Channel not available')));
      }
    }
  }
}

class _EmptyStateChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _EmptyStateChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.md,
        vertical: AppSizes.sm,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha((0.08 * 255).round()),
        borderRadius: BorderRadius.circular(AppSizes.radiusFull),
        border: Border.all(
          color: Colors.white.withAlpha((0.16 * 255).round()),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: AppTheme.primaryBlue),
          const SizedBox(width: AppSizes.xs),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppTheme.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
