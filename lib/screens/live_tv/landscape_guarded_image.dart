import 'package:flutter/material.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';
export 'package:iptv_player/screens/live_tv/artwork/artwork_aspect_guard.dart';
import 'package:iptv_player/screens/live_tv/artwork/guarded_artwork_image.dart';

/// Back-compat wrapper — prefer [GuardedArtworkImage] with [ArtworkSlot].
class LandscapeGuardedImage extends StatelessWidget {
  const LandscapeGuardedImage({
    super.key,
    required this.url,
    required this.imageProvider,
    required this.fit,
    this.alignment = Alignment.center,
    required this.fallback,
    required this.probeTag,
    this.onRejected,
  });

  final String url;
  final ImageProvider imageProvider;
  final BoxFit fit;
  final Alignment alignment;
  final Widget fallback;
  final String probeTag;
  final VoidCallback? onRejected;

  ArtworkSlot get _slot =>
      probeTag.contains('hero') ? ArtworkSlot.hero : ArtworkSlot.card;

  @override
  Widget build(BuildContext context) {
    return GuardedArtworkImage(
      url: url,
      imageProvider: imageProvider,
      slot: _slot,
      fit: fit,
      alignment: alignment,
      fallback: fallback,
      probeTag: probeTag,
      onRejected: onRejected,
    );
  }
}
