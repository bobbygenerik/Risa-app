import 'package:iptv_player/utils/debug_helper.dart';
import 'package:flutter/widgets.dart';

void _logContentFocus(String message) {
  debugLog('content_focus: $message');
}

/// Signature for callbacks that move focus into the active content area.
typedef ContentFocusCallback = bool Function();

/// Provides registration hooks so screens can expose their preferred focus
/// target to the main shell (top navigation).
class ContentFocusProvider extends InheritedWidget {
  const ContentFocusProvider({
    super.key,
    required this.registerFocusCallback,
    required this.unregisterFocusCallback,
    this.requestNavFocus,
    required super.child,
  });

  final int Function(ContentFocusCallback callback) registerFocusCallback;
  final void Function(int token) unregisterFocusCallback;
  final bool Function()? requestNavFocus;

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
  ContentFocusProvider? _registeredProvider;

  /// Called whenever the shell needs this screen to move focus into its
  /// primary content area. Return true if a focus target was found.
  bool handleContentFocusRequest();

  /// Request that the shell move focus back to the top navigation bar.
  bool requestNavigationFocus() {
    if (!mounted) return false;
    final provider = ContentFocusProvider.maybeOf(context);
    return provider?.requestNavFocus?.call() ?? false;
  }

  /// Override to provide a more descriptive label for focus debug logging.
  @protected
  String get focusDebugLabel => T.toString();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final provider = ContentFocusProvider.of(context);
    // If we were previously registered with a different provider (or none),
    // unregister before re-registering so we do not leak callbacks.
    if (_registeredProvider != null && _focusRegistrationToken != null) {
      _registeredProvider!.unregisterFocusCallback(_focusRegistrationToken!);
      _focusRegistrationToken = null;
      _registeredProvider = null;
    }
    if (provider == null) return;
    _focusRegistrationToken =
        provider.registerFocusCallback(_onContentFocusRequested);
    _registeredProvider = provider;
    _logContentFocus(
      'Registered content focus: $focusDebugLabel '
      '(token: $_focusRegistrationToken)',
    );
  }

  bool _onContentFocusRequested() {
    if (!mounted) return false;
    final handled = handleContentFocusRequest();
    _logContentFocus(
      'Focus request ${handled ? 'succeeded' : 'failed'} for '
      '$focusDebugLabel',
    );
    return handled;
  }

  @override
  void dispose() {
    final provider = _registeredProvider;
    final token = _focusRegistrationToken;
    if (provider != null && token != null) {
      provider.unregisterFocusCallback(token);
      _logContentFocus(
        'Unregistered content focus: $focusDebugLabel (token: $token)',
      );
    }
    _registeredProvider = null;
    _focusRegistrationToken = null;
    super.dispose();
  }
}

// No explicit UI elements in content_focus_provider.dart that require scaling. Confirmed for completeness.
