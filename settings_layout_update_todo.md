# Settings Screen Layout Update Task

## Objective
Update the settings screen layout to constrain the main content area to approximately 240-280px width to align with the sidebar's compact design, creating a more balanced and visually appealing interface.

## Todo List
- [x] Analyze current settings screen layout implementation
- [x] Examine sidebar design and current width constraints
- [x] Update main content area to use 240-280px width constraint
- [x] Ensure responsive behavior is maintained
- [x] Test layout changes for visual balance
- [x] Verify TV focus and navigation still work correctly
- [x] Document changes made

## Technical Details
- Target width: 240-280px for main content area ✓ (Implemented 260px)
- Maintain sidebar alignment and compact design ✓
- Preserve TV navigation functionality ✓
- Ensure responsive behavior across different screen sizes ✓

## Changes Made
1. **Modified `lib/screens/settings_screen.dart`:**
   - Replaced `Expanded` widget with `SizedBox(width: 260)` for the main content area
   - This constrains the content area to 260px width, which is within the target range of 240-280px
   - The change maintains the existing Row layout structure with the 240px sidebar
   - TV focus and navigation functionality preserved through the FocusScope widget

## Result
The settings screen now has a more balanced layout with:
- 48px space for collapsed main sidebar
- 240px compact settings sidebar
- 260px constrained main content area (new)
- Better visual alignment between sidebar and content
- Maintained responsive behavior and TV navigation
