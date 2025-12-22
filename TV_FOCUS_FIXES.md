# TV Focus Fix Implementation

## Problem
When returning from the video player (or other full-screen routes) to the main shell (e.g., Live TV screen), the application focus was lost. No element was visually selected, requiring the user to press directional keys blindly to regain focus.

## Root Cause
The `MainShell` widget had a `_handleRouteChange` method that listened for route changes. When a route change occurred (like popping the player to return home), it unconditionally called `_globalFocusNode.requestFocus()`. 

The `_globalFocusNode` was attached to a parent `Focus` widget wrapping the entire `Scaffold`. Focusing this node moved focus *away* from the content (Live TV, Sidebar, etc.) to the container itself. Since the container has no visual focus indicator and doesn't handle navigation keys to pass focus down, the app appeared to lose focus.

## Solution
Modified `lib/widgets/main_shell.dart`:
- In `_handleRouteChange`, replaced `_globalFocusNode.requestFocus()` with `_requestContentFocus()`.
- Wrapped `_requestContentFocus()` in `WidgetsBinding.instance.addPostFrameCallback` to ensure the target screen is fully mounted and ready to accept focus after the transition.

## How it works
1. User presses Back from Video Player.
2. Route changes from `/player` to `/home`.
3. `MainShell._handleRouteChange` detects the change.
4. Instead of stealing focus to the global container, it calls `_requestContentFocus()`.
5. `_requestContentFocus()` invokes the callback registered by the active child (e.g., `LiveTVScreen`).
6. `LiveTVScreen.handleContentFocusRequest()` is called, which requests focus on the "Watch" button (or the first available element).
7. Focus is visually restored to the primary action on the screen.