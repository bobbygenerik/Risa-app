import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:iptv_player/widgets/brand_fallback_background.dart';
import 'package:iptv_player/widgets/channel_logo_widget.dart';

/// Channel row card artwork fallbacks when program images are unavailable.
class LiveTvCardFallbacks {
  LiveTvCardFallbacks._();

  static Widget channelCard(Program? program, Channel channel) {
    final logoUrl = channel.logoUrl;
    if (logoUrl != null && logoUrl.isNotEmpty) {
      return logoAsFallback(logoUrl, channel.name);
    }
    return BrandFallbackBackground(
      child: missingArtwork(channel.name),
    );
  }

  static Widget logoAsFallback(String logoUrl, String channelName) {
    final normalizedUrl = normalizeImageUrl(logoUrl);
    final isSvg = normalizedUrl.toLowerCase().endsWith('.svg') ||
        normalizedUrl.toLowerCase().contains('.svg?');

    return BrandFallbackBackground(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: isSvg
              ? SvgPicture.network(
                  normalizedUrl,
                  fit: BoxFit.contain,
                  headers: HttpClientService().imageHeaders,
                  placeholderBuilder: (_) => missingArtwork(channelName),
                )
              : (ImageFailureCache.shouldSkip(normalizedUrl)
                  ? missingArtwork(channelName)
                  : CachedNetworkImage(
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
                            'LiveTV logo fallback: error channel="$channelName" host="$host" url="$url" err=$error');
                        ImageFailureCache.recordFailure(url, error);
                        return missingArtwork(channelName);
                      },
                      useOldImageOnUrlChange: true,
                    )),
        ),
      ),
    );
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

  static Widget gradientPlaceholder({Widget? child}) {
    return BrandFallbackBackground(child: child);
  }
}
