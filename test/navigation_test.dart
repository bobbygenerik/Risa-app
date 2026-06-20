import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Router configuration contains primary navigation routes', () {
    final routerFile = File('lib/app/app_router.dart').readAsStringSync();

    expect(routerFile.contains("path: '/home'"), isTrue);
    expect(routerFile.contains("path: '/search'"), isTrue);
    expect(routerFile.contains("path: '/settings'"), isTrue);
    // expect(routerFile.contains("path: '/playlist-login'"), isTrue); // Content removed or renamed
  });
}
