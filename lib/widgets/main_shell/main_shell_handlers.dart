part of '../main_shell.dart';

extension MainShellHandlers on _MainShellState {
void _handleBackNavigation() {
  final location = GoRouterState.of(context).uri.path;
  final lastLocation = _lastLocation;

  // Prevent rapid back button presses
  final now = DateTime.now();
  if (_lastBackPress != null &&
      now.difference(_lastBackPress!).inMilliseconds < 500) {
    debugLog('Back navigation debounced (location: $location)');
    return;
  }
  _lastBackPress = now;

  // FIX: Skip if another PopScope just triggered navigation (within 200ms)
  // This prevents double-firing where a screen's PopScope goes to /home,
  // then MainShell sees /home and immediately goes to /exit
  if (_lastNavTime != null &&
      now.difference(_lastNavTime!).inMilliseconds < 200) {
    debugLog('MainShell back nav: skipped (screen PopScope just navigated)');
    return;
  }

  debugLog('MainShell back nav: location=$location, last=$lastLocation');

  // Settings screen: go back to home
  if (location == '/settings' ||
      (lastLocation != null && lastLocation.startsWith('/settings'))) {
    debugLog('MainShell back nav: handling settings -> home');
    _lastNavTime = DateTime.now();
    context.go('/home');
    return;
  }

  // Player screen: go back to home (or let PopScope handle)
  if (location == '/player') {
    debugLog('MainShell back nav: player screen - letting PopScope handle');
    // Don't navigate here, let the PopScope in EnhancedVideoPlayerScreen handle it
    return;
  }

  // On home screen: exit directly
  if (location == '/home') {
    debugLog('MainShell back nav: back on home - going to /exit');
    final channelProvider = context.read<ChannelProvider>();
    if (channelProvider.isLoading) {
      showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Playlist still saving'),
            content: const Text(
                'Saving is still in progress. Leaving now may interrupt it.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Stay'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Exit'),
              ),
            ],
          );
        },
      ).then((leave) {
        if (leave == true && mounted) {
          context.go('/exit');
        }
      });
    } else {
      context.go('/exit');
    }
    return;
  }

  // Any other screen: go to home
  debugLog('MainShell back nav: handling $location -> home');
  _lastNavTime = DateTime.now();
  context.go('/home');
}

void _showSearchDialog() {
  context.go('/search');
}

void _handleRouteChange() {
  if (!mounted) return;
  final location = _routeInfoProvider?.value.uri.toString();
  if (location == null || location == _lastLocation) return;
  _lastLocation = location;
  _lastNavTime = DateTime.now(); // Track when navigation occurred
  _sidebarKey.currentState?.collapse();

  // Restore focus to content when route changes (e.g. returning from player)
  // Use post-frame callback to allow new route to build and register focus
  WidgetsBinding.instance.addPostFrameCallback((_) {
    if (mounted) {
      _requestContentFocus();
    }
  });

  if (location.startsWith('/settings') || location.startsWith('/player')) {
    PaintingBinding.instance.imageCache.clear();
    try {
      PaintingBinding.instance.imageCache.clearLiveImages();
    } catch (_) {
      // Ignore file deletion errors
    }
  }
}

void _setNavFocusRequester(bool Function()? requester) {
  _navFocusRequester = requester;
}

int _registerContentFocusCallback(ContentFocusCallback callback) {
  final token = ++_nextFocusToken;
  _contentFocusCallback = callback;
  _activeFocusToken = token;
  debugLog('content_focus: Shell registered focus callback token=$token');
  // Don't auto-focus content - let the navbar keep focus
  // User can press down arrow to focus content
  return token;
}

void _unregisterContentFocusCallback(int token) {
  if (_activeFocusToken == token) {
    _activeFocusToken = null;
    _contentFocusCallback = null;
    debugLog('content_focus: Shell unregistered focus callback token=$token');
  }
}

bool _requestContentFocus() {
  debugLog('content_focus: Shell requesting content focus');
  _sidebarKey.currentState?.collapse();

  // Try callback first
  final callback = _contentFocusCallback;
  if (callback != null) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final handled = callback();
      debugLog('content_focus: Callback ${handled ? 'succeeded' : 'failed'}');
    });
    _updateShellState(() {}); // Collapse sidebar
    return true;
  }

  // Fallback to finding first focusable
  WidgetsBinding.instance.addPostFrameCallback((_) {
    if (!mounted) return;
    final handled = _focusFirstContentChild();
    debugLog('content_focus: Fallback ${handled ? 'succeeded' : 'failed'}');
  });
  _updateShellState(() {}); // Collapse sidebar
  return true;
}

bool _focusFirstContentChild() {
  if (_contentFocusScope.children.isEmpty) return false;
  final target = _findFirstFocusable(_contentFocusScope);
  if (target == null) return false;
  target.requestFocus();
  return true;
}

FocusNode? _findFirstFocusable(FocusNode node) {
  for (final child in node.children) {
    if (child.canRequestFocus && child.context != null) {
      return child;
    }
  }
  for (final child in node.children) {
    final candidate = _findFirstFocusable(child);
    if (candidate != null) return candidate;
  }
  return null;
}

bool _requestNavFocus() {
  final requester = _navFocusRequester;
  if (requester == null) {
    debugLog('content_focus: Nav focus requester unavailable');
    return false;
  }
  final handled = requester();
  debugLog(
      'content_focus: Nav focus request ${handled ? 'succeeded' : 'failed'}');
  return handled;
}

/// Handle global D-pad navigation for sidebar open/close and screen navigation
KeyEventResult _handleGlobalKeyEvent(FocusNode node, KeyEvent event) {
  if (event is! KeyDownEvent) return KeyEventResult.ignored;

  final currentFocus = FocusManager.instance.primaryFocus;

  if (event.logicalKey == LogicalKeyboardKey.goBack ||
      event.logicalKey == LogicalKeyboardKey.escape) {
    _handleBackNavigation();
    return KeyEventResult.handled;
  }

  // Handle left arrow key - open sidebar if focused on content at left edge
  if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
    // If we're focused on content (not sidebar), try to open sidebar
    if (currentFocus != null &&
        !_isFocusInSidebar(currentFocus) &&
        _isFocusInContent(currentFocus)) {
      final moved = currentFocus.focusInDirection(TraversalDirection.left);
      if (!moved) {
        _expandSidebarFromContent();
      }
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  // Handle right arrow key - close sidebar and focus content
  if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
    if (currentFocus != null && _isFocusInSidebar(currentFocus)) {
      _collapseSidebarToContent();
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  return KeyEventResult.ignored;
}

bool _isFocusInSidebar(FocusNode node) {
  // Check if the focus node is within the sidebar navigation
  FocusNode? current = node;
  while (current != null) {
    if (current == _contentFocusScope) return false;
    current = current.parent;
  }
  return true;
}

bool _isFocusInContent(FocusNode node) {
  return node == _contentFocusScope ||
      node.ancestors.contains(_contentFocusScope);
}

void _expandSidebarFromContent() {
  // Force focus to sidebar to trigger expansion
  _sidebarKey.currentState?.expand();
  _requestNavFocus();
}

void _collapseSidebarToContent() {
  // Request focus back to content
  _requestContentFocus();
}
}
