import 'package:flutter/material.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_aspect_guard.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';
import 'package:iptv_player/services/image_validation_service.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_load_probe.dart';

/// Decode-time aspect guard scoped to [ArtworkSlot] (hero vs card).
class GuardedArtworkImage extends StatefulWidget {
  const GuardedArtworkImage({
    super.key,
    required this.url,
    required this.imageProvider,
    required this.slot,
    required this.fit,
    this.alignment = Alignment.center,
    required this.fallback,
    required this.probeTag,
    this.onRejected,
  });

  final String url;
  final ImageProvider imageProvider;
  final ArtworkSlot slot;
  final BoxFit fit;
  final Alignment alignment;
  final Widget fallback;
  final String probeTag;
  final VoidCallback? onRejected;

  @override
  State<GuardedArtworkImage> createState() => _GuardedArtworkImageState();
}

class _GuardedArtworkImageState extends State<GuardedArtworkImage> {
  ImageStream? _stream;
  ImageInfo? _info;
  late final ImageStreamListener _streamListener;

  @override
  void initState() {
    super.initState();
    _streamListener = ImageStreamListener(
      _handleImage,
      onError: (error, stackTrace) {
        if (!mounted) return;
        ImageFailureCache.recordFailure(widget.url, error);
        ImageValidationService.markInvalid(widget.url);
        setState(() => _info = null);
      },
    );
    _resolveImage();
  }

  @override
  void didUpdateWidget(covariant GuardedArtworkImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.imageProvider != widget.imageProvider ||
        oldWidget.slot != widget.slot) {
      _resolveImage();
    }
  }

  void _resolveImage() {
    _stream?.removeListener(_streamListener);
    _info = null;
    final stream = widget.imageProvider.resolve(const ImageConfiguration());
    _stream = stream;
    stream.addListener(_streamListener);
  }

  void _handleImage(ImageInfo info, bool sync) {
    if (!mounted) return;
    setState(() => _info = info);
  }

  @override
  void dispose() {
    _stream?.removeListener(_streamListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final info = _info;
    if (info == null) return widget.fallback;

    final width = info.image.width;
    final height = info.image.height;
    if (shouldRejectArtworkAspect(
          width: width,
          height: height,
          slot: widget.slot,
        ) ||
        shouldRejectArtworkResolution(
          width: width,
          height: height,
          slot: widget.slot,
        )) {
      final portrait = height > 0 && width / height < 1.0;
      ImageFailureCache.recordAspectRejected(
        widget.url,
        slot: widget.slot,
        portrait: portrait,
      );
      ImageLoadProbe.recordFailure(
        widget.url,
        widget.probeTag,
        Exception('Artwork rejected for ${widget.slot.name} slot'),
      );
      widget.onRejected?.call();
      return widget.fallback;
    }

    ImageFailureCache.recordSuccess(widget.url);
    ImageValidationService.markValid(widget.url);
    ImageLoadProbe.recordSuccess(widget.url, widget.probeTag);
    return Image(
      image: widget.imageProvider,
      fit: widget.fit,
      alignment: widget.alignment,
      gaplessPlayback: true,
    );
  }
}
