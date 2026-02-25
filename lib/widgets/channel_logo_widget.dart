import 'dart:async';
import 'package:iptv_player/utils/debug_helper.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/services/channel_logo_service.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/logo_image_cache.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/services/image_validation_service.dart';
import 'package:iptv_player/utils/image_url_helper.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A widget that displays a channel logo with optional enrichment support.
class ChannelLogoWidget extends StatefulWidget {
  final String channelName;
  final String? logoUrl;
  final String? tvgId;
  final bool allowEnrichment;
  final double width;
  final double height;
  final BoxFit fit;
  final Widget? placeholder;
  final Widget? errorWidget;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;

  const ChannelLogoWidget({
    super.key,
    required this.channelName,
    this.logoUrl,
    this.tvgId,
    this.allowEnrichment = false,
    this.width = 48,
    this.height = 48,
    this.fit = BoxFit.contain,
    this.placeholder,
    this.errorWidget,
    this.borderRadius,
    this.backgroundColor,
  });

  @override
  State<ChannelLogoWidget> createState() => _ChannelLogoWidgetState();
}

class _ChannelLogoWidgetState extends State<ChannelLogoWidget> {
  String? _effectiveLogoUrl;
  bool _isEnriching = false;
  bool _triedEnrichment = false;
  bool _recoveryEnrichmentScheduled = false;
  bool _triedFallbackUrl = false;

  @override
  void initState() {
    super.initState();
    _effectiveLogoUrl = _normalizeLogoUrl(widget.logoUrl);
    if (_effectiveLogoUrl == null || _effectiveLogoUrl!.isEmpty) {
      if (widget.allowEnrichment) {
        _enrichLogo();
      }
    }
  }

  @override
  void didUpdateWidget(ChannelLogoWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Only update if logo URL actually changed (not just widget rebuild)
    if (widget.logoUrl != oldWidget.logoUrl) {
      final newLogoUrl = _normalizeLogoUrl(widget.logoUrl);
      // Only update state if logo URL actually changed
      if (_effectiveLogoUrl != newLogoUrl) {
        _effectiveLogoUrl = newLogoUrl;
        _triedEnrichment = false;
        _recoveryEnrichmentScheduled = false;
        _triedFallbackUrl = false;
        if (_effectiveLogoUrl == null || _effectiveLogoUrl!.isEmpty) {
          if (widget.allowEnrichment) {
            _enrichLogo();
          }
        }
      }
    }
    // Don't reset enrichment on channel name changes - logo URL is what matters
  }

  Future<void> _enrichLogo() async {
    if (_isEnriching || _triedEnrichment) return;
    _isEnriching = true;
    _triedEnrichment = true;

    try {
      final enrichedUrl = await ChannelLogoService.getLogoUrl(
        widget.channelName,
        tvgId: widget.tvgId,
      );
      if (mounted && enrichedUrl != null) {
        setState(() {
          _effectiveLogoUrl = _normalizeLogoUrl(enrichedUrl);
          _recoveryEnrichmentScheduled = false;
        });
      }
    } catch (e) {
      // Silently fail
    } finally {
      _isEnriching = false;
    }
  }

  String? _normalizeLogoUrl(String? url) {
    final raw = url?.trim();
    if (raw == null || raw.isEmpty) return null;
    final normalized = normalizeImageUrl(raw);
    if (normalized.trim().isEmpty) return null;
    return normalized;
  }

  bool _isSvgUrl(String url) {
    final lower = url.toLowerCase();
    return lower.endsWith('.svg') || lower.contains('.svg?');
  }

  String _hostFromUrl(String url) {
    try {
      return Uri.parse(url).host;
    } catch (_) {
      return 'unknown';
    }
  }

