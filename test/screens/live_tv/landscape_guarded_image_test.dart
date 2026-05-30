import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_aspect_guard.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';

void main() {
  test('rejects near-square artwork for hero slots', () {
    expect(
      shouldRejectArtworkAspect(
        width: 1400,
        height: 1000,
        slot: ArtworkSlot.hero,
      ),
      isTrue,
    );
    expect(
      shouldRejectArtworkAspect(
        width: 1920,
        height: 1080,
        slot: ArtworkSlot.hero,
      ),
      isFalse,
    );
  });

  test('rejects portrait artwork for card slots', () {
    expect(
      shouldRejectArtworkAspect(
        width: 400,
        height: 600,
        slot: ArtworkSlot.card,
      ),
      isTrue,
    );
  });

  test('rejects low-resolution hero backdrops', () {
    expect(
      shouldRejectArtworkResolution(
        width: 400,
        height: 225,
        slot: ArtworkSlot.hero,
      ),
      isTrue,
    );
    expect(
      shouldRejectArtworkResolution(
        width: 1280,
        height: 720,
        slot: ArtworkSlot.hero,
      ),
      isFalse,
    );
  });
}
