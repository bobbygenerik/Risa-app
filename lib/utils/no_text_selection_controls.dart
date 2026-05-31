import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:iptv_player/utils/tv_focus_helper.dart';

/// Disables selection handles and toolbars for TextField widgets.
class NoTextSelectionControls extends MaterialTextSelectionControls {
  NoTextSelectionControls();

  @override
  Size getHandleSize(double textLineHeight) => Size.zero;

  @override
  Offset getHandleAnchor(TextSelectionHandleType type, double textLineHeight) {
    return Offset.zero;
  }

  @override
  Widget buildHandle(
    BuildContext context,
    TextSelectionHandleType type,
    double textHeight, [
    VoidCallback? onTap,
  ]) {
    return const SizedBox.shrink();
  }

  @override
  Widget buildToolbar(
    BuildContext context,
    Rect globalEditableRegion,
    double textLineHeight,
    Offset selectionMidpoint,
    List<TextSelectionPoint> endpoints,
    TextSelectionDelegate delegate,
    ValueListenable<ClipboardStatus>? clipboardStatus,
    Offset? lastSecondaryTapDownPosition,
  ) {
    return const SizedBox.shrink();
  }
}

/// TV builds hide selection UI; desktop keeps normal paste/select behavior.
bool textFieldInteractiveSelection(BuildContext context) => !context.isTV;

TextSelectionControls? textFieldSelectionControls(BuildContext context) =>
    context.isTV ? NoTextSelectionControls() : null;
