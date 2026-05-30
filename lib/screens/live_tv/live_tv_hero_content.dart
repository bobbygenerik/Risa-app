import 'dart:math' as math;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';
import 'package:iptv_player/screens/live_tv/artwork/guarded_artwork_image.dart';
import 'package:iptv_player/screens/live_tv/artwork_url_guard.dart';
import 'package:iptv_player/screens/live_tv/live_tv_card_fallbacks.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/network_error_logger.dart';

/// Hero backdrop layer only. Scrim + info panel live in [LiveTvFullScreenHero].
class LiveTvHeroContent extends StatelessWidget {
  const LiveTvHeroContent({
    super.key,
    required this.channel,
    required this.program,
    required this.heroImage,
    required this.suspendBackground,
    this.onBackdropRejected,
  });

  final Channel channel;
  final Program? program;
  final String? heroImage;
  final bool suspendBackground;
  final void Function(String url)? onBackdropRejected;

  static final _heroGradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppTheme.darkBackground.withAlpha(0),
        AppTheme.darkBackground.withAlpha((0.7 * 255).round()),
        AppTheme.darkBackground,
      ],
      stops: [0.0, 0.5, 1.0],
    ),
  );

  @override
  Widget build(BuildContext context) {
    if (suspendBackground) {
      return SizedBox.expand(
        child: DecoratedBox(
          decoration: _heroGradient,
          child: LiveTvCardFallbacks.gradientPlaceholder(),
        ),
      );
    }

    return SizedBox.expand(
      child: DecoratedBox(
        decoration: _heroGradient,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final rawHero = heroImage?.trim() ?? '';
            if (rawHero.isEmpty) {
              return LiveTvCardFallbacks.gradientPlaceholder();
            }

            final normalizedHeroUrl = LiveTvArtworkUrlGuard.normalizeArtworkUrl(
                  normalizeImageUrl(rawHero),
                  isHero: true,
                  targetWidth: constraints.maxWidth,
                ) ??
                '';
            if (normalizedHeroUrl.isEmpty ||
                ImageFailureCache.shouldSkip(
                  normalizedHeroUrl,
                  slot: ArtworkSlot.hero,
                )) {
              return LiveTvCardFallbacks.gradientPlaceholder();
            }

            ImageLoadProbe.recordAttempt(normalizedHeroUrl, 'hero_image');
            final dpr = MediaQuery.of(context).devicePixelRatio;
            final cacheWidth =
                math.min(2500, (constraints.maxWidth * dpr).round());
            final cacheHeight =
                math.min(1500, (constraints.maxHeight * dpr).round());

            // Full-bleed art with left-edge alpha mask — same layout as before.
            // The parent scrim in LiveTvFullScreenHero is unchanged.
            return SizedBox.expand(
              child: Align(
                alignment: Alignment.topRight,
                child: FractionallySizedBox(
                  widthFactor: 0.94,
                  heightFactor: 1.0,
                  child: ShaderMask(
                    shaderCallback: (bounds) {
                      return const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.transparent,
                          Colors.white,
                          Colors.white,
                        ],
                        stops: [0.0, 0.25, 1.0],
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.dstIn,
                    child: CachedNetworkImage(
                      imageUrl: normalizedHeroUrl,
                      httpHeaders: HttpClientService().imageHeaders,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.high,
                      memCacheWidth: cacheWidth,
                      memCacheHeight: cacheHeight,
                      imageBuilder: (context, imageProvider) {
                        return GuardedArtworkImage(
                          url: normalizedHeroUrl,
                          imageProvider: imageProvider,
                          slot: ArtworkSlot.hero,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                          fallback: LiveTvCardFallbacks.gradientPlaceholder(),
                          probeTag: 'hero_backdrop',
                          onRejected: () =>
                              onBackdropRejected?.call(normalizedHeroUrl),
                        );
                      },
                      placeholder: (_, __) =>
                          LiveTvCardFallbacks.gradientPlaceholder(),
                      errorWidget: (_, url, error) {
                        ImageFailureCache.recordFailure(url, error);
                        ImageLoadProbe.recordFailure(
                            url, 'hero_backdrop', error);
                        logHandshakeIfNeeded(url, error,
                            context: 'LiveTV hero backdrop');
                        onBackdropRejected?.call(url);
                        return LiveTvCardFallbacks.gradientPlaceholder();
                      },
                      fadeInDuration: const Duration(milliseconds: 300),
                      useOldImageOnUrlChange: true,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
