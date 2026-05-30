import 'dart:math' as math;
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/artwork_url_guard.dart';
import 'package:iptv_player/screens/live_tv/landscape_guarded_image.dart';
import 'package:iptv_player/screens/live_tv/live_tv_card_fallbacks.dart';
import 'package:iptv_player/screens/live_tv/live_tv_hero_fallbacks.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/app_theme.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/network_error_logger.dart';

/// Hero backdrop: program artwork, logo blur stack, or category fallback.
class LiveTvHeroContent extends StatelessWidget {
  const LiveTvHeroContent({
    super.key,
    required this.channel,
    required this.program,
    required this.heroImage,
    required this.suspendBackground,
  });

  final Channel channel;
  final Program? program;
  final String? heroImage;
  final bool suspendBackground;

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
    final heroFallback = LiveTvHeroFallbacks.forProgram(channel, program);
    final isChannelLogoFallback = heroImage == channel.logoUrl;

    if (suspendBackground) {
      return SizedBox.expand(
        child: DecoratedBox(
          decoration: _heroGradient,
          child: heroFallback,
        ),
      );
    }

    return SizedBox.expand(
      child: DecoratedBox(
        decoration: _heroGradient,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final normalizedHeroUrl = LiveTvArtworkUrlGuard.normalizeArtworkUrl(
                  normalizeImageUrl(heroImage ?? ''),
                  isHero: true,
                  targetWidth: constraints.maxWidth,
                ) ??
                '';
            if (normalizedHeroUrl.isEmpty ||
                ImageFailureCache.shouldSkip(normalizedHeroUrl)) {
              return heroFallback;
            }

            ImageLoadProbe.recordAttempt(normalizedHeroUrl, 'hero_image');
            final dpr = MediaQuery.of(context).devicePixelRatio;
            final cacheWidth =
                math.min(2500, (constraints.maxWidth * dpr).round());
            final cacheHeight =
                math.min(1500, (constraints.maxHeight * dpr).round());
            const heroImageWidthFactor = 0.75;

            if (isChannelLogoFallback) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: FractionallySizedBox(
                      widthFactor: heroImageWidthFactor,
                      heightFactor: 1.0,
                      child: CachedNetworkImage(
                        imageUrl: normalizedHeroUrl,
                        httpHeaders: HttpClientService().imageHeaders,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        filterQuality: FilterQuality.low,
                        memCacheWidth: cacheWidth ~/ 2,
                        memCacheHeight: cacheHeight ~/ 2,
                        imageBuilder: (context, imageProvider) {
                          ImageLoadProbe.recordSuccess(
                              normalizedHeroUrl, 'hero_logo_bg');
                          return ImageFiltered(
                            imageFilter:
                                ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                  alignment: Alignment.center,
                                ),
                              ),
                              child: Container(
                                color: Colors.black.withValues(alpha: 0.4),
                              ),
                            ),
                          );
                        },
                        placeholder: (_, __) =>
                            LiveTvCardFallbacks.gradientPlaceholder(),
                        errorWidget: (_, url, error) {
                          ImageFailureCache.recordFailure(url, error);
                          ImageLoadProbe.recordFailure(
                              url, 'hero_logo_bg', error);
                          return LiveTvCardFallbacks.gradientPlaceholder();
                        },
                        useOldImageOnUrlChange: true,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CachedNetworkImage(
                      imageUrl: normalizedHeroUrl,
                      httpHeaders: HttpClientService().imageHeaders,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.high,
                      width: constraints.maxWidth * 0.3,
                      height: constraints.maxHeight * 0.25,
                      memCacheWidth: (constraints.maxWidth * 0.3 * dpr).round(),
                      memCacheHeight:
                          (constraints.maxHeight * 0.25 * dpr).round(),
                      imageBuilder: (context, imageProvider) {
                        ImageFailureCache.recordSuccess(normalizedHeroUrl);
                        ImageLoadProbe.recordSuccess(
                            normalizedHeroUrl, 'hero_logo');
                        return Image(
                          image: imageProvider,
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                          filterQuality: FilterQuality.high,
                          gaplessPlayback: true,
                        );
                      },
                      placeholder: (_, __) => const SizedBox.shrink(),
                      errorWidget: (_, url, error) {
                        ImageFailureCache.recordFailure(url, error);
                        ImageLoadProbe.recordFailure(url, 'hero_logo', error);
                        logHandshakeIfNeeded(url, error,
                            context: 'LiveTV hero logo');
                        return heroFallback;
                      },
                      useOldImageOnUrlChange: true,
                    ),
                  ),
                ],
              );
            }

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
                      alignment: Alignment.topRight,
                      filterQuality: FilterQuality.high,
                      memCacheWidth: cacheWidth,
                      memCacheHeight: cacheHeight,
                      imageBuilder: (context, imageProvider) {
                        return LandscapeGuardedImage(
                          url: normalizedHeroUrl,
                          imageProvider: imageProvider,
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          fallback: heroFallback,
                          probeTag: 'hero_backdrop',
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
                        return heroFallback;
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
