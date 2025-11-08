// Simple shimmer widget for loading/empty states
class _Shimmer extends StatefulWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;
  const _Shimmer({Key? key, required this.width, required this.height, this.borderRadius = const BorderRadius.all(Radius.circular(16))}) : super(key: key);

  @override
  State<_Shimmer> createState() => _ShimmerState();
}

class _ShimmerState extends State<_Shimmer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200))..repeat();
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
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: widget.borderRadius,
            gradient: LinearGradient(
              begin: Alignment(-1.0, -0.3),
              end: Alignment(2.0, 0.3),
              colors: [
                Colors.grey[800]!,
                Colors.grey[700]!,
                Colors.grey[800]!,
              ],
              stops: [
                0.1 + 0.6 * _controller.value,
                0.3 + 0.6 * _controller.value,
                0.8 + 0.6 * _controller.value,
              ],
            ),
          ),
        );
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/utils/app_theme.dart';
// --- Focusable Carousel (restored) ---
class _FocusableCarousel extends StatefulWidget {
  final String title;
  final List<String> items;
  final Widget Function(String, {bool autofocus}) cardBuilder;
  final bool isFirst;
  const _FocusableCarousel({required this.title, required this.items, required this.cardBuilder, this.isFirst = false});

  @override
  State<_FocusableCarousel> createState() => _FocusableCarouselState();
}

class _FocusableCarouselState extends State<_FocusableCarousel> {
  bool _focused = false;
  final _rowFocusNode = FocusNode();

  @override
  void dispose() {
    _rowFocusNode.dispose();
    super.dispose();
  }

  void _onFocusChange(bool focused) {
    setState(() {
      _focused = focused;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isEmpty = widget.items.isEmpty;
    return FocusableActionDetector(
      focusNode: _rowFocusNode,
      onFocusChange: _onFocusChange,
      autofocus: false,
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.arrowUp): DirectionalFocusIntent(TraversalDirection.up),
        LogicalKeySet(LogicalKeyboardKey.arrowDown): DirectionalFocusIntent(TraversalDirection.down),
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
        duration: const Duration(milliseconds: 300),
        opacity: _focused ? 1.0 : 0.92,
        child: AnimatedScale(
          duration: const Duration(milliseconds: 250),
          scale: _focused ? 1.02 : 1.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: _focused ? AppTheme.primaryBlue : Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    shadows: _focused
                        ? [
                            Shadow(
                              color: AppTheme.primaryBlue.withOpacity(0.4),
                              blurRadius: 8,
                            ),
                          ]
                        : [],
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                child: isEmpty
                    ? ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        itemCount: 5,
                        separatorBuilder: (_, __) => const SizedBox(width: 16),
                        itemBuilder: (context, index) => const _Shimmer(width: 140, height: 220),
                      )
                    : ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        itemCount: widget.items.length,
                        separatorBuilder: (_, __) => const SizedBox(width: 16),
                        itemBuilder: (context, index) {
                          final bool autofocus = widget.isFirst && index == 0;
                          return widget.cardBuilder(widget.items[index], autofocus: autofocus);
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

class GoogleTVHomeScreen extends StatefulWidget {
  const GoogleTVHomeScreen({Key? key}) : super(key: key);

  @override
  State<GoogleTVHomeScreen> createState() => _GoogleTVHomeScreenState();
}

class _GoogleTVHomeScreenState extends State<GoogleTVHomeScreen> {
  // Example carousel data
  final List<String> liveTV = List.generate(10, (i) => 'Channel ${i + 1}');
  final List<String> movies = List.generate(10, (i) => 'Movie ${i + 1}');
  final List<String> continueWatching = List.generate(5, (i) => 'Show ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopBar(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 24),
                children: [
                  _buildCarousel('Live TV', liveTV, isFirst: true),
                  _buildCarousel('Movies', movies),
                  _buildCarousel('Continue Watching', continueWatching),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarousel(String title, List<String> items, {bool isFirst = false}) {
    return _FocusableCarousel(
      title: title,
      items: items,
      cardBuilder: (label, {bool autofocus = false}) => _buildCard(label, autofocus: autofocus),
      isFirst: isFirst,
    );
  }

  Widget _buildCard(String label, {bool autofocus = false}) {
    return _FocusableCard(label: label, autofocus: autofocus);
  }

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: _TopBar(),
    );
  }

}

class _TopBar extends StatefulWidget {
  @override
  State<_TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<_TopBar> {
  final List<FocusNode> _iconFocusNodes = [FocusNode(), FocusNode(), FocusNode()];
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
      _focusedIndex = focused ? index : (_focusedIndex == index ? -1 : _focusedIndex);
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
            Navigator.of(context).pushNamed('/search');
          },
        ),
        const SizedBox(width: 16),
        _buildFocusableIcon(
          index: 1,
          icon: Icons.settings,
          tooltip: 'Settings',
          onPressed: () {
            Navigator.of(context).pushNamed('/settings');
          },
        ),
        const SizedBox(width: 16),
        _buildFocusableIcon(
          index: 2,
          icon: Icons.person,
          tooltip: 'Profile',
          onPressed: () {
            Navigator.of(context).pushNamed('/edit-profile');
          },
        ),
      ],
    );
  }

  Widget _buildFocusableIcon({required int index, required IconData icon, required String tooltip, required VoidCallback onPressed}) {
    return FocusableActionDetector(
      focusNode: _iconFocusNodes[index],
      onFocusChange: (focused) => _onFocusChange(index, focused),
      autofocus: false,
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.arrowLeft): DirectionalFocusIntent(TraversalDirection.left),
        LogicalKeySet(LogicalKeyboardKey.arrowRight): DirectionalFocusIntent(TraversalDirection.right),
        LogicalKeySet(LogicalKeyboardKey.arrowDown): DirectionalFocusIntent(TraversalDirection.down),
        LogicalKeySet(LogicalKeyboardKey.enter): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.select): ActivateIntent(),
        LogicalKeySet(LogicalKeyboardKey.space): ActivateIntent(),
      },
      actions: <Type, Action<Intent>>{
        DirectionalFocusIntent: CallbackAction<DirectionalFocusIntent>(
          onInvoke: (intent) {
            if (intent.direction == TraversalDirection.left && index > 0) {
              _iconFocusNodes[index - 1].requestFocus();
            } else if (intent.direction == TraversalDirection.right && index < _iconFocusNodes.length - 1) {
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
            color: _focusedIndex == index ? AppTheme.primaryBlue.withOpacity(0.22) : Colors.transparent,
            boxShadow: _focusedIndex == index
                ? [
                    BoxShadow(
                      color: AppTheme.primaryBlue.withOpacity(0.7),
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
  const _FocusableCard({required this.label, this.autofocus = false});

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
      onFocusChange: _onFocusChange,
      autofocus: widget.autofocus,
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.arrowLeft): DirectionalFocusIntent(TraversalDirection.left),
        LogicalKeySet(LogicalKeyboardKey.arrowRight): DirectionalFocusIntent(TraversalDirection.right),
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
            Navigator.of(context).pushNamed(
              '/content/${Uri.encodeComponent(widget.label)}',
              arguments: null,
            );
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
        transform: _focused ? (Matrix4.identity()..scale(1.12)) : Matrix4.identity(),
        decoration: BoxDecoration(
          color: AppTheme.cardBackground.withOpacity(0.88),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.32),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
            if (_focused)
              BoxShadow(
                color: AppTheme.primaryBlue.withOpacity(0.85),
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
                          color: AppTheme.primaryBlue.withOpacity(0.6),
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
