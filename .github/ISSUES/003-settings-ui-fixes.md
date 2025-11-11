# Settings UI fixes (summary + actionable checklist)

Summary

- `SETTINGS_UI_FIXES_NEEDED.md` in the repo outlines several UI and focus/navigation issues in the Settings screens and related components. These cause poor experience on Android TV / remote control and include layout, focus, and field behavior problems.

Key issues

- TV/remote navigation: some entries do not properly receive focus or respond to `select/enter` events.
- Editable fields: text inputs sometimes trigger on-screen keyboard or lose focus unexpectedly.
- Accessibility & readability: inconsistent text sizes and color contrast in dark mode.
- Form fields: deprecated `value`/`textScaleFactor` usages noted; needs modernization.

Actionable checklist

- [ ] Audit `lib/screens/settings_screen.dart` and identify focusable controls that require `Focus` wrappers or `onKeyEvent` handlers.
- [ ] Replace deprecated `value` with `initialValue` for form fields where applicable.
- [ ] Ensure editable text fields are guarded for TV (readOnly by default, toggle editable on Select/Enter) — re-use pattern from `edit_profile_screen.dart`.
- [ ] Fix color contrast and textScale usage (prefer `textScaler` per latest SDK guidance).
- [ ] Add a small accessibility smoke test (manual checklist) to validate focus traversal on a TV emulator or device.

Acceptance criteria

- Settings screen is navigable via remote/keyboard with expected Select/Enter behavior.
- No deprecated usages remain (for the items above).
- UI passes basic contrast/readability checks.

Estimated effort

- 1-2 days for audit + fixes and testing on an Android TV emulator.

Labels: settings, ui, accessibility, tv
