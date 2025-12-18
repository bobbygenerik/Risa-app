import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iptv_player/widgets/brand_text_field.dart';

/// A wrapper around BrandTextField that handles TV focus navigation logic
/// correctly. It implements a "Read-Only by default" paradigms where users
/// must strictly press Enter/Select to begin editing, and Back/Escape to
/// finish editing.
class TVFriendlyTextField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String? hintText;
  final IconData? prefixIcon;
  final bool obscureText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;

  const TVFriendlyTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.onChanged,
    this.onEditingComplete,
  });

  @override
  State<TVFriendlyTextField> createState() => _TVFriendlyTextFieldState();
}

class _TVFriendlyTextFieldState extends State<TVFriendlyTextField> {
  // We use a local state to track if we are currently "editing" (showing keyboard)
  // vs just "focused" (highlighted for navigation).
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    // Ensure we start in non-editing mode
    widget.focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_handleFocusChange);
    super.dispose();
  }

  void _handleFocusChange() {
    // If we lose focus, we must exit edit mode
    if (!widget.focusNode.hasFocus && _isEditing) {
      setState(() {
        _isEditing = false;
      });
    }
  }

  void _toggleEditMode(bool enable) {
    if (_isEditing == enable) return;
    
    setState(() {
      _isEditing = enable;
    });

    if (!enable) {
      // Just stopped editing: keep focus on this widget but hide keyboard
      widget.focusNode.requestFocus();
      FocusScope.of(context).unfocus(); // Hides keyboard implies we might lose focus, so we re-request?
      // Actually, we want to hide the soft keyboard. 
      // SystemChannels.textInput.invokeMethod('TextInput.hide');
      
      // Re-request focus to ensure we stay selected after keyboard closes
      Future.microtask(() {
        if (mounted) widget.focusNode.requestFocus();
      });
    } else {
      // Started editing
      widget.focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    // We wrap in a Focus widget that INTERCEPTS keys before the TextField sees them.
    // However, BrandTextField ALREADY has a Focus widget inside it if we pass a focusNode!
    // This was the bug: nesting Focus widgets with the SAME node causes a crash.
    //
    // SOLUTION:
    // We do NOT pass the focusNode to the BrandTextField as a parameter that wraps it in Focus.
    // Instead, we use BrandTextField purely for styling and rendering, and WE handle the Focus.
    // But BrandTextField's implementation uses the passed focusNode to wrap a Focus widget.
    // 
    // Let's look at BrandTextField implementation again:
    // It takes `focusNode` and wraps `TextField` in `Focus(focusNode: focusNode)`.
    // 
    // So to avoid the crash, we must NOT wrap BrandTextField in *another* Focus widget 
    // using the *same* node.
    //
    // However, we need to intercept keys *on* that focus node.
    // The `Focus` widget in `BrandTextField` exposes `onKeyEvent`? No, BrandTextField does NOT expose onKeyEvent.
    //
    // So we effectively have to reimplement the "Container with Focus" part here, 
    // or modify BrandTextField. Modifying BrandTextField is risky as it is used elsewhere.
    // 
    // Strategy:
    // We will use a `Focus` widget HERE, with the `widget.focusNode`.
    // We will pass `null` as the focusNode to `BrandTextField` so it doesn't create a conflicting Focus widget.
    // BUT `BrandTextField` uses `Focus.of(context).hasFocus` to style itself (border color).
    // If we wrap `BrandTextField`, the `Focus` is above it. Calls to `Focus.of(context)` inside BrandTextField
    // will look UP and find our Focus widget. So `hasFocus` will work!
    //
    // So:
    // TVFriendlyTextField -> Focus(node: widget.focusNode) -> BrandTextField(focusNode: null)
    
    return Focus(
      focusNode: widget.focusNode,
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        final key = event.logicalKey;

        // ENTER / SELECT: Toggle Edit Mode
        if (key == LogicalKeyboardKey.select || key == LogicalKeyboardKey.enter) {
          if (!_isEditing) {
            _toggleEditMode(true);
            return KeyEventResult.handled;
          }
          // If already editing, let the TextField handle Enter (e.g. submit) or we can capture it to stop editing?
          // Usually proper behavior is: Enter -> Submit/Done -> Stop Editing
          // For now let's allow it to propagate so `onSubmitted` works if we had it, 
          // or we can treat it as "Done".
          // Let's toggle OFF on second enter for now since we lack a "Submit" button separate actions.
          // toggleEditMode(false);
          // return KeyEventResult.handled;
          return KeyEventResult.ignored; // Let TextField consume it (newline or submit)
        }

        // BACK / ESCAPE: Cancel Edit Mode
        if (key == LogicalKeyboardKey.escape || key == LogicalKeyboardKey.goBack) {
          if (_isEditing) {
            _toggleEditMode(false);
            return KeyEventResult.handled; // STOP EVENT BUBBLING so app doesn't exit
          }
           // If not editing, let it bubble up (to Sidebar)
          return KeyEventResult.ignored; 
        }

        // NAVIGATION (Arrows)
        // Only verify navigation if NOT editing. If editing, arrows move cursor.
        if (!_isEditing) {
           if (key == LogicalKeyboardKey.arrowDown) {
             // Handle custom navigation if needed, or let FocusScope handle it
             return KeyEventResult.ignored;
           }
           if (key == LogicalKeyboardKey.arrowUp) {
             return KeyEventResult.ignored;
           }
           if (key == LogicalKeyboardKey.arrowLeft || key == LogicalKeyboardKey.arrowRight) {
             // Let settings screen or FocusScope handle moving to/from sidebar
             return KeyEventResult.ignored; 
           }
        }

        return KeyEventResult.ignored;
      },
      child: Builder(
        builder: (context) {
          // This Builder ensures that if we needed to access the Focus above, we can.
          // BrandTextField's build method checks `Focus.of(context).hasFocus`.
          // Since BrandTextField is a child of Focus, `Focus.of(brandContext)` will find our Focus.
          
          return BrandTextField(
            controller: widget.controller,
            focusNode: null, // CRITICAL: Do not double-attach the FocusNode!
            hintText: widget.hintText,
            prefixIcon: widget.prefixIcon,
            obscureText: widget.obscureText,
            readOnly: !_isEditing, // Only writable when in edit mode
            onChanged: widget.onChanged,
            // We want to show the "Edit" icon when we are focused but NOT editing
            // BrandTextField doesn't natively support a distinct "suffix icon" param for this state 
            // without modification, but we can rely on standard verified visual for now.
            // If strictly needed, we can wrap or modify BrandTextField later.
            // For now, the crash fix is the priority.
          );
        },
      ),
    );
  }
}
