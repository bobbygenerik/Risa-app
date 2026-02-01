import 'package:flutter/material.dart';

class BrandBackgroundPainter extends CustomPainter {
  const BrandBackgroundPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final basePaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF0A1929), Color(0xFF1A2332)],
      ).createShader(rect);
    canvas.drawRect(rect, basePaint);

    final magentaPaint = Paint()
      ..color = const Color(0xFFA23464).withValues(alpha: 0.08);
    final magentaPath = Path()
      ..moveTo(size.width, size.height)
      ..lineTo(size.width, size.height * 0.35)
      ..lineTo(size.width * 0.45, size.height)
      ..close();
    canvas.drawPath(magentaPath, magentaPaint);

    final bluePaint = Paint()
      ..color = const Color(0xFF2E6DB3).withValues(alpha: 0.15);
    final bluePath = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * 0.72, 0)
      ..lineTo(size.width * 0.38, size.height * 0.55)
      ..lineTo(0, size.height * 0.35)
      ..close();
    canvas.drawPath(bluePath, bluePaint);

    final lightPath = Path()
      ..moveTo(size.width * 0.1, size.height * 0.95)
      ..lineTo(size.width * 0.95, size.height * 0.55)
      ..lineTo(size.width * 0.85, size.height * 0.25)
      ..lineTo(size.width * 0.02, size.height * 0.65)
      ..close();
    final lightPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.white.withValues(alpha: 0.08),
          Colors.transparent,
        ],
      ).createShader(rect);
    canvas.drawPath(lightPath, lightPaint);
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
