import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/widgets/shimmer.dart';

/// Reusable skeleton primitives with consistent colors and shimmer.
class Skeleton extends StatelessWidget {
  const Skeleton({
    super.key,
    this.width,
    this.height,
    this.borderRadius = 4.0,
    this.margin,
    this.baseColor = AppColors.skeletonBase,
    this.highlightColor = AppColors.skeletonHighlight,
  });

  final double? width;
  final double? height;
  final double borderRadius;
  final EdgeInsetsGeometry? margin;
  final Color baseColor;
  final Color highlightColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Shimmer(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}

class SkeletonLine extends StatelessWidget {
  const SkeletonLine(
    this.width, {
    super.key,
    this.height = 12.0,
    this.borderRadius = 2.0,
    this.margin,
  });

  final double? width;
  final double height;
  final double borderRadius;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) => Skeleton(
        width: width ?? double.infinity,
        height: height,
        borderRadius: borderRadius,
        margin: margin,
      );
}

class SkeletonCircle extends StatelessWidget {
  const SkeletonCircle({
    super.key,
    required this.size,
    this.margin,
  });

  final double size;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) => Skeleton(
        width: size,
        height: size,
        borderRadius: size / 2,
        margin: margin,
      );
}
