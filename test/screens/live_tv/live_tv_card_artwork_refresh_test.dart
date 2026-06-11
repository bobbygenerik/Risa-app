import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/program.dart';
import 'package:iptv_player/screens/live_tv/live_tv_channel_row_card.dart';

void main() {
  final channel = Channel(id: 'cnn.us', name: 'CNN', url: 'http://x/cnn');
  final program = Program(
    id: 'cnn.us_1',
    channelId: 'cnn.us',
    title: 'NCIS',
    startTime: DateTime.now().subtract(const Duration(minutes: 10)),
    endTime: DateTime.now().add(const Duration(minutes: 40)),
  );

  testWidgets('card re-resolves artwork when the artwork version bumps',
      (tester) async {
    final version = ValueNotifier<int>(0);
    String? artworkUrl; // starts unresolved -> logo/fallback only
    var resolveCalls = 0;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: LiveTvChannelCardContent(
            channel: channel,
            currentProgram: program,
            isFocused: false,
            cardWidth: 220,
            cardHeight: 124,
            allowPrefetch: false,
            isFirstRow: false,
            displayTitle: (p, c) => p.title,
            getCardImage: (p, c, allowPrefetch, {highPriority = false}) {
              resolveCalls++;
              return artworkUrl;
            },
            artworkVersion: version,
          ),
        ),
      ),
    );

    final callsBeforeBump = resolveCalls;
    expect(callsBeforeBump, greaterThan(0));

    // Artwork service finishes a fetch: resolver now has a URL, version bumps.
    artworkUrl = 'https://artworks.thetvdb.com/banners/fanart/original/x.jpg';
    version.value++;
    await tester.pump();

    expect(resolveCalls, greaterThan(callsBeforeBump),
        reason: 'version bump must re-run artwork resolution');
  });
}
