# Settings UI Fixes - Status Report

## ✅ Completed Fixes

### 1. Settings Sidebar Navigation to Content
**Issue:** Pressing RIGHT on settings sidebar moved to next tab instead of content
**Fix:** Changed from `scope.nextFocus()` to `node.unfocus()` to release focus properly
**File:** `lib/screens/settings_screen.dart` line ~288

### 2. Visual Separation Between Sidebars  
**Issue:** Main sidebar and settings sidebar blend together
**Fixes Applied:**
- Settings sidebar background changed from `0xFF141414` to `0xFF1A1A1A` (slightly lighter)
- Added left border divider with `Container(width: 1, color: AppTheme.divider.withOpacity(0.5))`
**File:** `lib/screens/settings_screen.dart` lines ~226, ~237

## 🚧 Critical Issues Requiring Complete Redesign

### 3. General Settings Tab - Playlist Input UI
**Problems:**
- No visual indicator for which tab (M3U vs Xtream) is selected
- Blue OutlineInputBorder extends beyond text field bounds
- Inconsistent focus styling with rest of UI
- Text fields don't show keyboard on focus
- App crashes when backing out of text fields
- No proper back navigation

**Required Solution:**
Complete redesign of `_buildGeneralSettings()` method (lines 850-1155) with:

#### A. Tab-Style Input Method Selector
```dart
// Add state variable (already done):
int _playlistInputMethod = 0; // 0 = M3U, 1 = Xtream

// Create visual tab selector:
Row(
  children: [
    Expanded(
      child: GestureDetector/Focus widget for M3U tab
        - Blue background when selected
        - Gray when not selected  
        - Icon + "M3U URL" label
    ),
    Expanded(
      child: GestureDetector/Focus widget for Xtream tab
        - Blue background when selected
        - Gray when not selected
        - Icon + "Xtream Codes" label
    ),
  ],
)
```

#### B. TV-Friendly Text Fields
Create new `_buildTVFriendlyTextField()` helper method:
- **Container-based border** (not OutlineInputBorder) with exact bounds
- Border changes color on focus (blue) vs unfocused (gray)
- **Read-only by default** - requires ENTER/SELECT to enter edit mode
- Shows keyboard icon when focused but not editing
- Shows edit icon when in edit mode
- **ESC/BACK key exits edit mode** without crashing
- Prevents auto-keyboard popup on Android TV

#### C. Conditional Content Display
```dart
if (_playlistInputMethod == 0) ...[
  // M3U URL field + Load button
],
if (_playlistInputMethod == 1) ...[
  // Xtream server, username, password fields
  // Clear + Load buttons
],
```

###4. Home Screen Navigation
**Issue:** RIGHT arrow from Live TV tab doesn't focus "Load Playlist" button
**Root Cause:** `_requestFirstSecondaryOrContentFocus()` in app_shell.dart doesn't properly call `requestFirstContentFocus()` on home_screen.dart
**Location:** `lib/widgets/app_shell.dart` lines ~130-170
**Fix Needed:** Ensure the focus priority system calls home_screen's `requestFirstContentFocus()` method

### 5. Back Navigation Not Working
**Issue:** No back button functionality on playlist load screen  
**Cause:** Missing LEFT arrow key handler in General Settings content
**Fix Needed:** Add LEFT arrow handler to return focus to settings sidebar

### 6. Header Line Alignment
**Issue:** Settings sidebar pink header line should visually connect with top bar
**Current:** Both have 2px pink bottom border but don't appear connected
**Fix Needed:** Ensure both lines are exactly same height (2px), same color (AppTheme.accentPink), and aligned at same Y position

## Implementation Strategy

Given the complexity of the General Settings redesign, I recommend:

1. **Test current fixes first** - Settings sidebar navigation and visual separation
2. **Create the TV-Friendly text field widget** as a reusable component
3. **Redesign General Settings** with tab selector and new text fields
4. **Fix app_shell focus management** for Live TV → Load Playlist navigation  
5. **Add comprehensive keyboard handling** (BACK, ESC, LEFT arrow) throughout settings
6. **Test thoroughly** on Android TV hardware before committing

## Code Snippets for Remaining Work

### TV-Friendly TextField Widget (Reference Implementation)
```dart
Widget _buildTVFriendlyTextField({
  required TextEditingController controller,
  required FocusNode focusNode,
  required bool isEditable,
  required Function(bool) onEditableChange,
  required String label,
  String? hint,
  required IconData icon,
  bool obscureText = false,
}) {
  return Focus(
    focusNode: focusNode,
    onFocusChange: (hasFocus) {
      if (!hasFocus && isEditable) {
        onEditableChange(false);
      }
    },
    onKey: (node, event) {
      if (event is! RawKeyDownEvent) return KeyEventResult.ignored;
      final key = event.logicalKey;
      
      // ENTER/SELECT to start editing
      if (!isEditable && (key == LogicalKeyboardKey.select || 
          key == LogicalKeyboardKey.enter)) {
        onEditableChange(true);
        return KeyEventResult.handled;
      }
      
      // BACK/ESC to stop editing (prevents crash)
      if (isEditable && (key == LogicalKeyboardKey.escape || 
          key == LogicalKeyboardKey.goBack)) {
        onEditableChange(false);
        focusNode.requestFocus(); // Keep focus, just exit edit mode
        return KeyEventResult.handled;
      }
      
      return KeyEventResult.ignored;
    },
    child: Builder(
      builder: (context) {
        final isFocused = Focus.of(context).hasFocus;
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.radiusMd),
            border: Border.all(
              color: isFocused ? AppTheme.primaryBlue : AppTheme.divider,
              width: isFocused ? 2 : 1,
            ),
            color: isEditable ? AppTheme.cardBackground : Colors.transparent,
          ),
          child: TextField(
            controller: controller,
            readOnly: !isEditable,
            obscureText: obscureText,
            autofocus: false,
            decoration: InputDecoration(
              labelText: label,
              hintText: hint,
              prefixIcon: Icon(icon, color: isFocused ? AppTheme.primaryBlue : AppTheme.textSecondary),
              suffixIcon: isEditable 
                  ? Icon(Icons.edit, color: AppTheme.accentOrange, size: 16) 
                  : (isFocused ? Icon(Icons.keyboard, color: AppTheme.primaryBlue, size: 16) : null),
              border: InputBorder.none, // No default border, using Container border
              contentPadding: EdgeInsets.symmetric(horizontal: AppSizes.md, vertical: AppSizes.md),
            ),
          ),
        );
      },
    ),
  );
}
```

## Next Steps

1. Test the fixes I've already applied (sidebar navigation + visual separation)
2. Let me know if you want me to proceed with the complete General Settings redesign
3. Or provide specific priority for which issues to tackle next

The General Settings redesign is about 300 lines of code changes, so I wanted to check with you before proceeding with that large refactor.
