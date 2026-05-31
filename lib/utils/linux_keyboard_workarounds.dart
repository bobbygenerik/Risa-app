import 'dart:io';

import 'package:flutter/services.dart';
import 'package:iptv_player/utils/debug_helper.dart';

/// GTK on Linux can emit orphan Scroll Lock key-down events that crash Flutter's
/// raw keyboard tracker. Swallow them before they reach the framework.
void installLinuxKeyboardWorkarounds() {
  if (!Platform.isLinux) return;
  HardwareKeyboard.instance.addHandler(_swallowScrollLock);
  debugLog('Linux keyboard workarounds installed (Scroll Lock filter)');
}

bool _swallowScrollLock(KeyEvent event) {
  if (event.logicalKey == LogicalKeyboardKey.scrollLock) {
    return true;
  }
  return false;
}
