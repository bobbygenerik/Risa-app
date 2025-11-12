import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:go_router/go_router.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/widgets/top_navigation_bar.dart';

class GoogleTVHomeScreen extends StatefulWidget {
  const GoogleTVHomeScreen({Key? key}) : super(key: key);

  @override
  State<GoogleTVHomeScreen> createState() => _GoogleTVHomeScreenState();
}

class _GoogleTVHomeScreenState extends State<GoogleTVHomeScreen> {
  late String _currentTime;
  late Timer _timeUpdater;

  @override
  void initState() {
    super.initState();
    _updateTime();
    _startTimeUpdater();
  }

  @override
  void dispose() {
    _timeUpdater.cancel();
    super.dispose();
  }

  void _updateTime() {
    final now = DateTime.now();
    setState(() {
      _currentTime = TimeOfDay.fromDateTime(now).format(context);
    });
  }

  void _startTimeUpdater() {
    _timeUpdater = Timer.periodic(const Duration(seconds: 1), (_) {
      _updateTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: Column(
        children: [
          // Top Navigation Bar - Unified across all screens
          TopNavigationBar(
            activeTab: 'live',
            tabs: [
              NavTab(id: 'live', label: 'LIVE TV', icon: Icons.tv, route: '/'),
              NavTab(id: 'movies', label: 'Movies', icon: Icons.movie, route: '/movies'),
              NavTab(id: 'series', label: 'Series', icon: Icons.theaters, route: '/series'),
            ],
            currentTime: _currentTime,
          ),
          // Hero Banner with Featured Content
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 24, bottom: 32),
              children: [
                _HeroBanner(
                  title: 'Tonight: Championship Finals',
                  subtitle: 'Live · Now Playing',
                  description: 'Catch the ultimate showdown with AI-enhanced clarity and multi-language commentary.',
                  primaryLabel: 'Watch Now',
                  secondaryLabel: 'More Info',
                  onPrimaryPressed: () => context.go('/player'),
                  onSecondaryPressed: () => context.go('/search'),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HeroBanner extends StatefulWidget {
  const _HeroBanner({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.primaryLabel,
    required this.secondaryLabel,
    required this.onPrimaryPressed,
    required this.onSecondaryPressed,
  });

  final String title;
  final String subtitle;
  final String description;
  final String primaryLabel;
  final String secondaryLabel;
  final VoidCallback onPrimaryPressed;
  final VoidCallback onSecondaryPressed;

  @override
  State<_HeroBanner> createState() => _HeroBannerState();
}

class _HeroBannerState extends State<_HeroBanner> {
  late final FocusNode _primaryFocusNode;
  late final FocusNode _secondaryFocusNode;
  bool _primaryFocused = false;
  bool _secondaryFocused = false;

  bool get _hasFocus => _primaryFocused || _secondaryFocused;

  @override
  void initState() {
    super.initState();
    _primaryFocusNode = FocusNode(debugLabel: 'hero-primary');
    _secondaryFocusNode = FocusNode(debugLabel: 'hero-secondary');

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _primaryFocusNode.requestFocus();
      }
    });
  }

  @override
  void dispose() {
    _primaryFocusNode.dispose();
    _secondaryFocusNode.dispose();
    super.dispose();
  }

  void _handlePrimaryFocus(bool focused) {
    setState(() {
      _primaryFocused = focused;
    });
  }

  void _handleSecondaryFocus(bool focused) {
    setState(() {
      _secondaryFocused = focused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 280),
        curve: Curves.easeOutCubic,
        height: 280,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1F2437),
              Color(0xFF10121C),
            ],
          ),
          boxShadow: _hasFocus
              ? [
                  BoxShadow(
                    color: AppTheme.primaryBlue.withOpacity(0.55),
                    blurRadius: 26,
                    offset: const Offset(0, 18),
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.45),
                    blurRadius: 24,
                    offset: const Offset(0, 18),
                  ),
                ],
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.55),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppTheme.primaryBlue.withOpacity(0.85),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      widget.subtitle,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.4,
                        ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    widget.description,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white.withOpacity(0.82),
                          height: 1.4,
                        ),
                  ),
                  const SizedBox(height: 28),
                  Row(
                    children: [
                      _HeroPrimaryButton(
                        focusNode: _primaryFocusNode,
                        label: widget.primaryLabel,
                        onPressed: widget.onPrimaryPressed,
                        onFocusChange: _handlePrimaryFocus,
                        highlighted: _primaryFocused,
                        autofocus: true,
                      ),
                      const SizedBox(width: 18),
                      _HeroSecondaryButton(
                        focusNode: _secondaryFocusNode,
                        label: widget.secondaryLabel,
                        onPressed: widget.onSecondaryPressed,
                        onFocusChange: _handleSecondaryFocus,
                        highlighted: _secondaryFocused,
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
}

class _HeroPrimaryButton extends StatelessWidget {
  const _HeroPrimaryButton({
    required this.focusNode,
    required this.label,
    required this.onPressed,
    required this.onFocusChange,
    required this.highlighted,
    this.autofocus = false,
  });

  final FocusNode focusNode;
  final String label;
  final VoidCallback onPressed;
  final ValueChanged<bool> onFocusChange;
  final bool highlighted;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      focusNode: focusNode,
      autofocus: autofocus,
      onFocusChange: onFocusChange,
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.enter): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.space): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.arrowUp): DirectionalFocusIntent(TraversalDirection.up),
        LogicalKeySet(LogicalKeyboardKey.arrowDown): DirectionalFocusIntent(TraversalDirection.down),
        LogicalKeySet(LogicalKeyboardKey.arrowRight): DirectionalFocusIntent(TraversalDirection.right),
      },
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) {
            onPressed();
            return null;
          },
        ),
        DirectionalFocusIntent: CallbackAction<DirectionalFocusIntent>(
          onInvoke: (intent) {
            if (intent.direction == TraversalDirection.up) {
              FocusScope.of(context).previousFocus();
            } else if (intent.direction == TraversalDirection.down) {
              FocusScope.of(context).nextFocus();
            } else if (intent.direction == TraversalDirection.right) {
              FocusScope.of(context).nextFocus();
            }
            return null;
          },
        ),
      },
      child: _HeroButtonFrame(
        highlighted: highlighted,
        background: AppTheme.primaryBlue,
        foreground: Colors.white,
        label: label,
        icon: Icons.play_arrow_rounded,
      ),
    );
  }
}

