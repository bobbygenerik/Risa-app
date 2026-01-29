import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/app_colors.dart';
import 'package:iptv_player/utils/app_typography.dart';
import 'package:iptv_player/widgets/cached_image.dart';

/// A hero component that displays channel information with EPG data
/// Used across Live TV screens
class ContentHero extends StatelessWidget {
  final Channel? channel;
  final Program? currentProgram;
  final String? heroImage;
  final double scrollProgress;
  final bool showVideoPreview;
  final VoidCallback? onTap;
  final bool isLive;
  final String title;
  final String? description;

  const ContentHero({
    super.key,
    this.channel,
    this.currentProgram,
    this.heroImage,
    this.scrollProgress = 0.0,
    this.showVideoPreview = false,
    this.onTap,
    this.isLive = false,
    this.title = '',
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withAlpha((0.7 * 255).round()),
              Colors.black.withAlpha((0.9 * 255).round()),
            ],
            stops: const [0.0, 0.6, 1.0],
          ),
        ),
        child: _buildBackground(context),
      ),
    );
  }

  Widget _buildBackground(BuildContext context) {
    if (heroImage != null && heroImage!.isNotEmpty) {
      return Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Positioned.fill(
            child: CachedImage(
              imageUrl: heroImage!,
              fit: BoxFit.cover,
              alignment: Alignment.centerRight,
              width: double.infinity,
              height: double.infinity,
              errorWidget: _buildFallbackBackground(context),
            ),
          ),
          // Left scrim for info box readability with feathered diagonal edge
          Positioned.fill(
            child: CustomPaint(
              painter: _HeroLeftScrimPainter(),
            ),
          ),
          // Overlay gradient
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black54,
                    Colors.black87,
                  ],
                  stops: [0.0, 0.6, 1.0],
                ),
              ),
            ),
          ),
        ],
      );
    }

    return _buildFallbackBackground(context);
  }

  Widget _buildFallbackBackground(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.cardBackground,
            AppTheme.darkBackground,
          ],
        ),
      ),
      child: Center(
        child: Icon(
          Icons.tv,
          size: 80,
          color: AppTheme.primaryBlue.withAlpha((0.3 * 255).round()),
        ),
      ),
    );
  }
}

/// Hero info box that displays program/channel details
class HeroInfoBox extends StatelessWidget {
  final Channel? channel;
  final Program? program;
  final String title;
  final String? description;
  final VoidCallback? onPlayPressed;
  final VoidCallback? onInfoPressed;
  final bool isLive;
  final bool showTimeInfo;

