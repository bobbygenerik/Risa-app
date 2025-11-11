# Deprecation cleanup: onKey / RawKeyDownEvent and related

Summary

- The codebase contains many uses of deprecated keyboard APIs introduced by recent Flutter SDK releases:
  - `onKey` (deprecated) → should use `onKeyEvent`.
  - `RawKeyDownEvent` / `RawKeyEvent` (deprecated) → should use `KeyDownEvent` / `KeyEvent`.
- Automated token-level replacements caused syntax errors in at least one file (`lib/screens/edit_profile_screen.dart`) when applied naively.

Scope

- Detected occurrences (examples):
  - `lib/widgets/app_shell.dart`
  - `lib/screens/settings_screen.dart`
  - `lib/screens/search_screen.dart`
  - `lib/screens/playlist_editor_screen.dart`
  - `lib/screens/playlist_login_screen.dart`
  - `lib/screens/edit_profile_screen.dart` (already repaired)
  - and others. Use `flutter analyze` or text search for `onKey` / `RawKeyDownEvent`.

Recommended approach

1. File-by-file migration (safe):
   - For each file, open and migrate handlers from:
     - `onKey: (node, event) { if (event is RawKeyDownEvent) { ... } }`
     - to `onKeyEvent: (node, event) => _handleKey(node, event, () { ... })` where `_handleKey` checks for `KeyDownEvent`.
   - Preserve existing semantics for select/enter/back/arrow keys by mapping `event.logicalKey` accordingly.
   - Keep changes small and run `flutter analyze` after each file.

2. Helper utility: create `lib/utils/tv_focus_helper.dart` (or extend existing utils) exposing:
   - `KeyEventResult handleKeyDown(FocusNode node, KeyEvent event, VoidCallback onActivate)`
   - This reduces repeated boilerplate and reduces risk of copy-paste errors.

3. Tests: add a couple of unit/widget tests for focus behavior (optional but recommended).

Acceptance criteria

- No remaining uses of deprecated `onKey` or `RawKeyDownEvent` in high-impact UI files.
- `flutter analyze` shows deprecation items resolved for these APIs.

Estimated effort

- 1-2 days for manual, careful migration (depending on how many files use TV/remote key handling).

Labels: deprecation, tv, focus, low-risk
