import 'package:flutter/material.dart';

/// A reusable Shimmer effect widget for premium skeleton loaders
class Shimmer extends StatefulWidget {
  const Shimmer({
    super.key,
    required this.child,
    this.baseColor = const Color(0x22FFFFFF),
    this.highlightColor = const Color(0x88FFFFFF),
    this.duration = const Duration(milliseconds: 1500),
  });

  final Widget child;
  final Color baseColor;
  final Color highlightColor;
  final Duration duration;

  @override
  State<Shimmer> createState() => _ShimmerState();
}

class _ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat();
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
        final shimmer = _controller.value;
        final start = (shimmer - 0.3).clamp(0.0, 1.0);
        final mid = shimmer.clamp(0.0, 1.0);
        final end = (shimmer + 0.3).clamp(0.0, 1.0);
        return ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) {
            return LinearGradient(
              begin: const Alignment(-1.0, -0.2),
              end: const Alignment(1.0, 0.2),
              stops: [start, mid, end],
              colors: [
                widget.baseColor,
                widget.highlightColor,
                widget.baseColor,
              ],
              tileMode: TileMode.clamp,
            ).createShader(bounds);
          },
          child: child,
        );
      },
      child: widget.child,
    );
  }
}

/// A convenience widget for Shimmer boxes
class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({
    super.key,
    required this.isLoading,
    required this.child,
  });

  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!isLoading) {
      return child;
    }

    return Shimmer(
      child: child,
    );
  }
}
