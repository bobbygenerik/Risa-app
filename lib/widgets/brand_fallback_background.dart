import 'package:flutter/material.dart';
import 'package:iptv_player/utils/app_theme.dart';

// Modern gradient fallback for all cards with subtle brand accent

class BrandBackgroundPainter extends CustomPainter {
  const BrandBackgroundPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    // Modern dark gradient base using brand colors
    final basePaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          AppTheme.darkBackground.withValues(alpha: 0.9),
          AppTheme.darkBackground.withValues(alpha: 0.95),
          AppTheme.cardBackground,
        ],
        stops: const [0.0, 0.5, 1.0],
      ).createShader(rect);
    canvas.drawRect(rect, basePaint);

    // Subtle brand accent - bottom right corner with primary blue
    final accentPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
        colors: [
          AppTheme.primaryBlue.withValues(alpha: 0.08),
          AppTheme.primaryBlue.withValues(alpha: 0.02),
          Colors.transparent,
        ],
        stops: const [0.0, 0.5, 1.0],
      ).createShader(rect);

    final accentPath = Path()
      ..moveTo(size.width, size.height)
      ..lineTo(size.width, size.height * 0.3)
      ..lineTo(size.width * 0.7, size.height)
      ..close();
    canvas.drawPath(accentPath, accentPaint);

    // Subtle diagonal line accent
    final linePaint = Paint()
      ..color = AppTheme.primaryBlue.withValues(alpha: 0.05)
      ..strokeWidth = 1.5;
    canvas.drawLine(
      Offset(size.width * 0.1, size.height * 0.9),
      Offset(size.width * 0.9, size.height * 0.1),
      linePaint,
    );
  }

  @override
  bool shouldRepaint(covariant BrandBackgroundPainter oldDelegate) {
    return false;
  }
}

class BrandFallbackBackground extends StatelessWidget {
  final BorderRadius? borderRadius;
  final Widget? child;

  const BrandFallbackBackground({
    super.key,
    this.borderRadius,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: CustomPaint(
        painter: const BrandBackgroundPainter(),
        child: child,
      ),
    );
  }
}
