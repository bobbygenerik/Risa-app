import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/utils/program_classifier.dart';
import 'package:iptv_player/utils/sports_classifier.dart';
import 'package:iptv_player/widgets/brand_fallback_background.dart';
import 'package:iptv_player/widgets/channel_logo_widget.dart';

enum _CardFallbackTone { news, sports, general }

/// Channel row card artwork fallbacks when program images are unavailable.
class LiveTvCardFallbacks {
  LiveTvCardFallbacks._();

  static Widget channelCard(Program? program, Channel channel) {
    final tone = _toneFor(program, channel);
    final logoUrl = channel.logoUrl;
    if (logoUrl != null && logoUrl.isNotEmpty) {
      return _logoFallback(logoUrl, channel.name, tone);
    }
    return _tintedBrandFallback(channel.name, tone);
  }

  static Widget logoAsFallback(String logoUrl, String channelName) {
    return _logoFallback(logoUrl, channelName, _CardFallbackTone.general);
  }

  static Widget gradientPlaceholder({Widget? child}) {
    return BrandFallbackBackground(child: child);
  }

  static Widget missingArtwork([String? channelName]) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          final maxHeight = constraints.maxHeight;
          final logoWidth = (maxWidth * 0.6).clamp(40.0, maxWidth);
          final logoHeight = (maxHeight * 0.35).clamp(24.0, maxHeight);
          if (channelName == null || channelName.isEmpty) {
            return const SizedBox.shrink();
          }
          return ChannelLogoWidget(
            channelName: channelName,
            logoUrl: null,
            tvgId: null,
            allowEnrichment: true,
            width: logoWidth,
            height: logoHeight,
            fit: BoxFit.contain,
            backgroundColor: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            placeholder: const SizedBox.shrink(),
            errorWidget: const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  static _CardFallbackTone _toneFor(Program? program, Channel channel) {
    if (program != null && SportsClassifier.isSportsProgram(program, channel)) {
      return _CardFallbackTone.sports;
    }
    if (program != null && ProgramClassifier.isNewsProgram(program, channel)) {
      return _CardFallbackTone.news;
    }
    final group = (channel.groupTitle ?? '').toLowerCase();
    if (group.contains('sport')) return _CardFallbackTone.sports;
    if (group.contains('news')) return _CardFallbackTone.news;
    return _CardFallbackTone.general;
  }

  static Color _tintColor(_CardFallbackTone tone) {
    switch (tone) {
      case _CardFallbackTone.sports:
        return const Color(0xFF0D3B2E);
      case _CardFallbackTone.news:
        return const Color(0xFF14254A);
      case _CardFallbackTone.general:
        return const Color(0xFF070A1F);
    }
  }

  static Widget _tintedBrandFallback(String channelName, _CardFallbackTone tone) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const BrandFallbackBackground(),
        Container(color: _tintColor(tone).withValues(alpha: 0.55)),
        missingArtwork(channelName),
      ],
    );
  }

  static Widget _logoFallback(
    String logoUrl,
    String channelName,
    _CardFallbackTone tone,
  ) {
    final normalizedUrl = normalizeImageUrl(logoUrl);
    final isSvg = normalizedUrl.toLowerCase().endsWith('.svg') ||
        normalizedUrl.toLowerCase().contains('.svg?');

    if (isSvg || ImageFailureCache.shouldSkip(normalizedUrl)) {
      return _tintedBrandFallback(channelName, tone);
    }

    return Stack(
      fit: StackFit.expand,
      children: [
        const BrandFallbackBackground(),
        Container(color: _tintColor(tone).withValues(alpha: 0.42)),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: CachedNetworkImage(
              imageUrl: normalizedUrl,
              httpHeaders: HttpClientService().imageHeaders,
              fit: BoxFit.contain,
              imageBuilder: (context, imageProvider) {
                ImageFailureCache.recordSuccess(normalizedUrl);
                return Image(
                  image: imageProvider,
                  fit: BoxFit.contain,
                  gaplessPlayback: true,
                );
              },
              placeholder: (_, __) => missingArtwork(channelName),
              errorWidget: (_, url, error) {
                final host = Uri.tryParse(url)?.host ?? 'unknown';
                debugLog(
                  'LiveTV logo fallback: error channel="$channelName" '
                  'host="$host" url="$url" err=$error',
                );
                ImageFailureCache.recordFailure(url, error);
                return missingArtwork(channelName);
              },
            ),
          ),
        ),
      ],
    );
  }
}
