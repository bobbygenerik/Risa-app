import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/screens/live_tv/artwork/hero_artwork_policy.dart';
import 'package:iptv_player/screens/live_tv/artwork_url_guard.dart';

void main() {
  final channel = Channel(
    id: 'comedy.au',
    name: 'Comedy',
    url: 'https://example.com/stream.m3u8',
    logoUrl: 'https://example.com/logo.png',
  );

  test('allows TMS EPG backdrop image when used as EPG fallback', () {
    final accepted = LiveTvArtworkUrlGuard.isValidProgramArtwork(
      'https://zpmc.tmsimg.com/assets/p7891915_b_h9_ab.jpg',
      channel,
      programTitle: 'ALF',
      source: 'card_epg',
      forCard: true,
      isEpgFallback: true,
    );

    expect(accepted, isTrue);
  });

  test('keeps TMS host blocked outside direct EPG fallback', () {
    final accepted = LiveTvArtworkUrlGuard.isValidProgramArtwork(
      'https://zpmc.tmsimg.com/assets/p7891915_b_h9_ab.jpg',
      channel,
      programTitle: 'ALF',
      source: 'cached',
      forCard: true,
    );

    expect(accepted, isFalse);
  });

  test('rejects small EPG image for hero even with EPG fallback', () {
    const policy = HeroArtworkPolicy();
    final accepted = policy.acceptsUrl(
      'https://example.com/assets/show_320x180.jpg',
      channel,
      programTitle: 'Small Show',
      source: 'hero_epg',
      isEpgFallback: true,
    );

    expect(accepted, isFalse);
  });

  test('rejects TMS poster image even when used as EPG fallback', () {
    final accepted = LiveTvArtworkUrlGuard.isValidProgramArtwork(
      'https://zpmc.tmsimg.com/assets/p7938924_p_v10_ap.jpg?w=200',
      channel,
      programTitle: 'Poster Program',
      source: 'card_epg',
      forCard: true,
      isEpgFallback: true,
    );

    expect(accepted, isFalse);
  });
}
