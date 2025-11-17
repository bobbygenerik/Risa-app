import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

/// Compatibility wrapper that prefers `PopScope` (newer SDK) but preserves
/// the `WillPopScope`-style `onWillPop` callback semantics.
///
/// It registers a `PopScope` that disables the default pop (via
/// `canPop: false`) and invokes the provided `onWillPop` callback when a
/// system back/pop is attempted. This mirrors the common pattern of
/// returning `false` from `onWillPop` while running a custom navigation
/// action (e.g. `context.go('/home')`).
class CompatPopScope extends StatelessWidget {
  final Widget child;
  final Future<bool> Function()? onWillPop;

  const CompatPopScope({super.key, required this.child, this.onWillPop});

  @override
  Widget build(BuildContext context) {
    if (onWillPop == null) return child;

    // Use PopScope to hook back navigation attempts. We set canPop=false so
    // the route will not actually be popped by default; PopScope will still
    // call `onPopInvokedWithResult` where we trigger the provided
    // `onWillPop` callback. This preserves the original semantics used in
    // this codebase (navigate somewhere and return false).
    return PopScope<dynamic>(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        // Fire the user-provided handler asynchronously.
        if (onWillPop != null) {
          // Fire-and-forget; handler can perform navigation or other work.
          Future.microtask(() => onWillPop!());
        }
      },
      child: child,
    );
  }
}
