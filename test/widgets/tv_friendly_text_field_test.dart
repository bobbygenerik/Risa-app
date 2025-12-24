import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/widgets/tv_friendly_text_field.dart';

void main() {
  testWidgets(
      'TVFriendlyTextField starts in read-only mode and toggles edit mode',
      (WidgetTester tester) async {
    final controller = TextEditingController();
    final focusNode = FocusNode();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: TVFriendlyTextField(
            controller: controller,
            focusNode: focusNode,
          ),
        ),
      ),
    );

    // Initial state: not editing, TextField should be read-only
    expect(find.byType(TextField), findsOneWidget);
    TextField textField = tester.widget(find.byType(TextField));
    expect(textField.readOnly, isTrue);

    // Focus the widget
    focusNode.requestFocus();
    await tester.pump();

    // Send SELECT key to enter edit mode
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pump();

    // Should now be editing
    textField = tester.widget(find.byType(TextField));
    expect(textField.readOnly, isFalse);

    // Send BACK key to exit edit mode
    await tester.sendKeyEvent(LogicalKeyboardKey.escape);
    await tester.pump();

    // Should be read-only again
    textField = tester.widget(find.byType(TextField));
    expect(textField.readOnly, isTrue);

    // Focus should still be on our node (or handled by wrapper) but we check if we didn't crash
  });
}
