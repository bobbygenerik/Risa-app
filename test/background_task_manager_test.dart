import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/services/background_task_manager.dart';
import 'package:flutter/material.dart';

void main() {
  test('BackgroundTaskManager can start and stop without error', () {
    final testContext = _FakeBuildContext();
    expect(() => BackgroundTaskManager.start(testContext), returnsNormally);
    expect(() => BackgroundTaskManager.stop(), returnsNormally);
  });
}

class _FakeBuildContext implements BuildContext {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
