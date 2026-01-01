import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A PopScope wrapper that prevents the app from exiting when pressing back
/// on standalone screens. Instead, it navigates back using GoRouter.
///
/// Use this on screens that are not children of MainShell to ensure
/// consistent back navigation behavior.
class SafePopScope extends StatelessWidget {
  final Widget child;
  
  /// Optional callback to determine if back should be allowed.
  /// Return true to allow the default back behavior, false to handle custom navigation.
  final Future<bool> Function()? onWillPop;

  const SafePopScope({
    super.key,
    required this.child,
    this.onWillPop,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        
        // If custom handler provided, check if we should allow navigation
        if (onWillPop != null) {
          final shouldPop = await onWillPop!();
          if (!shouldPop) return;
        }
        
        // Use GoRouter to navigate back safely
        if (!context.mounted) return;
        
        if (context.canPop()) {
          context.pop();
        } else {
          // If we can't pop, go to home screen instead of exiting app
          context.go('/home');
        }
      },
      child: child,
    );
  }
}
