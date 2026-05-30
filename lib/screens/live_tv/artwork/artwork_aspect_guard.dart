import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';

bool shouldRejectArtworkAspect({
  required int width,
  required int height,
  ArtworkSlot slot = ArtworkSlot.card,
  bool isHero = false,
}) {
  if (height <= 0) return true;
  final aspectRatio = width / height;
  final effective = slot == ArtworkSlot.hero || isHero
      ? ArtworkSlot.hero
      : ArtworkSlot.card;
  return switch (effective) {
    ArtworkSlot.hero => aspectRatio < 1.55,
    ArtworkSlot.card => aspectRatio < 1.0,
  };
}

bool shouldRejectArtworkResolution({
  required int width,
  required int height,
  ArtworkSlot slot = ArtworkSlot.card,
  bool isHero = false,
}) {
  final effective = slot == ArtworkSlot.hero || isHero
      ? ArtworkSlot.hero
      : ArtworkSlot.card;
  if (effective != ArtworkSlot.hero) return false;
  return width < 640 || height < 360;
}
