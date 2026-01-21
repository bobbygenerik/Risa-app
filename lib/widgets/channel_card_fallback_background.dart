import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_colors.dart';

class ChannelCardFallbackBackground extends StatelessWidget {
  final BorderRadius? borderRadius;
  final Widget? child;

  const ChannelCardFallbackBackground({
    super.key,
    this.borderRadius,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const DecoratedBox(
            decoration:
                BoxDecoration(gradient: AppColors.channelCardFallbackGradient),
          ),
          Positioned(
            top: -60,
            left: -40,
            child: Transform.rotate(
              angle: -0.35,
              child: Container(
                width: 220,
                height: 140,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withAlpha((0.10 * 255).round()),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -80,
            right: -30,
            child: Transform.rotate(
              angle: 0.45,
              child: Container(
                width: 240,
                height: 160,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withAlpha((0.08 * 255).round()),
                      Colors.transparent,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: -70,
            child: Transform.rotate(
              angle: 0.15,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withAlpha((0.08 * 255).round()),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          if (child != null) child!,
        ],
      ),
    );
  }
}
