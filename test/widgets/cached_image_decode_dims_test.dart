import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/widgets/cached_image.dart';

void main() {
  Future<CachedNetworkImage> pump(WidgetTester tester, Widget child) async {
    await tester.pumpWidget(
      MaterialApp(
        home: MediaQuery(
          // dpr 2.0, 1000x600 logical screen
          data: const MediaQueryData(
            size: Size(1000, 600),
            devicePixelRatio: 2.0,
          ),
          child: child,
        ),
      ),
    );
    return tester.widget<CachedNetworkImage>(find.byType(CachedNetworkImage));
  }

  testWidgets('height-only widget decodes by height alone, preserving aspect',
      (tester) async {
    final inner = await pump(
      tester,
      const CachedImage(imageUrl: 'https://x.test/logo.png', height: 48),
    );
    expect(inner.memCacheHeight, 96, reason: '48 logical x dpr 2');
    expect(inner.memCacheWidth, isNull,
        reason: 'must not pair the real height with a screen-width fallback — '
            'ResizeImage with both dims decodes to a distorted aspect');
  });

  testWidgets('width-only widget decodes by width alone', (tester) async {
    final inner = await pump(
      tester,
      const CachedImage(imageUrl: 'https://x.test/logo.png', width: 200),
    );
    expect(inner.memCacheWidth, 400);
    expect(inner.memCacheHeight, isNull);
  });

  testWidgets('both dimensions known uses both', (tester) async {
    final inner = await pump(
      tester,
      const CachedImage(
          imageUrl: 'https://x.test/poster.jpg', width: 220, height: 124),
    );
    expect(inner.memCacheWidth, 440);
    expect(inner.memCacheHeight, 248);
  });

  testWidgets('no dimensions caps decode by screen width only',
      (tester) async {
    final inner = await pump(
      tester,
      const CachedImage(imageUrl: 'https://x.test/backdrop.jpg'),
    );
    expect(inner.memCacheWidth, 2000, reason: 'screen width x dpr');
    expect(inner.memCacheHeight, isNull,
        reason: 'single-dimension cap preserves aspect ratio');
  });

  testWidgets('explicit memCache params are honored verbatim', (tester) async {
    final inner = await pump(
      tester,
      const CachedImage(
        imageUrl: 'https://x.test/poster.jpg',
        memCacheWidth: 333,
        memCacheHeight: 111,
      ),
    );
    expect(inner.memCacheWidth, 333);
    expect(inner.memCacheHeight, 111);
  });
}
