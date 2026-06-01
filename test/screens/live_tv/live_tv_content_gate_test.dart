import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/screens/live_tv/live_tv_skeleton_controller.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('sessionHasShownContent survives controller remount', () {
    LiveTvSkeletonController.sessionHasShownContent = false;

    final controller = LiveTvSkeletonController(
      isMounted: () => true,
      requestRebuild: () {},
      getChannelProvider: () => throw UnimplementedError(),
      getCategoryCoordinator: () => throw UnimplementedError(),
      getCategoryState: () => throw UnimplementedError(),
    );

    controller.markVisibility(true);
    expect(controller.hasShownContentEver, isFalse);

    controller.markVisibility(false);
    expect(controller.hasShownContentEver, isTrue);

    final remounted = LiveTvSkeletonController(
      isMounted: () => true,
      requestRebuild: () {},
      getChannelProvider: () => throw UnimplementedError(),
      getCategoryCoordinator: () => throw UnimplementedError(),
      getCategoryState: () => throw UnimplementedError(),
    );

    expect(remounted.hasShownContentEver, isTrue);
    LiveTvSkeletonController.sessionHasShownContent = false;
  });
}
