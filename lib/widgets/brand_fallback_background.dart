import 'package:flutter/material.dart';

// Consistent radial gradient fallback for all cards

class BrandBackgroundPainter extends CustomPainter {
  const BrandBackgroundPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    
    // Base gradient
    final basePaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF0A1929), Color(0xFF1A2332)],
      ).createShader(rect);
    canvas.drawRect(rect, basePaint);

    // Single magenta triangle - bottom right corner
    final magentaPaint = Paint()
      ..color = const Color(0xFFA23464).withValues(alpha: 0.12);
    final magentaPath = Path()
      ..moveTo(size.width, size.height)
      ..lineTo(size.width, size.height * 0.5)
      ..lineTo(size.width * 0.5, size.height)
      ..close();
    canvas.drawPath(magentaPath, magentaPaint);

    // Single blue triangle - top left corner
    final bluePaint = Paint()
      ..color = const Color(0xFF2E6DB3).withValues(alpha: 0.15);
    final bluePath = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * 0.5, 0)
      ..lineTo(0, size.height * 0.5)
      ..close();
    canvas.drawPath(bluePath, bluePaint);
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