class _HeroSecondaryButton extends StatelessWidget {
  const _HeroSecondaryButton({
    required this.focusNode,
    required this.label,
    required this.onPressed,
    required this.onFocusChange,
    required this.highlighted,
  });

  final FocusNode focusNode;
  final String label;
  final VoidCallback onPressed;
  final ValueChanged<bool> onFocusChange;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.enter): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.space): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.arrowUp): DirectionalFocusIntent(TraversalDirection.up),
        LogicalKeySet(LogicalKeyboardKey.arrowDown): DirectionalFocusIntent(TraversalDirection.down),
        LogicalKeySet(LogicalKeyboardKey.arrowLeft): DirectionalFocusIntent(TraversalDirection.left),
        LogicalKeySet(LogicalKeyboardKey.arrowRight): DirectionalFocusIntent(TraversalDirection.right),
      },
      actions: <Type, Action<Intent>>{
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (intent) {
            onPressed();
            return null;
          },
        ),
        DirectionalFocusIntent: CallbackAction<DirectionalFocusIntent>(
          onInvoke: (intent) {
            if (intent.direction == TraversalDirection.up) {
              FocusScope.of(context).previousFocus();
            } else if (intent.direction == TraversalDirection.down || intent.direction == TraversalDirection.right) {
              FocusScope.of(context).nextFocus();
            } else if (intent.direction == TraversalDirection.left) {
              FocusScope.of(context).previousFocus();
            }
            return null;
          },
        ),
      },
      child: _HeroButtonFrame(
        highlighted: highlighted,
        background: Colors.transparent,
        foreground: Colors.white,
        label: label,
        icon: Icons.info_outline,
        borderColor: Colors.white.withOpacity(0.35),
      ),
    );
  }
}

class _HeroButtonFrame extends StatelessWidget {
  const _HeroButtonFrame({
    required this.highlighted,
    required this.background,
    required this.foreground,
    required this.label,
    required this.icon,
    this.borderColor,
  });

  final bool highlighted;
  final Color background;
  final Color foreground;
  final String label;
  final IconData icon;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOutCubic,
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
      decoration: BoxDecoration(
        color: highlighted
            ? (background == Colors.transparent
                ? Colors.white.withOpacity(0.12)
                : background)
            : (background == Colors.transparent
                ? Colors.white.withOpacity(0.05)
                : background.withOpacity(0.85)),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: highlighted
              ? AppTheme.primaryBlue
              : (borderColor ?? Colors.transparent),
          width: highlighted ? 3 : 2,
        ),
        boxShadow: highlighted
            ? [
                BoxShadow(
                  color: AppTheme.primaryBlue.withOpacity(0.55),
                  blurRadius: 18,
                  offset: const Offset(0, 8),
                ),
              ]
            : [],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: highlighted
                ? (background == Colors.transparent ? AppTheme.primaryBlue : Colors.black)
                : foreground,
            size: 28,
          ),
          const SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(
              color: highlighted
                  ? (background == Colors.transparent ? AppTheme.primaryBlue : Colors.black)
                  : foreground,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}

