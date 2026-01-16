# Palette's Journal

## 2025-02-23 - TV Interface Interactions
**Learning:** TV interfaces require explicit focus management. TextFields often "trap" focus if not carefully managed. Visual feedback for "read-only but focusable" vs "editable" states is critical for D-pad navigation.
**Action:** When working on TV apps, always implement "Back" navigation handlers (Left Arrow, Back Button) on input fields to prevent focus traps. Use clear visual indicators (icons/colors) to distinguish between "Focused" and "Editing" states.
