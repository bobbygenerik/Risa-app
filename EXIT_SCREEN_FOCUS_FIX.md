# Exit Screen Focus Fix

## Problem
The "Go Back" and "Exit App" buttons on the Exit Screen were not showing any visual focus indicator when navigated to using the D-pad/keyboard.

## Root Cause
The buttons (`BrandSecondaryButton` and `BrandPrimaryButton`) were wrapped in a `Focus` widget.
```dart
Focus(
  focusNode: _backButtonFocus,
  onKeyEvent: ...,
  child: BrandSecondaryButton(
    // ...
  ),
)
```
The `FocusNode` `_backButtonFocus` was attached to the **parent** `Focus` widget. The `BrandSecondaryButton` (which uses `FocusableActionDetector` internally) did not receive this focus node (or any focus node), so it likely created its own internal node. However, since the parent `Focus` widget captured the focus, the button's internal node never received focus, and thus its `_focused` state never updated to `true` to trigger the visual highlight.

Additionally, the `onKeyEvent` logic in the parent `Focus` widget was manually handling Left/Right navigation and Enter/Select activation, which duplicated functionality already present in `BrandButton` and Flutter's default focus traversal.

## Solution
Removed the wrapping `Focus` widgets and passed the `focusNode` directly to the buttons.

```dart
BrandSecondaryButton(
  focusNode: _backButtonFocus,
  onPressed: () => context.go('/home'),
  label: 'Go Back',
),
```

## Result
- The `BrandButton` widgets now directly own the `FocusNode`.
- When `_backButtonFocus.requestFocus()` is called, the button receives focus.
- The button's internal `onFocusChange` callback fires, updating its visual state (highlight/scale).
- Default focus traversal (ReadingOrder) automatically handles Left/Right navigation between the buttons in the Row.
- The buttons' built-in `Shortcuts` handle Enter/Select/Space keys to trigger `onPressed`.
