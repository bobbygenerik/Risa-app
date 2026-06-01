import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

bool usesSqfliteFfi({
  required bool isWeb,
  required String operatingSystem,
}) {
  if (isWeb) return false;
  return operatingSystem == 'linux' ||
      operatingSystem == 'macos' ||
      operatingSystem == 'windows';
}

void initializeSqliteForPlatform() {
  if (!usesSqfliteFfi(
    isWeb: kIsWeb,
    operatingSystem: Platform.operatingSystem,
  )) {
    return;
  }

  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
}
