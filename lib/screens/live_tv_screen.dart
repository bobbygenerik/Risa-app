import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/services/epg_service.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/widgets/content_focus_provider.dart';
import 'package:iptv_player/widgets/tv_focusable.dart';
import 'package:iptv_player/services/tmdb_service.dart';
import 'package:iptv_player/services/service_validator.dart';

/// A focused Live TV screen. Shows a hero for the currently airing program
/// on a featured channel, plus channel rows below.
class LiveTVScreen extends StatefulWidget {
  const LiveTVScreen({super.key});

  @override
  State<LiveTVScreen> createState() => _LiveTVScreenState();
}

class _LiveTVScreenState extends State<LiveTVScreen>
  with ContentFocusRegistrant<LiveTVScreen> {
  Timer? _carouselTimer;
  int _featuredIndex = 0;
  final FocusNode _watchFocus = FocusNode();
  final FocusNode _settingsButtonFocus = FocusNode();
  final Map<String, String?> _programArtwork = {};
  final Set<String> _artworkRequests = {};
  late final bool _tmdbEnabled;

  @override
  void initState() {
    super.initState();
    _tmdbEnabled = ServiceValidator.isTmdbAvailable;
    // Start carousel once the widget is built — will be updated when channels load
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _startCarouselIfNeeded(),
    );
  }

  @override
  void dispose() {
    _carouselTimer?.cancel();
    _watchFocus.dispose();
    _settingsButtonFocus.dispose();
    super.dispose();
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
    } else {
      _watchFocus.requestFocus();
    }
    return true;
  }

  void _goToSettings() {
    final router = GoRouter.of(context);
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) router.go('/settings');
    });
  }

  void _startCarouselIfNeeded() {
    // Cancel existing timer
    _carouselTimer?.cancel();
    // Start a timer that advances featured index every 8 seconds
    _carouselTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      final channelProvider = Provider.of<ChannelProvider>(
        context,
        listen: false,
      );
      final channels = channelProvider.channels;
      if (channels.isEmpty) return;
      setState(() {
        _featuredIndex = (_featuredIndex + 1) % channels.length;
      });
    });

    // Default focus to the watch button
    final watchFocusNode = _watchFocus;
    Future.delayed(const Duration(milliseconds: 120), () {
      if (mounted) watchFocusNode.requestFocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    final body = Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF050710), Color(0xFF0d1140)],
        ),
      ),
      child: Consumer2<ChannelProvider, EpgService>(
        builder: (context, channelProvider, epgService, _) {
          final channels = channelProvider.channels;

          if (channels.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.live_tv,
                    size: 80,
                    color: AppTheme.primaryBlue.withAlpha((0.5 * 255).round()),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'No Live TV Available',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Load a playlist with Live TV channels from Settings',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  TVFocusable(
                    focusNode: _settingsButtonFocus,
                    onPressed: _goToSettings,
                    borderRadius: BorderRadius.circular(16),
                    focusMargin: const EdgeInsets.only(top: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryBlue,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.settings, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            'Go to Settings',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
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

          // Ensure index is valid for current channel list
          if (_featuredIndex >= channels.length) _featuredIndex = 0;

          final featuredChannel = channels[_featuredIndex];
          final currentProgram = epgService.getCurrentProgram(
            featuredChannel.id,
          );

          return SingleChildScrollView(
            child: Column(
              children: [
                _buildHero(context, featuredChannel, currentProgram),
                _buildChannelSection(
                  context,
                  'Featured Channels',
                  channels.take(6).toList(),
                ),
                const SizedBox(height: 24),
                _buildChannelSection(context, 'All Channels', channels),
                const SizedBox(height: 40),
              ],
            ),
          );
        },
      ),
    );

    return Focus(
      canRequestFocus: false,
      skipTraversal: true,
      onKeyEvent: _handleDirectionalKeyEvent,
      child: body,
    );
  }

  KeyEventResult _handleDirectionalKeyEvent(
    FocusNode node,
    KeyEvent event,
  ) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      return requestNavigationFocus()
          ? KeyEventResult.handled
          : KeyEventResult.ignored;
    }
    return KeyEventResult.ignored;
  }

  Widget _buildHero(BuildContext context, Channel channel, Program? program) {
    final title = program?.title ?? channel.name;
    final subtitle = program != null
        ? '${_formatTime(program.startTime)} — ${_formatTime(program.endTime)}'
        : channel.groupTitle ?? '';

    final progress = program?.progressPercentage ?? 0.0;

    final heroImage = _resolveHeroImage(program);

    return GestureDetector(
      onTap: () => context.push('/player', extra: channel),
      child: Container(
        height: 420,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppTheme.cardBackground,
          borderRadius: BorderRadius.zero,
        ),
        child: Stack(
          children: [
            // Background image if available
            if (heroImage != null && heroImage.isNotEmpty)
              Positioned.fill(
                child: Image.network(
                  heroImage,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) =>
                      Container(color: AppTheme.cardBackground),
                ),
              ),
            // Dark gradient overlay
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF050710), Color(0xFF0d1140)],
                  ),
                ),
              ),
            ),
            // Hero content
            Positioned(
              left: 24,
              bottom: 24,
              right: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (channel.logoUrl != null &&
                          channel.logoUrl!.isNotEmpty)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            channel.logoUrl!,
                            height: 64,
                            width: 120,
                            fit: BoxFit.contain,
                            errorBuilder: (_, __, ___) =>
                                const SizedBox.shrink(),
                          ),
                        ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                if (program != null)
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Text(
                                      'LIVE',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                const SizedBox(width: 8),
                                Flexible(
                                  child: Text(
                                    title,
                                    style: const TextStyle(
                                      color: AppTheme.textPrimary,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w800,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              subtitle,
                              style: const TextStyle(
                                color: AppTheme.textSecondary,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 12),
                            // Progress bar
                            if (program != null)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  LinearProgressIndicator(
                                    value: progress,
                                    color: AppTheme.accentOrange,
                                    backgroundColor: Colors.white.withAlpha(
                                      (0.08 * 255).round(),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    '${(progress * 100).round()}% elapsed',
                                    style: const TextStyle(
                                      color: AppTheme.textSecondary,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      // TV-friendly watch button with consistent focus cues
                      TVFocusable(
                        focusNode: _watchFocus,
                        focusMargin: const EdgeInsets.only(right: 12),
                        borderRadius: BorderRadius.circular(12),
                        onPressed: () => context.push('/player', extra: channel),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppTheme.primaryBlue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 14,
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.play_arrow, color: Colors.white),
                              SizedBox(width: 8),
                              Text(
                                'Watch',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Guide button with stronger contrast when focused
                      TVFocusable(
                        borderRadius: BorderRadius.circular(12),
                        focusColor: AppTheme.primaryBlue,
                        onPressed: () => context.go('/epg'),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: AppTheme.primaryBlue.withAlpha(
                                (0.7 * 255).round(),
                              ),
                              width: 1.5,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 22,
                            vertical: 14,
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.schedule,
                                color: AppTheme.textPrimary,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Guide',
                                style: TextStyle(
                                  color: AppTheme.textPrimary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? _resolveHeroImage(Program? program) {
    if (program == null) return null;
    final direct = program.imageUrl;
    if (direct != null && direct.isNotEmpty) return direct;

    final cached = _programArtwork[program.id];
    if (cached != null) {
      return cached.isNotEmpty ? cached : null;
    }

    if (_tmdbEnabled) {
      _fetchProgramArtwork(program);
    }
    return null;
  }

  Future<void> _fetchProgramArtwork(Program program) async {
    if (_artworkRequests.contains(program.id)) return;
    _artworkRequests.add(program.id);
    try {
      final image = await TMDBService.getBestBackdrop(program.title);
      if (!mounted) return;
      setState(() {
        _programArtwork[program.id] = image ?? '';
      });
    } catch (e) {
      debugPrint('TMDB artwork fetch failed for ${program.title}: $e');
      if (mounted) {
        setState(() {
          _programArtwork[program.id] = '';
        });
      }
    } finally {
      _artworkRequests.remove(program.id);
    }
  }

  Widget _buildChannelSection(
    BuildContext context,
    String title,
    List<Channel> channels,
  ) {
    if (channels.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            title,
            style: const TextStyle(
              color: AppTheme.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: 140,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: FocusTraversalGroup(
              policy: WidgetOrderTraversalPolicy(),
              child: Row(
                children: channels.map((channel) {
                  return TVFocusable(
                    focusMargin: const EdgeInsets.only(right: 16),
                    borderRadius: BorderRadius.circular(12),
                    onPressed: () => context.push('/player', extra: channel),
                    child: Container(
                      width: 200,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppTheme.cardBackground,
                        border: Border.all(
                          color:
                              Colors.white.withAlpha((0.1 * 255).round()),
                          width: 1,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: channel.logoUrl != null &&
                                channel.logoUrl!.isNotEmpty
                            ? Image.network(
                                channel.logoUrl!,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                                errorBuilder: (_, __, ___) =>
                                    _buildChannelPlaceholder(channel.name),
                              )
                            : _buildChannelPlaceholder(channel.name),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildChannelPlaceholder(String name) {
    return Container(
      color: AppTheme.cardBackground,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.live_tv,
              size: 40,
              color: AppTheme.textSecondary.withAlpha((0.5 * 255).round()),
            ),
            const SizedBox(height: 8),
            Text(
              name.length > 20 ? name.substring(0, 20) : name,
              style: TextStyle(
                color: AppTheme.textSecondary.withAlpha((0.7 * 255).round()),
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(DateTime dt) {
    final hour = dt.hour == 0 ? 12 : (dt.hour > 12 ? dt.hour - 12 : dt.hour);
    final period = dt.hour < 12 ? 'AM' : 'PM';
    return '${hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')} $period';
  }
}
