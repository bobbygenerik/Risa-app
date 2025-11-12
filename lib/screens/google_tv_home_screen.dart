// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:iptv_player/providers/channel_provider.dart';
import 'package:iptv_player/providers/content_provider.dart';
import 'package:iptv_player/utils/app_theme.dart';

class GoogleTVHomeScreen extends StatefulWidget {
  const GoogleTVHomeScreen({super.key});

  @override
  State<GoogleTVHomeScreen> createState() => _GoogleTVHomeScreenState();
}

class _GoogleTVHomeScreenState extends State<GoogleTVHomeScreen> {
  final FocusNode _primaryCtaFocusNode = FocusNode(
    debugLabel: 'HomeCtaPrimary',
  );
  final FocusNode _secondaryCtaFocusNode = FocusNode(
    debugLabel: 'HomeCtaSecondary',
  );
  final FocusNode _firstLiveCardFocusNode = FocusNode(
    debugLabel: 'HomeFirstLiveCard',
  );

  bool _requestedContentFocus = false;

  @override
  void dispose() {
    _primaryCtaFocusNode.dispose();
    _secondaryCtaFocusNode.dispose();
    _firstLiveCardFocusNode.dispose();
    super.dispose();
  }

  /// Called by [AppShell] to focus the first interactive widget on screen.
  void requestFirstContentFocus() {
    if (!mounted) return;
    final provider = context.read<ChannelProvider>();
    if (_shouldShowPlaylistGate(provider)) {
      if (_primaryCtaFocusNode.canRequestFocus) {
        _primaryCtaFocusNode.requestFocus();
      }
      return;
    }

    if (_firstLiveCardFocusNode.canRequestFocus) {
      _firstLiveCardFocusNode.requestFocus();
    }
  }

  bool _shouldShowPlaylistGate(ChannelProvider provider) {
    if (provider.isLoading && provider.channels.isNotEmpty) {
      return false;
    }
    if (provider.channels.isNotEmpty) {
      return false;
    }
    return !provider.hasLoadedPlaylist || provider.channels.isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<ChannelProvider, ContentProvider>(
      builder: (context, channelProvider, contentProvider, _) {
        // Gate the standard home layout until the user has a playlist ready.
        final bool showGate = _shouldShowPlaylistGate(channelProvider);
        final bool isLoading =
            channelProvider.isLoading && channelProvider.channels.isEmpty;

        if (showGate) {
          _requestedContentFocus = false;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted) return;
            if (_primaryCtaFocusNode.canRequestFocus) {
              _primaryCtaFocusNode.requestFocus();
            }
          });
        } else if (!_requestedContentFocus) {
          _requestedContentFocus = true;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted) return;
            if (_firstLiveCardFocusNode.canRequestFocus) {
              _firstLiveCardFocusNode.requestFocus();
            }
          });
        }

        final liveChannels = channelProvider.channels
            .map((channel) => channel.name)
            .where((name) => name.isNotEmpty)
            .toList();
        final movieTitles = contentProvider.movies
            .map((content) => content.title)
            .where((title) => title.isNotEmpty)
            .toList();
        final continueWatchingTitles = contentProvider.continueWatching
            .map((content) => content.title)
            .where((title) => title.isNotEmpty)
            .toList();

        return Scaffold(
          backgroundColor: AppTheme.darkBackground,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTopBar(),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 220),
                    switchInCurve: Curves.easeOutCubic,
                    switchOutCurve: Curves.easeInCubic,
                    child: showGate
                        ? _PlaylistGate(
                            key: const ValueKey('playlist-gate'),
                            isLoading: isLoading,
                            errorMessage: channelProvider.errorMessage,
                            onOpenSettings: () => context.go('/settings'),
                            onOpenPlaylist: () => context.go('/playlist-login'),
                            onRetry: channelProvider.autoLoadPlaylist,
                            primaryFocusNode: _primaryCtaFocusNode,
                            secondaryFocusNode: _secondaryCtaFocusNode,
                          )
                        : _HomeContent(
                            key: const ValueKey('home-content'),
                            liveChannels: liveChannels,
                            movieTitles: movieTitles,
                            continueWatching: continueWatchingTitles,
                            firstCardFocusNode: _firstLiveCardFocusNode,
                          ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTopBar() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: _TopBar(),
    );
  }
}

class _HomeContent extends StatelessWidget {
  const _HomeContent({
    super.key,
    required this.liveChannels,
    required this.movieTitles,
    required this.continueWatching,
    required this.firstCardFocusNode,
  });