  const HeroInfoBox({
    super.key,
    this.channel,
    this.program,
    required this.title,
    this.description,
    this.onPlayPressed,
    this.onInfoPressed,
    this.isLive = false,
    this.showTimeInfo = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Live indicator
          if (isLive && program?.isCurrentlyPlaying == true) ...[
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: AppColors.epgLive,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.fiber_manual_record,
                    size: 8,
                    color: Colors.white,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'LIVE',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
          ],

          // Title
          Text(
            title,
            style: AppTypography.heroTitle(context),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),

          // Time info
          if (showTimeInfo && program != null) ...[
            _buildTimeInfo(context),
            const SizedBox(height: 8),
          ],

          // Description
          if (description != null && description!.isNotEmpty) ...[
            Text(
              description!,
              style: AppTypography.heroDescription(context),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 16),
          ],

          // Action buttons
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (onPlayPressed != null) ...[
                _buildPlayButton(context),
                const SizedBox(width: 12),
              ],
              if (onInfoPressed != null) ...[
                _buildInfoButton(context),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimeInfo(BuildContext context) {
    if (program == null) return const SizedBox.shrink();

    final startTime = DateFormat.jm().format(program!.startTime);
    final endTime = DateFormat.jm().format(program!.endTime);

    return Row(
      children: [
        Icon(
          Icons.access_time,
          size: 16,
          color: Colors.white.withAlpha((0.7 * 255).round()),
        ),
        const SizedBox(width: 6),
        Text(
          '$startTime - $endTime',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white.withAlpha((0.8 * 255).round()),
          ),
        ),
        if (program!.category != null) ...[
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 2,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.2 * 255).round()),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              program!.category!,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white.withAlpha((0.9 * 255).round()),
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildPlayButton(BuildContext context) {
    return Focus(
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return GestureDetector(
            onTap: onPlayPressed,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: isFocused
                    ? AppTheme.primaryBlue
                    : AppTheme.primaryBlue.withAlpha((0.8 * 255).round()),
                borderRadius: BorderRadius.circular(8),
                boxShadow: isFocused
                    ? [
                        BoxShadow(
                          color: AppTheme.primaryBlue
                              .withAlpha((0.4 * 255).round()),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ]
                    : null,
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Play',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoButton(BuildContext context) {
    return Focus(
      child: Builder(
        builder: (context) {
          final isFocused = Focus.of(context).hasFocus;
          return GestureDetector(
            onTap: onInfoPressed,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: isFocused
                    ? Colors.white.withAlpha((0.2 * 255).round())
                    : Colors.white.withAlpha((0.1 * 255).round()),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isFocused
                      ? Colors.white.withAlpha((0.3 * 255).round())
                      : Colors.transparent,
                  width: 1,
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Info',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _HeroLeftScrimPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = size.height;

    final double baseWidth = width * 0.38;
    final double extraWidth = width * 0.05;
    final double curvePull = width * 0.12;
    final double topInset = height * 0.05;
    final double bottomInset = height * 0.08;

    final Path edgePath = Path()
      ..moveTo(baseWidth, topInset)
      ..quadraticBezierTo(
        baseWidth + curvePull,
        height * 0.5,
        baseWidth - curvePull * 0.15,
        height - bottomInset,
      );

    final Path scrimShape = Path()
      ..moveTo(0, 0)
      ..lineTo(baseWidth, 0)
      ..lineTo(baseWidth, topInset)
      ..addPath(edgePath, Offset.zero)
      ..lineTo(0, height)
      ..close();

    final Paint fillPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xFF050608),
          Color(0xD9050608),
          Color(0x00050608),
        ],
        stops: [0.0, 0.78, 1.0],
      ).createShader(Rect.fromLTWH(0, 0, baseWidth + extraWidth, height));

    canvas.drawPath(scrimShape, fillPaint);

    final Path featherBand = Path()
      ..moveTo(baseWidth - curvePull * 0.05, topInset)
      ..quadraticBezierTo(
        baseWidth + curvePull * 0.95,
        height * 0.52,
        baseWidth - curvePull * 0.3,
        height - bottomInset,
      )
      ..lineTo(baseWidth + extraWidth, height - bottomInset)
      ..quadraticBezierTo(
        baseWidth + extraWidth + curvePull * 0.4,
        height * 0.52,
        baseWidth + extraWidth - curvePull * 0.2,
        topInset,
      )
      ..close();

    final Paint featherPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          const Color(0xCC050608),
          const Color(0x7A050608),
          const Color(0x00050608),
        ],
        stops: const [0.0, 0.55, 1.0],
      ).createShader(
        Rect.fromLTWH(
          baseWidth - curvePull * 0.3,
          0,
          extraWidth + curvePull * 1.4,
          height,
        ),
      );

    canvas.drawPath(featherBand, featherPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// EPG-enhanced hero that automatically fetches current program data
class EPGHero extends StatelessWidget {
  final Channel channel;
  final VoidCallback? onTap;
  final VoidCallback? onPlayPressed;
  final String? customHeroImage;

  const EPGHero({
    super.key,
    required this.channel,
    this.onTap,
    this.onPlayPressed,
    this.customHeroImage,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<IncrementalEpgService>(
      builder: (context, epgService, child) {
        // Get current program from EPG service (resolver-aware)
        final currentProgram = epgService.getProgramForChannel(
          channel.epgLookupId,
          channelName: channel.epgLookupName,
        );

        final title = currentProgram?.title ?? channel.name;
        final description = currentProgram?.description;
        final heroImage = customHeroImage ?? currentProgram?.imageUrl;
        final isLive = currentProgram?.isCurrentlyPlaying == true;

        return Stack(
          fit: StackFit.expand,
          children: [
            // Background content
            ContentHero(
              channel: channel,
              currentProgram: currentProgram,
              heroImage: heroImage,
              isLive: isLive,
              title: title,
              description: description,
              onTap: onTap,
            ),
            // Info overlay
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: HeroInfoBox(
                channel: channel,
                program: currentProgram,
                title: title,
                description: description,
                onPlayPressed: onPlayPressed,
                isLive: isLive,
                showTimeInfo: currentProgram != null,
              ),
            ),
          ],
        );
      },
    );
  }
}
