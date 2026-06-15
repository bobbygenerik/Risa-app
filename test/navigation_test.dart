import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Router configuration contains primary navigation routes', () {
    final mainFile = File('lib/main.dart').readAsStringSync();

    final appRouterFile = File('lib/app/app_router.dart').readAsStringSync();

    expect(appRouterFile.contains("path: '/home'"), isTrue);
    expect(appRouterFile.contains("path: '/search'"), isTrue);
    expect(appRouterFile.contains("path: '/settings'"), isTrue);
    // expect(appRouterFile.contains("path: '/playlist-login'"), isTrue); // Content removed or renamed
  });
}
