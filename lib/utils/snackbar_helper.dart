import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

/// Safely show a SnackBar. If the provided [context] has a [ScaffoldMessenger],
/// it will be used. Otherwise, this will attempt to use the root navigator's
/// context and, as a last resort, schedule the SnackBar to show after the
/// current frame.
void showAppSnackBar(BuildContext context, SnackBar snackBar) {
  try {
    final messenger = ScaffoldMessenger.maybeOf(context);
    if (messenger != null) {
      messenger.showSnackBar(snackBar);
      return;
    }
  } catch (_) {
    // ignore and try root context
  }

  // Try to find a root context via Navigator
  BuildContext? rootCtx;
  try {
    rootCtx = Navigator.of(context, rootNavigator: true).context;
  } catch (_) {
    rootCtx = null;
  }

  if (rootCtx != null) {
    final rootMessenger = ScaffoldMessenger.maybeOf(rootCtx);
    if (rootMessenger != null) {
      rootMessenger.showSnackBar(snackBar);
      return;
    }
  }

  // As a last resort, schedule for after the frame in case the Scaffold is
  // still being created (e.g., during first build).
  WidgetsBinding.instance.addPostFrameCallback((_) {
    final messenger = ScaffoldMessenger.maybeOf(context) ?? (rootCtx != null ? ScaffoldMessenger.maybeOf(rootCtx) : null);
    messenger?.showSnackBar(snackBar);
  });
}