  final List<String> liveChannels;
  final List<String> movieTitles;
  final List<String> continueWatching;
  final FocusNode firstCardFocusNode;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 24),
      children: [
        _buildCarousel(
          title: 'Live TV',
          items: liveChannels,
          isFirst: true,
          firstItemFocusNode: firstCardFocusNode,
        ),
        _buildCarousel(title: 'Movies', items: movieTitles),
        _buildCarousel(
          title: 'Continue Watching',
          items: continueWatching,
          emptyFallbackCount: 3,
        ),
      ],
    );
  }

  Widget _buildCarousel({
    required String title,
    required List<String> items,
    bool isFirst = false,
    FocusNode? firstItemFocusNode,
    int emptyFallbackCount = 5,
  }) {
    return _FocusableCarousel(
      title: title,
      items: items,
      emptyFallbackCount: emptyFallbackCount,
      isFirst: isFirst,
      firstItemFocusNode: firstItemFocusNode,
      cardBuilder: (label, {bool autofocus = false, FocusNode? focusNode}) =>
          _FocusableCard(
            label: label,
            autofocus: autofocus,
            focusNode: focusNode,
          ),
    );
  }
}

class _PlaylistGate extends StatelessWidget {
  const _PlaylistGate({
    super.key,
    required this.isLoading,
    required this.errorMessage,
    required this.onOpenSettings,
    required this.onOpenPlaylist,
    required this.onRetry,
    required this.primaryFocusNode,
    required this.secondaryFocusNode,
  });

  final bool isLoading;
  final String? errorMessage;
  final VoidCallback onOpenSettings;
  final VoidCallback onOpenPlaylist;
  final Future<void> Function() onRetry;
  final FocusNode primaryFocusNode;
  final FocusNode secondaryFocusNode;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppTheme.cardBackground.withAlpha((0.95 * 255).round()),
              borderRadius: BorderRadius.circular(28),
              border: Border.all(color: AppTheme.primaryBlue.withAlpha((0.25 * 255).round())),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha((0.45 * 255).round()),
                  blurRadius: 32,
                  offset: const Offset(0, 18),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.live_tv, size: 64, color: AppTheme.primaryBlue),
                  const SizedBox(height: 20),
                  Text(
                    'Load a Playlist to Continue',
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.3,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Add an M3U or Xtream playlist in Settings to unlock Live TV, movies, and recommendations.',
                    style: textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textSecondary,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  if (errorMessage != null && errorMessage!.isNotEmpty) ...[
                    const SizedBox(height: 18),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppTheme.accentRed.withAlpha((0.12 * 255).round()),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: AppTheme.accentRed.withAlpha((0.4 * 255).round()),
                        ),
                      ),
                      child: Text(
                        errorMessage!,
                        style: textTheme.bodyMedium?.copyWith(
                          color: AppTheme.accentRed,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                  const SizedBox(height: 28),
                  if (isLoading) ...[
                    const CircularProgressIndicator(),
                    const SizedBox(height: 18),
                    Text(
                      'Fetching your last playlist... hold tight',
                      style: textTheme.bodySmall?.copyWith(
                        color: AppTheme.textSecondary,
                      ),
                    ),
                  ] else ...[
                    FocusTraversalGroup(
                      policy: OrderedTraversalPolicy(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _CtaButton(
                            focusNode: primaryFocusNode,
                            label: 'Go to Settings',
                            icon: Icons.settings,
                            onPressed: onOpenSettings,
                            autofocus: true,
                          ),
                          const SizedBox(width: 16),
                          _CtaButton(
                            focusNode: secondaryFocusNode,
                            label: 'Load Playlist',
                            icon: Icons.playlist_add,
                            onPressed: onOpenPlaylist,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 18),
                    TextButton.icon(
                      onPressed: () {
                        onRetry();
                      },
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry Auto-Load'),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CtaButton extends StatefulWidget {
  const _CtaButton({
    required this.focusNode,
    required this.label,
    required this.icon,
    required this.onPressed,
    this.autofocus = false,
  });

  final FocusNode focusNode;
  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool autofocus;

  @override
  State<_CtaButton> createState() => _CtaButtonState();
}

class _CtaButtonState extends State<_CtaButton> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      onFocusChange: (hasFocus) {
        if (_isFocused != hasFocus) {
          setState(() => _isFocused = hasFocus);
        }
      },
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.enter): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.space): ActivateIntent(),
      },
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) {
            widget.onPressed();
            return null;
          },
        ),
      },
      child: FilledButton.icon(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          backgroundColor: _isFocused
              ? AppTheme.primaryBlue
              : AppTheme.primaryBlue.withAlpha((0.85 * 255).round()),
        ),
        onPressed: widget.onPressed,
        icon: Icon(widget.icon),
        label: Text(widget.label),
      ),
    );
  }
}

class _TopBar extends StatefulWidget {
  const _TopBar();

  @override
  State<_TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<_TopBar> {
  final List<FocusNode> _iconFocusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];
  int _focusedIndex = -1;