  /// Try an iptvboss.pro fallback URL before falling through to enrichment.
  void _tryFallbackOrEnrich(String failedUrl) {
    // First attempt: try the iptvboss CDN fallback if we haven't yet
    if (!_triedFallbackUrl) {
      _triedFallbackUrl = true;
      final fallback = buildLogoFallbackUrl(failedUrl, tvgId: widget.tvgId);
      if (fallback != null && fallback != failedUrl) {
        debugLog(
            'ChannelLogoWidget: trying iptvboss fallback for "${widget.channelName}": $fallback');
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;
          setState(() {
            _effectiveLogoUrl = fallback;
          });
        });
        return;
      }
    }

    // Second attempt: standard enrichment recovery
    _scheduleEnrichmentRecovery();
  }

  void _scheduleEnrichmentRecovery() {
    if (!widget.allowEnrichment) return;
    if (_isEnriching || _triedEnrichment || _recoveryEnrichmentScheduled) {
      return;
    }
    _recoveryEnrichmentScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      setState(() {
        _effectiveLogoUrl = null;
      });
      unawaited(_enrichLogo());
    });
  }

  @override
  Widget build(BuildContext context) {
    final tvWidth = context.tvSpacing(widget.width);
    final tvHeight = context.tvSpacing(widget.height);
    final effectiveUrl = _normalizeLogoUrl(_effectiveLogoUrl);

    // If we have a URL, check if it's known bad or should be skipped
    final shouldSkip = effectiveUrl != null &&
        (ImageFailureCache.shouldSkipLogo(effectiveUrl) ||
            ImageValidationService.isKnownInvalid(effectiveUrl));

    return ClipRRect(
      borderRadius:
          widget.borderRadius ?? BorderRadius.circular(context.tvSpacing(12)),
      child: Container(
        width: tvWidth,
        height: tvHeight,
        color: widget.backgroundColor ?? Colors.transparent,
        child: effectiveUrl != null && effectiveUrl.isNotEmpty && !shouldSkip
            ? (_isSvgUrl(effectiveUrl)
                ? SvgPicture.network(
                    effectiveUrl,
                    fit: widget.fit,
                    headers: HttpClientService().imageHeaders,
                    placeholderBuilder: (_) =>
                        widget.placeholder ??
                        _buildGradientFallback(context, tvWidth, tvHeight),
                  )
                : Builder(builder: (context) {
                    return Image(
                      image: LogoImageCache.providerFor(
                        effectiveUrl,
                        headers: HttpClientService().imageHeaders,
                      ),
                      fit: widget.fit,
                      filterQuality: FilterQuality.high,
                      gaplessPlayback: true,
                      frameBuilder: (context, child, frame, wasSync) {
                        if (widget.channelName == "CWWLVI" ||
                            widget.channelName == "PBSWGBH") {
                          // debugLog('ChannelLogoWidget: frameBuilder for ${widget.channelName}: wasSync=$wasSync, frame=$frame');
                        }
                        ImageLoadProbe.recordAttempt(
                            effectiveUrl, 'channel_logo_widget');
                        if (wasSync || frame != null) {
                          ImageFailureCache.recordSuccess(effectiveUrl);
                          return child;
                        }
                        return widget.placeholder ??
                            _buildGradientFallback(context, tvWidth, tvHeight);
                      },
                      errorBuilder: (context, error, stackTrace) {
                        debugLog(
                            'ChannelLogoWidget: error channel="${widget.channelName}" host="${_hostFromUrl(effectiveUrl)}" url="$effectiveUrl" err=$error');
                        ImageFailureCache.recordFailure(effectiveUrl, error);
                        ImageValidationService.markInvalid(effectiveUrl);
                        _tryFallbackOrEnrich(effectiveUrl);
                        return widget.errorWidget ??
                            _buildGradientFallback(context, tvWidth, tvHeight);
                      },
                    );
                  }))
            : (widget.placeholder ??
                _buildGradientFallback(context, tvWidth, tvHeight)),
      ),
    );
  }

  Widget _buildGradientFallback(
      BuildContext context, double width, double height) {
    // No generic TV icon — show nothing when logo is unavailable.
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
