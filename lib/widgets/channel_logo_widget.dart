import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iptv_player/services/channel_logo_service.dart';
import 'package:iptv_player/services/http_client_service.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';
import 'package:iptv_player/utils/logo_image_cache.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_load_probe.dart';
import 'package:iptv_player/services/image_validation_service.dart';

/// A widget that displays a channel logo with fallback support
/// It will try to enrich the logo from known databases if the original is missing
class ChannelLogoWidget extends StatefulWidget {
  final String channelName;
  final String? logoUrl;
  final String? tvgId;
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
  bool _isValidating = false;
  String? _validatedUrl;

  @override
  void initState() {
    super.initState();
    _effectiveLogoUrl = widget.logoUrl;
    if (_effectiveLogoUrl == null || _effectiveLogoUrl!.isEmpty) {
      _enrichLogo();
    } else {
      _validateLogoIfNeeded();
    }
  }

  @override
  void didUpdateWidget(ChannelLogoWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Only update if logo URL actually changed (not just widget rebuild)
    if (widget.logoUrl != oldWidget.logoUrl) {
      final newLogoUrl = widget.logoUrl;
      // Only update state if logo URL actually changed
      if (_effectiveLogoUrl != newLogoUrl) {
        _effectiveLogoUrl = newLogoUrl;
        _triedEnrichment = false;
        _validatedUrl = null;
        if (_effectiveLogoUrl == null || _effectiveLogoUrl!.isEmpty) {
          _enrichLogo();
        } else {
          _validateLogoIfNeeded();
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
          _effectiveLogoUrl = enrichedUrl;
        });
      }
    } catch (e) {
      // Silently fail
    } finally {
      _isEnriching = false;
    }
  }

  Future<void> _validateLogoIfNeeded() async {
    final url = _effectiveLogoUrl;
    if (url == null || url.isEmpty) return;
    if (_validatedUrl == url || _isValidating) return;
    if (ImageValidationService.isKnownInvalid(url)) {
      ImageFailureCache.recordFailure(url, StateError('known_invalid_logo'));
      if (mounted && _effectiveLogoUrl == url) {
        setState(() {
          _effectiveLogoUrl = null;
          _validatedUrl = url;
        });
        unawaited(_enrichLogo());
      }
      return;
    }
    if (ImageValidationService.isKnownValid(url)) {
      _validatedUrl = url;
      return;
    }
    _isValidating = true;
    if (mounted) {
      setState(() {});
    }
    try {
      final valid = await ImageValidationService.isValid(url);
      if (!mounted || _effectiveLogoUrl != url) return;
      if (!valid) {
        ImageFailureCache.recordFailure(url, StateError('invalid_logo'));
        setState(() {
          _effectiveLogoUrl = null;
          _validatedUrl = url;
        });
        unawaited(_enrichLogo());
      } else {
        _validatedUrl = url;
        setState(() {});
      }
    } finally {
      _isValidating = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final tvWidth = context.tvSpacing(widget.width);
    final tvHeight = context.tvSpacing(widget.height);
    return ClipRRect(
      borderRadius:
          widget.borderRadius ?? BorderRadius.circular(context.tvSpacing(12)),
      child: Container(
        width: tvWidth,
        height: tvHeight,
        color: widget.backgroundColor ?? Colors.transparent,
        child: (_isValidating && _validatedUrl != _effectiveLogoUrl)
            ? (widget.placeholder ??
                _buildGradientFallback(context, tvWidth, tvHeight))
            : _effectiveLogoUrl != null && _effectiveLogoUrl!.isNotEmpty
            ? (ImageFailureCache.shouldSkipLogo(_effectiveLogoUrl!)
                ? (widget.placeholder ??
                    _buildGradientFallback(context, tvWidth, tvHeight))
                : Image(
                    image: LogoImageCache.providerFor(
                      _effectiveLogoUrl!,
                      headers: HttpClientService().imageHeaders,
                    ),
                    fit: widget.fit,
                    filterQuality: FilterQuality.high,
                    gaplessPlayback: true,
                    frameBuilder: (context, child, frame, wasSync) {
                      ImageLoadProbe.recordAttempt(
                          _effectiveLogoUrl!, 'channel_logo_widget');
                      if (wasSync || frame != null) {
                        ImageFailureCache.recordSuccess(_effectiveLogoUrl!);
                        return child;
                      }
                      return widget.placeholder ??
                          _buildGradientFallback(context, tvWidth, tvHeight);
                    },
                    errorBuilder: (context, error, stackTrace) {
                      ImageFailureCache.recordFailure(_effectiveLogoUrl!, error);
                      return widget.errorWidget ??
                          _buildGradientFallback(context, tvWidth, tvHeight);
                    },
                  ))
            : (widget.placeholder ??
                _buildGradientFallback(context, tvWidth, tvHeight)),
      ),
    );
  }

  Widget _buildGradientFallback(
      BuildContext context, double width, double height) {
    return SizedBox(
      width: width,
      height: height,
      child: Center(
        child: Icon(
          Icons.tv,
          size: context.tvIconSize(32),
          color: Colors.white70,
        ),
      ),
    );
  }
}
