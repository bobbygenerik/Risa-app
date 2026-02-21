# Palette's Journal

## 2025-05-15 - Explicit Focus Handling for Split Layouts
**Learning:** Relying on default focus traversal or `FocusScope` behavior in complex split-pane layouts (sidebar + content) is unreliable, especially when the content contains input fields that might trap focus or consume keys. Explicit `Focus` wrappers with `onKeyEvent` handlers are necessary to ensure consistent "Back" navigation (Left Arrow) from content to sidebar.
**Action:** Always wrap content panes in master-detail/split-view layouts with a dedicated `Focus` widget that explicitly handles escape/back navigation keys, rather than assuming the focus traversal system will find the sidebar.

## 2025-05-23 - Confirmation for Destructive Settings Actions
**Learning:** Immediate execution of destructive actions (like clearing EPG data or caches) in Settings can lead to accidental data loss and feels unpolished.
**Action:** Always wrap destructive actions in a confirmation dialog using `AppDialog` and `AppDialogButton`, ensuring consistent UI and safety.
