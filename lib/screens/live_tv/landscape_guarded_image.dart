import 'package:flutter/material.dart';
import 'package:iptv_player/services/image_validation_service.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';
import 'package:iptv_player/utils/image_load_probe.dart';

class LandscapeGuardedImage extends StatefulWidget {
  const LandscapeGuardedImage({
    super.key,
    required this.url,
    required this.imageProvider,
    required this.fit,
    this.alignment = Alignment.center,
    required this.fallback,
    required this.probeTag,
  });

  final String url;
  final ImageProvider imageProvider;
  final BoxFit fit;
  final Alignment alignment;
  final Widget fallback;
  final String probeTag;

  @override
  State<LandscapeGuardedImage> createState() => _LandscapeGuardedImageState();
}

class _LandscapeGuardedImageState extends State<LandscapeGuardedImage> {
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
        setState(() {
          _info = null;
        });
      },
    );
    _resolveImage();
  }

  @override
  void didUpdateWidget(covariant LandscapeGuardedImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.imageProvider != widget.imageProvider) {
      _resolveImage();
    }
  }

  void _resolveImage() {
    _stream?.removeListener(_streamListener);
    _info = null;
    final stream = widget.imageProvider.resolve(
      const ImageConfiguration(),
    );
    _stream = stream;
    stream.addListener(_streamListener);
  }

  void _handleImage(ImageInfo info, bool sync) {
    if (!mounted) return;
    setState(() {
      _info = info;
    });
  }

  @override
  void dispose() {
    _stream?.removeListener(_streamListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final info = _info;
    if (info == null) {
      return widget.fallback;
    }

    final width = info.image.width;
    final height = info.image.height;
    final isHero = widget.probeTag.contains('hero');
    if (isHero && width / height < 1.3) {
      ImageFailureCache.recordPortrait(widget.url);
      ImageLoadProbe.recordFailure(
        widget.url,
        widget.probeTag,
        Exception('Portrait artwork rejected (hero)'),
      );
      return widget.fallback;
    }
    if (!isHero && width / height < 1.0) {
      ImageFailureCache.recordPortrait(widget.url);
      ImageLoadProbe.recordFailure(
        widget.url,
        widget.probeTag,
        Exception('Portrait artwork rejected'),
      );
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