  @override
  void dispose() {
    for (final node in _iconFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onFocusChange(int index, bool focused) {
    setState(() {
      _focusedIndex = focused
          ? index
          : (_focusedIndex == index ? -1 : _focusedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Risa IPTV',
          style: TextStyle(
            color: AppTheme.primaryBlue,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        const Spacer(),
        _buildFocusableIcon(
          index: 0,
          icon: Icons.search,
          tooltip: 'Search',
          onPressed: () {
            if (mounted) {
              context.go('/search');
            }
          },
        ),
        const SizedBox(width: 16),
        _buildFocusableIcon(
          index: 1,
          icon: Icons.settings,
          tooltip: 'Settings',
          onPressed: () {
            if (mounted) {
              context.go('/settings');
            }
          },
        ),
        const SizedBox(width: 16),
        _buildFocusableIcon(
          index: 2,
          icon: Icons.person,
          tooltip: 'Profile',
          onPressed: () {
            if (mounted) {
              context.go('/edit-profile');
            }
          },
        ),
      ],
    );
  }

  Widget _buildFocusableIcon({
    required int index,
    required IconData icon,
    required String tooltip,
    required VoidCallback onPressed,
  }) {
    return FocusableActionDetector(
      focusNode: _iconFocusNodes[index],
      onFocusChange: (focused) => _onFocusChange(index, focused),
      autofocus: false,
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.arrowLeft): DirectionalFocusIntent(
          TraversalDirection.left,
        ),
        LogicalKeySet(LogicalKeyboardKey.arrowRight): DirectionalFocusIntent(
          TraversalDirection.right,
        ),
        LogicalKeySet(LogicalKeyboardKey.arrowDown): DirectionalFocusIntent(
          TraversalDirection.down,
        ),
        LogicalKeySet(LogicalKeyboardKey.enter): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.space): ActivateIntent(),
      },
      actions: <Type, Action<Intent>>{
        DirectionalFocusIntent: CallbackAction<DirectionalFocusIntent>(
          onInvoke: (intent) {
            if (intent.direction == TraversalDirection.left && index > 0) {
              _iconFocusNodes[index - 1].requestFocus();
            } else if (intent.direction == TraversalDirection.right &&
                index < _iconFocusNodes.length - 1) {
              _iconFocusNodes[index + 1].requestFocus();
            } else if (intent.direction == TraversalDirection.down) {
              FocusScope.of(context).nextFocus();
            }
            return null;
          },
        ),
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) {
            onPressed();
            return null;
          },
        ),
      },
      child: Tooltip(
        message: tooltip,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOutCubic,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _focusedIndex == index
                ? AppTheme.primaryBlue.withAlpha((0.22 * 255).round())
                : Colors.transparent,
            boxShadow: _focusedIndex == index
                ? [
                    BoxShadow(
                      color: AppTheme.primaryBlue.withAlpha((0.7 * 255).round()),
                      blurRadius: 16,
                      spreadRadius: 2,
                    ),
                  ]
                : [],
            border: _focusedIndex == index
                ? Border.all(color: AppTheme.primaryBlue, width: 3)
                : null,
          ),
          child: Semantics(
            label: tooltip,
            button: true,
            child: Icon(icon, color: Colors.white, size: 32),
          ),
        ),
      ),
    );
  }

  // _buildCard is now only used as a closure with autofocus param in _buildCarousel
}

class _FocusableCard extends StatefulWidget {
  final String label;
  final bool autofocus;
  final FocusNode? focusNode;
  const _FocusableCard({
    required this.label,
    this.autofocus = false,
    this.focusNode,
  });

  @override
  State<_FocusableCard> createState() => _FocusableCardState();
}

class _FocusableCardState extends State<_FocusableCard> {
  bool _focused = false;

