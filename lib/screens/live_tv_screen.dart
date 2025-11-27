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
import 'package:iptv_player/widgets/go_to_settings_button.dart';
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
  
  // Pagination for All Channels section
  static const int _channelsPerPage = 20;
  int _currentChannelPage = 0;

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
                  GoToSettingsButton(
                    onPressed: _goToSettings,
                    focusNode: _settingsButtonFocus,
                  ),
                ],
              ),
            );
          }

          // Ensure index is valid for current channel list
          if (_featuredIndex >= channels.length) _featuredIndex = 0;

          final featuredChannel = channels[_featuredIndex];
          final currentProgram = epgService.getCurrentProgram(
            featuredChannel.tvgId ?? featuredChannel.id,
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
                _buildPaginatedChannelSection(context, 'All Channels', channels),
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
            // Background image if available, otherwise gradient with TV icon
            if (heroImage != null && heroImage.isNotEmpty)
              Positioned.fill(
                child: Image.network(
                  heroImage,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => _buildDefaultHeroBackground(),
                ),
              )
            else
              Positioned.fill(child: _buildDefaultHeroBackground()),
            // Dark gradient overlay
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withAlpha((0.7 * 255).round()),
                    ],
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
                      // TV-friendly watch button with subtle focus styling
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Focus(
                          focusNode: _watchFocus,
                          child: Builder(
                            builder: (context) {
                              final isFocused = Focus.of(context).hasFocus;
                              return GestureDetector(
                                onTap: () => context.push('/player', extra: channel),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppTheme.primaryBlue,
                                    borderRadius: BorderRadius.circular(12),
                                    border: isFocused
                                        ? Border.all(color: Colors.white, width: 2)
                                        : null,
                                    boxShadow: isFocused
                                        ? [
                                            BoxShadow(
                                              color: Colors.black.withAlpha((0.3 * 255).round()),
                                              offset: const Offset(0, 4),
                                              blurRadius: 8,
                                            ),
                                          ]
                                        : null,
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
                              );
                            },
                          ),
                        ),
                      ),
                      // Guide button with subtle focus styling
                      Focus(
                        child: Builder(
                          builder: (context) {
                            final isFocused = Focus.of(context).hasFocus;
                            return GestureDetector(
                              onTap: () => context.go('/epg'),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: isFocused
                                        ? Colors.white
                                        : AppTheme.primaryBlue.withAlpha(
                                            (0.7 * 255).round(),
                                          ),
                                    width: isFocused ? 2 : 1.5,
                                  ),
                                  boxShadow: isFocused
                                      ? [
                                          BoxShadow(
                                            color: Colors.black.withAlpha((0.3 * 255).round()),
                                            offset: const Offset(0, 4),
                                            blurRadius: 8,
                                          ),
                                        ]
                                      : null,
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
                            );
                          },
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
    // Try program image first
    if (program != null) {
      final direct = program.imageUrl;
      if (direct != null && direct.isNotEmpty) return direct;

      final cached = _programArtwork[program.id];
      if (cached != null) {
        return cached.isNotEmpty ? cached : null;
      }

      if (_tmdbEnabled) {
        _fetchProgramArtwork(program);
      }
    }
    
    // Fallback: try channel-based artwork if no program or program has no image
    final channel = _getCurrentFeaturedChannel();
    if (channel != null) {
      final channelKey = 'channel_${channel.id}';
      final cachedChannelArt = _programArtwork[channelKey];
      if (cachedChannelArt != null && cachedChannelArt.isNotEmpty) {
        return cachedChannelArt;
      }
      
      // Fetch TMDB artwork based on channel name if enabled
      if (_tmdbEnabled && !_artworkRequests.contains(channelKey)) {
        _fetchChannelArtwork(channel);
      }
    }
    
    return null;
  }

  Channel? _getCurrentFeaturedChannel() {
    final channelProvider = Provider.of<ChannelProvider>(context, listen: false);
    final channels = channelProvider.channels;
    if (channels.isEmpty || _featuredIndex >= channels.length) return null;
    return channels[_featuredIndex];
  }

  Future<void> _fetchChannelArtwork(Channel channel) async {
    final channelKey = 'channel_${channel.id}';
    if (_artworkRequests.contains(channelKey)) return;
    _artworkRequests.add(channelKey);
    try {
      debugPrint('LiveTV: Fetching TMDB art for channel: "${channel.name}"');
      final image = await TMDBService.getBestBackdrop(channel.name);
      if (!mounted) return;
      if (image != null) {
        debugPrint('LiveTV: Found TMDB art for channel "${channel.name}": $image');
      } else {
        debugPrint('LiveTV: No TMDB art found for channel "${channel.name}"');
      }
      setState(() {
        _programArtwork[channelKey] = image ?? '';
      });
    } catch (e) {
      debugPrint('LiveTV: Error fetching TMDB art for channel "${channel.name}": $e');
      if (mounted) {
        setState(() {
          _programArtwork[channelKey] = '';
        });
      }
    } finally {
      _artworkRequests.remove(channelKey);
    }
  }

  Future<void> _fetchProgramArtwork(Program program) async {
    if (_artworkRequests.contains(program.id)) return;
    _artworkRequests.add(program.id);
    try {
      debugPrint('LiveTV: Fetching TMDB art for: "${program.title}"');
      final image = await TMDBService.getBestBackdrop(program.title);
      if (!mounted) return;
      if (image != null) {
        debugPrint('LiveTV: Found TMDB art for "${program.title}": $image');
      } else {
        debugPrint('LiveTV: No TMDB art found for "${program.title}"');
      }
      setState(() {
        _programArtwork[program.id] = image ?? '';
      });
    } catch (e) {
      debugPrint('LiveTV: Error fetching TMDB art for "${program.title}": $e');
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
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Focus(
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent) {
                          if (event.logicalKey == LogicalKeyboardKey.select ||
                              event.logicalKey == LogicalKeyboardKey.enter ||
                              event.logicalKey == LogicalKeyboardKey.space) {
                            context.push('/player', extra: channel);
                            return KeyEventResult.handled;
                          }
                        }
                        return KeyEventResult.ignored;
                      },
                      child: Builder(
                        builder: (context) {
                          final isFocused = Focus.of(context).hasFocus;
                          return GestureDetector(
                            onTap: () => context.push('/player', extra: channel),
                            child: Container(
                              width: 200,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppTheme.cardBackground,
                                border: Border.all(
                                  color: isFocused
                                      ? Colors.white
                                      : Colors.white.withAlpha((0.1 * 255).round()),
                                  width: isFocused ? 2 : 1,
                                ),
                                boxShadow: isFocused
                                    ? [
                                        BoxShadow(
                                          color: Colors.black.withAlpha((0.3 * 255).round()),
                                          offset: const Offset(0, 4),
                                          blurRadius: 8,
                                        ),
                                      ]
                                    : null,
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
                        },
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

  Widget _buildPaginatedChannelSection(
    BuildContext context,
    String title,
    List<Channel> allChannels,
  ) {
    if (allChannels.isEmpty) return const SizedBox.shrink();

    final totalPages = (allChannels.length / _channelsPerPage).ceil();
    final startIdx = _currentChannelPage * _channelsPerPage;
    final endIdx = (startIdx + _channelsPerPage).clamp(0, allChannels.length);
    final pageChannels = allChannels.sublist(startIdx, endIdx);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: AppTheme.textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              if (totalPages > 1)
                Row(
                  children: [
                    Focus(
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent && _currentChannelPage > 0) {
                          if (event.logicalKey == LogicalKeyboardKey.select ||
                              event.logicalKey == LogicalKeyboardKey.enter ||
                              event.logicalKey == LogicalKeyboardKey.space) {
                            setState(() => _currentChannelPage--);
                            return KeyEventResult.handled;
                          }
                        }
                        return KeyEventResult.ignored;
                      },
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios, size: 16),
                        color: _currentChannelPage > 0 
                            ? AppTheme.textPrimary 
                            : AppTheme.textSecondary,
                        onPressed: _currentChannelPage > 0
                            ? () => setState(() => _currentChannelPage--)
                            : null,
                      ),
                    ),
                    Text(
                      'Page ${_currentChannelPage + 1} of $totalPages',
                      style: const TextStyle(
                        color: AppTheme.textSecondary,
                        fontSize: 14,
                      ),
                    ),
                    Focus(
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent && _currentChannelPage < totalPages - 1) {
                          if (event.logicalKey == LogicalKeyboardKey.select ||
                              event.logicalKey == LogicalKeyboardKey.enter ||
                              event.logicalKey == LogicalKeyboardKey.space) {
                            setState(() => _currentChannelPage++);
                            return KeyEventResult.handled;
                          }
                        }
                        return KeyEventResult.ignored;
                      },
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios, size: 16),
                        color: _currentChannelPage < totalPages - 1
                            ? AppTheme.textPrimary
                            : AppTheme.textSecondary,
                        onPressed: _currentChannelPage < totalPages - 1
                            ? () => setState(() => _currentChannelPage++)
                            : null,
                      ),
                    ),
                  ],
                ),
            ],
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
                children: pageChannels.map((channel) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Focus(
                      onKeyEvent: (node, event) {
                        if (event is KeyDownEvent) {
                          if (event.logicalKey == LogicalKeyboardKey.select ||
                              event.logicalKey == LogicalKeyboardKey.enter ||
                              event.logicalKey == LogicalKeyboardKey.space) {
                            context.push('/player', extra: channel);
                            return KeyEventResult.handled;
                          }
                        }
                        return KeyEventResult.ignored;
                      },
                      child: Builder(
                        builder: (context) {
                          final isFocused = Focus.of(context).hasFocus;
                          return GestureDetector(
                            onTap: () => context.push('/player', extra: channel),
                            child: Container(
                              width: 200,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppTheme.cardBackground,
                                border: Border.all(
                                  color: isFocused
                                      ? Colors.white
                                      : Colors.white.withAlpha((0.1 * 255).round()),
                                  width: isFocused ? 2 : 1,
                                ),
                                boxShadow: isFocused
                                    ? [
                                        BoxShadow(
                                          color: Colors.black.withAlpha((0.3 * 255).round()),
                                          offset: const Offset(0, 4),
                                          blurRadius: 8,
                                        ),
                                      ]
                                    : null,
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
                        },
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

  Widget _buildDefaultHeroBackground() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1a1a2e),
            const Color(0xFF16213e),
            AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
          ],
        ),
      ),
      child: Center(
        child: Icon(
          Icons.live_tv,
          size: 120,
          color: Colors.white.withAlpha((0.15 * 255).round()),
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
