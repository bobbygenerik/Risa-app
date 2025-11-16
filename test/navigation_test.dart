import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
	test('Router configuration contains primary navigation routes', () {
		final mainFile = File('lib/main.dart').readAsStringSync();

		expect(mainFile.contains("path: '/home'"), isTrue);
		expect(mainFile.contains("path: '/search'"), isTrue);
		expect(mainFile.contains("path: '/settings'"), isTrue);
		expect(mainFile.contains("path: '/playlist-login'"), isTrue);
	});
}
