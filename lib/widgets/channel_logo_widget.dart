import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iptv_player/services/channel_logo_service.dart';
import 'package:iptv_player/utils/tv_focus_helper.dart';

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

  @override
  void initState() {
    super.initState();
    _effectiveLogoUrl = widget.logoUrl;
    if (_effectiveLogoUrl == null || _effectiveLogoUrl!.isEmpty) {
      _enrichLogo();
    }
  }

  @override
  void didUpdateWidget(ChannelLogoWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.channelName != oldWidget.channelName ||
        widget.logoUrl != oldWidget.logoUrl) {
      _effectiveLogoUrl = widget.logoUrl;
      _triedEnrichment = false;
      if (_effectiveLogoUrl == null || _effectiveLogoUrl!.isEmpty) {
        _enrichLogo();
      }
    }
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

  Widget _buildPlaceholder() {
    return widget.placeholder ??
        Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.backgroundColor ?? Colors.grey[800],
            borderRadius: widget.borderRadius,
          ),
          child: Icon(
            Icons.live_tv,
            color: Colors.white54,
            size: widget.width * 0.5,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final tvWidth = context.tvSpacing(widget.width);
    final tvHeight = context.tvSpacing(widget.height);
    return ClipRRect(
      borderRadius: widget.borderRadius ?? BorderRadius.circular(context.tvSpacing(12)),
      child: Container(
        width: tvWidth,
        height: tvHeight,
        color: widget.backgroundColor ?? Colors.transparent,
        child: _effectiveLogoUrl != null && _effectiveLogoUrl!.isNotEmpty
            ? CachedNetworkImage(
                imageUrl: _effectiveLogoUrl!,
                fit: widget.fit,
                placeholder: (context, url) => widget.placeholder ?? Icon(Icons.tv, size: context.tvIconSize(32)),
                errorWidget: (context, url, error) => widget.errorWidget ?? Icon(Icons.tv, size: context.tvIconSize(32)),
              )
            : (widget.placeholder ?? Icon(Icons.tv, size: context.tvIconSize(32))),
      ),
    );
  }
}
