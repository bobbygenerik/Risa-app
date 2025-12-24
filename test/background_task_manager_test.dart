import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:iptv_player/services/background_task_manager.dart';
import 'package:iptv_player/services/incremental_epg_service.dart';
import 'package:iptv_player/providers/channel_provider.dart';

class MockIncrementalEpgService extends Fake
    with ChangeNotifier
    implements IncrementalEpgService {
  @override
  Future<void> initialize({bool forceRefresh = false}) async {}
}

class MockChannelProvider extends Fake
    with ChangeNotifier
    implements ChannelProvider {
  @override
  Future<void> autoLoadPlaylist() async {}
}

void main() {
  testWidgets('BackgroundTaskManager can start and stop without error',
      (WidgetTester tester) async {
    final mockEpg = MockIncrementalEpgService();
    final mockChannel = MockChannelProvider();

    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<IncrementalEpgService>.value(value: mockEpg),
          ChangeNotifierProvider<ChannelProvider>.value(value: mockChannel),
        ],
        child: Builder(
          builder: (context) {
            BackgroundTaskManager.start(context);
            // Just return a placeholder, we only test the start method side-effects (or lack of crash)
            return const Placeholder();
          },
        ),
      ),
    );

    // Verify timers started? The original test just checked returnsNormally.
    // Since timers are private static, we can't easily check them without reflection or exposing them.
    // The goal here is "start and stop without error".

    expect(() => BackgroundTaskManager.stop(), returnsNormally);
  });
}
