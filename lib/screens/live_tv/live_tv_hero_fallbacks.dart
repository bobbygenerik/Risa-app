import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/network_error_logger.dart';
import 'package:iptv_player/utils/program_classifier.dart';
import 'package:iptv_player/widgets/brand_fallback_background.dart';

/// Hero panel fallbacks when landscape program artwork is unavailable.
class LiveTvHeroFallbacks {
  LiveTvHeroFallbacks._();

  static Widget forProgram(Channel channel, Program? program) {
    if (ProgramClassifier.isNewsProgram(program, channel)) {
      return news(channel);
    }
    if (program != null &&
        ProgramClassifier.isSportsProgram(program, channel)) {
      return sports(channel);
    }
    if (ProgramClassifier.isWeatherProgram(program, channel)) {
      return weather(channel);
    }
    if (ProgramClassifier.isKidsProgram(program, channel)) {
      return kids(channel);
    }
    if (ProgramClassifier.isMusicProgram(program, channel)) {
      return music(channel);
    }
    if (ProgramClassifier.isDocumentaryProgram(program, channel)) {
      return documentary(channel);
    }
    if (ProgramClassifier.isMovieProgram(program, channel)) {
      return movie(channel);
    }
    return logo(channel);
  }

  static Widget logo(Channel channel) {
    final label = resolveFallbackCategoryLabel(channel);
    return category(
      channel,
      icon: Icons.tv,
      label: label,
      showLogo: false,
    );
  }

  static Widget news(Channel channel) => category(
        channel,
        icon: Icons.newspaper,
        label: 'NEWS',
        showLogo: false,
      );

  static Widget sports(Channel channel) => category(
        channel,
        icon: Icons.sports,
        label: 'SPORTS',
        showLogo: false,
      );

  static Widget weather(Channel channel) => category(
        channel,
        icon: Icons.cloud,
        label: 'WEATHER',
        showLogo: false,
      );

  static Widget kids(Channel channel) => category(
        channel,
        icon: Icons.child_care,
        label: 'KIDS',
        showLogo: false,
      );

  static Widget music(Channel channel) => category(
        channel,
        icon: Icons.music_note,
        label: 'MUSIC',
        showLogo: false,
      );

  static Widget documentary(Channel channel) => category(
        channel,
        icon: Icons.menu_book,
        label: 'DOCS',
        showLogo: false,
      );

  static Widget movie(Channel channel) => category(
        channel,
        icon: Icons.movie,
        label: 'MOVIES',
        showLogo: false,
      );

  static String resolveFallbackCategoryLabel(Channel channel) {
    final rawGroup = (channel.groupTitle ?? '').trim();
    if (rawGroup.isEmpty) return 'LIVE TV';
    final cleaned = rawGroup.replaceAll(RegExp(r'[^A-Za-z0-9]+'), ' ').trim();
    if (cleaned.isEmpty) return 'LIVE TV';
    const stopWords = {
      'hd',
      'sd',
      'uhd',
      '4k',
      'tv',
      'us',
      'uk',
      'ca',
    };
    final tokens = cleaned.split(RegExp(r'\s+'));
    String? pick;
    for (final token in tokens) {
      final lower = token.toLowerCase();
      if (lower.length < 3) continue;
      if (stopWords.contains(lower)) continue;
      pick = token;
      break;
    }
    pick ??= tokens.first;
    if (pick.length > 12) {
      pick = pick.substring(0, 12);
    }
    return pick.toUpperCase();
  }

  static Widget category(
    Channel channel, {
    required IconData icon,
    String? label,
    bool showLogo = true,
  }) {
    final logoUrl = channel.logoUrl;
    final normalizedLogoUrl =
        logoUrl == null ? null : normalizeImageUrl(logoUrl);

    return BrandFallbackBackground(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: FractionallySizedBox(
              widthFactor: 0.75,
              heightFactor: 1.0,
              child: Center(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final dpr = MediaQuery.of(context).devicePixelRatio;
                    final maxLogoWidth = constraints.maxWidth * 0.65;
                    final maxLogoHeight = constraints.maxHeight * 0.34;
                    // Decode at the displayed size (was capped at 480px, a
                    // ~2.5x upscale on desktop hero widths). Width-only so the
                    // decoder preserves the logo's aspect ratio — giving
                    // ResizeImage both dimensions decodes to exactly that box
                    // and distorts logos that don't match it.
                    final logoCacheWidth =
                        math.min(1600, (maxLogoWidth * dpr).round());

                    const fallbackContent = SizedBox.shrink();

                    Widget buildCenteredLogo(Widget child) {
                      return Center(child: child);
                    }

                    Widget buildLogoBlock(Widget child) {
                      return SizedBox(
                        width: maxLogoWidth,
                        height: maxLogoHeight,
                        child: Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Transform.translate(
                              offset: const Offset(0, -4),
                              child: child,
                            ),
                          ),
                        ),
                      );
                    }

                    Widget buildFallbackContent() {
                      return buildCenteredLogo(fallbackContent);
                    }

                    if (!showLogo ||
                        normalizedLogoUrl == null ||
                        normalizedLogoUrl.isEmpty ||
                        ImageFailureCache.shouldSkip(normalizedLogoUrl)) {
                      return buildFallbackContent();
                    }

                    return CachedNetworkImage(
                      imageUrl: normalizedLogoUrl,
                      httpHeaders: HttpClientService().imageHeaders,
                      fit: BoxFit.contain,
                      width: maxLogoWidth,
                      height: maxLogoHeight,
                      memCacheWidth: logoCacheWidth,
                      imageBuilder: (context, imageProvider) {
                        ImageFailureCache.recordSuccess(normalizedLogoUrl);
                        final logo = Image(
                          image: imageProvider,
                          fit: BoxFit.contain,
                          width: maxLogoWidth,
                          height: maxLogoHeight,
                          gaplessPlayback: true,
                        );
                        if (!showLogo) {
                          return buildFallbackContent();
                        }
                        return buildCenteredLogo(buildLogoBlock(logo));
                      },
                      placeholder: (_, __) => buildFallbackContent(),
                      errorWidget: (_, url, error) {
                        ImageFailureCache.recordFailure(url, error);
                        logHandshakeIfNeeded(url, error,
                            context: 'LiveTV hero logo');
                        return buildFallbackContent();
                      },
                      useOldImageOnUrlChange: true,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