  void _onFocusChange(bool focused) {
    setState(() {
      _focused = focused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      focusNode: widget.focusNode,
      onFocusChange: _onFocusChange,
      autofocus: widget.autofocus,
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.arrowLeft): DirectionalFocusIntent(
          TraversalDirection.left,
        ),
        LogicalKeySet(LogicalKeyboardKey.arrowRight): DirectionalFocusIntent(
          TraversalDirection.right,
        ),
        LogicalKeySet(LogicalKeyboardKey.enter): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.space): ActivateIntent(),
      },
      actions: <Type, Action<Intent>>{
        DirectionalFocusIntent: CallbackAction<DirectionalFocusIntent>(
          onInvoke: (intent) {
            FocusScope.of(context).focusInDirection(intent.direction);
            return null;
          },
        ),
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) {
            context.push('/content/${Uri.encodeComponent(widget.label)}');
            return null;
          },
        ),
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 260),
        curve: Curves.easeOutCubic,
        width: _focused ? 160 : 140,
        height: 220,
        margin: const EdgeInsets.symmetric(vertical: 4),
    transform: _focused
      ? Matrix4.diagonal3Values(1.12, 1.12, 1.12)
      : Matrix4.identity(),
        decoration: BoxDecoration(
          color: AppTheme.cardBackground.withAlpha((0.88 * 255).round()),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha((0.32 * 255).round()),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
            if (_focused)
              BoxShadow(
                color: AppTheme.primaryBlue.withAlpha((0.85 * 255).round()),
                blurRadius: 24,
                spreadRadius: 3,
              ),
          ],
          border: _focused
              ? Border.all(color: AppTheme.primaryBlue, width: 3.5)
              : null,
          backgroundBlendMode: BlendMode.luminosity,
        ),
        child: Semantics(
          label: widget.label,
          button: true,
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: _focused ? FontWeight.bold : FontWeight.w500,
                letterSpacing: 0.2,
                shadows: _focused
                    ? [
                        Shadow(
                          color: AppTheme.primaryBlue.withAlpha((0.6 * 255).round()),
                          blurRadius: 10,
                        ),
                      ]
                    : [],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class _FocusableCarousel extends StatefulWidget {
  const _FocusableCarousel({
    required this.title,
    required this.items,
    required this.cardBuilder,
    this.isFirst = false,
    this.firstItemFocusNode,
    this.emptyFallbackCount = 5,
  });

  final String title;
  final List<String> items;
  final Widget Function(String item, {bool autofocus, FocusNode? focusNode})
  cardBuilder;
  final bool isFirst;
  final FocusNode? firstItemFocusNode;
  final int emptyFallbackCount;

  @override
  State<_FocusableCarousel> createState() => _FocusableCarouselState();
}

class _FocusableCarouselState extends State<_FocusableCarousel> {
  bool _focused = false;
  final FocusNode _rowFocusNode = FocusNode(debugLabel: 'CarouselRow');

  @override
  void dispose() {
    _rowFocusNode.dispose();
    super.dispose();
  }

  void _onFocusChange(bool focused) {
    if (_focused != focused) {
      setState(() {
        _focused = focused;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final hasContent = widget.items.isNotEmpty;
    final itemCount = hasContent
        ? widget.items.length
        : widget.emptyFallbackCount;

    return FocusableActionDetector(
      focusNode: _rowFocusNode,
      onFocusChange: _onFocusChange,
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.arrowUp): DirectionalFocusIntent(
          TraversalDirection.up,
        ),
        LogicalKeySet(LogicalKeyboardKey.arrowDown): DirectionalFocusIntent(
          TraversalDirection.down,
        ),
      },
      actions: <Type, Action<Intent>>{
        DirectionalFocusIntent: CallbackAction<DirectionalFocusIntent>(
          onInvoke: (intent) {
            if (intent.direction == TraversalDirection.up) {
              FocusScope.of(context).previousFocus();
            } else if (intent.direction == TraversalDirection.down) {
              FocusScope.of(context).nextFocus();
            }
            return null;
          },
        ),
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 240),
        opacity: _focused ? 1.0 : 0.92,
  // Deprecated AnimatedScale.scale usage triggers analyzer for older Flutter SDKs;
  // keep behavior for now.
  child: AnimatedScale(
          duration: const Duration(milliseconds: 220),
          scale: _focused ? 1.02 : 1.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 8,
                ),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: _focused ? AppTheme.primaryBlue : Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    shadows: _focused
                        ? [
                            Shadow(
                              color: AppTheme.primaryBlue.withAlpha((0.4 * 255).round()),
                              blurRadius: 8,
                            ),
                          ]
                        : [],
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemCount: itemCount,
                  separatorBuilder: (_, __) => const SizedBox(width: 16),
                  itemBuilder: (context, index) {
                    if (!hasContent) {
                      return const _Shimmer(width: 140, height: 220);
                    }

                    final item = widget.items[index];
                    final bool autofocus = widget.isFirst && index == 0;
                    final focusNode = widget.isFirst && index == 0
                        ? widget.firstItemFocusNode
                        : null;

                    return widget.cardBuilder(
                      item,
                      autofocus: autofocus,
                      focusNode: focusNode,
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class _Shimmer extends StatefulWidget {
  const _Shimmer({required this.width, required this.height});

  final double width;
  final double height;

  @override
  State<_Shimmer> createState() => _ShimmerState();
}

class _ShimmerState extends State<_Shimmer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: const Alignment(-1.0, -0.3),
              end: const Alignment(2.0, 0.3),
              colors: [Colors.grey[850]!, Colors.grey[700]!, Colors.grey[850]!],
              stops: [
                (0.1 + 0.6 * value).clamp(0.0, 1.0),
                (0.3 + 0.6 * value).clamp(0.0, 1.0),
                (0.8 + 0.6 * value).clamp(0.0, 1.0),
              ],
            ),
          ),
        );
      },
    );
  }
}
