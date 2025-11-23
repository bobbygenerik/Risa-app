import 'package:flutter/widgets.dart';

/// Signature for callbacks that move focus into the active content area.
typedef ContentFocusCallback = bool Function();

/// Provides registration hooks so screens can expose their preferred focus
/// target to the main shell (top navigation).
class ContentFocusProvider extends InheritedWidget {
  const ContentFocusProvider({
    super.key,
    required this.registerFocusCallback,
    required this.unregisterFocusCallback,
    required super.child,
  });

  final int Function(ContentFocusCallback callback) registerFocusCallback;
  final void Function(int token) unregisterFocusCallback;

  static ContentFocusProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ContentFocusProvider>();
  }

  static ContentFocusProvider? maybeOf(BuildContext context) {
    final element = context.getElementForInheritedWidgetOfExactType<ContentFocusProvider>();
    return element?.widget as ContentFocusProvider?;
  }

  @override
  bool updateShouldNotify(covariant ContentFocusProvider oldWidget) => false;
}

/// Helper mixin for screens that want to cooperate with the shell's focus
/// management. Implement [handleContentFocusRequest] to move focus to the first
/// meaningful control on the screen when requested.
mixin ContentFocusRegistrant<T extends StatefulWidget> on State<T> {
  int? _focusRegistrationToken;

  /// Called whenever the shell needs this screen to move focus into its
  /// primary content area. Return true if a focus target was found.
  bool handleContentFocusRequest();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final provider = ContentFocusProvider.of(context);
    if (provider == null) return;
    if (_focusRegistrationToken != null) {
      provider.unregisterFocusCallback(_focusRegistrationToken!);
    }
    _focusRegistrationToken =
        provider.registerFocusCallback(_onContentFocusRequested);
  }

  bool _onContentFocusRequested() {
    if (!mounted) return false;
    return handleContentFocusRequest();
  }

  @override
  void dispose() {
    final provider = ContentFocusProvider.maybeOf(context);
    final token = _focusRegistrationToken;
    if (provider != null && token != null) {
      provider.unregisterFocusCallback(token);
    }
    super.dispose();
  }
}
