import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/screens/live_tv/artwork/artwork_slot.dart';
import 'package:iptv_player/utils/image_failure_cache.dart';

void main() {
  setUp(ImageFailureCache.clear);

  test('hero aspect rejection is remembered so hero stops re-resolving', () {
    const url = 'http://example.com/poster.png';
    expect(ImageFailureCache.shouldSkip(url, slot: ArtworkSlot.hero), isFalse);

    ImageFailureCache.recordAspectRejected(
      url,
      slot: ArtworkSlot.hero,
      portrait: false,
    );

    expect(ImageFailureCache.shouldSkip(url, slot: ArtworkSlot.hero), isTrue);
  });

  test('hero-only rejection still allows the same image on cards', () {
    const url = 'http://example.com/squareish.png';
    ImageFailureCache.recordAspectRejected(
      url,
      slot: ArtworkSlot.hero,
      portrait: false,
    );

    expect(ImageFailureCache.shouldSkip(url, slot: ArtworkSlot.card), isFalse);
  });

  test('true portrait rejection (card) skips everywhere', () {
    const url = 'http://example.com/tall.png';
    ImageFailureCache.recordAspectRejected(
      url,
      slot: ArtworkSlot.card,
      portrait: true,
    );

    expect(ImageFailureCache.shouldSkip(url, slot: ArtworkSlot.card), isTrue);
    expect(ImageFailureCache.shouldSkip(url, slot: ArtworkSlot.hero), isTrue);
  });
}
