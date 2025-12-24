import 'package:flutter/material.dart';

/// Global messenger key so snackbars can be dispatched even when the calling
/// context is not within an active Scaffold hierarchy yet (e.g., during route
/// transitions or early initialization).
final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

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
  } catch (error) {
    final fallbackMessenger = rootScaffoldMessengerKey.currentState;
    if (fallbackMessenger != null) {
      try {
        fallbackMessenger.showSnackBar(snackBar);
        return;
      } catch (_) {
        // Continue to other fallbacks below.
      }
    }
    // ignore and try root context / next strategies
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
      try {
        rootMessenger.showSnackBar(snackBar);
        return;
      } catch (_) {
        // Fall back to global messenger if available.
        final fallbackMessenger = rootScaffoldMessengerKey.currentState;
        if (fallbackMessenger != null) {
          fallbackMessenger.showSnackBar(snackBar);
          return;
        }
      }
    }
  }

  // As a last resort, schedule for after the frame in case the Scaffold is
  // still being created (e.g., during first build).
  WidgetsBinding.instance.addPostFrameCallback((_) {
    final messenger = ScaffoldMessenger.maybeOf(context) ??
        (rootCtx != null ? ScaffoldMessenger.maybeOf(rootCtx) : null) ??
        rootScaffoldMessengerKey.currentState;
    messenger?.showSnackBar(snackBar);
  });
}
