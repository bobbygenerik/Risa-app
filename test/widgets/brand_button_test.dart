import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/widgets/brand_button.dart';

void main() {
  testWidgets('BrandPrimaryButton shows loading spinner when isLoading is true', (WidgetTester tester) async {
    // Create button with isLoading=true
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: BrandPrimaryButton(
          label: 'Save',
          onPressed: () {},
          isLoading: true,
        ),
      ),
    ));

    // Verify loading spinner is present
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    // Verify label is not present or obscured
    expect(find.text('Save'), findsNothing);
  });

  testWidgets('BrandPrimaryButton is disabled when isDisabled is true', (WidgetTester tester) async {
    bool pressed = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: BrandPrimaryButton(
          label: 'Save',
          onPressed: () {
            pressed = true;
          },
          isDisabled: true,
        ),
      ),
    ));

    // Verify label is present
    expect(find.text('Save'), findsOneWidget);

    // Tap button
    await tester.tap(find.byType(BrandPrimaryButton));
    await tester.pumpAndSettle();

    // Verify onPressed was not called
    expect(pressed, isFalse);
  });

  testWidgets('BrandSecondaryButton shows loading spinner when isLoading is true', (WidgetTester tester) async {
    // Create button with isLoading=true
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: BrandSecondaryButton(
          label: 'Cancel',
          onPressed: () {},
          isLoading: true,
        ),
      ),
    ));

    // Verify loading spinner is present
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.text('Cancel'), findsNothing);
  });

  testWidgets('BrandSecondaryButton is disabled when isDisabled is true', (WidgetTester tester) async {
    bool pressed = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: BrandSecondaryButton(
          label: 'Cancel',
          onPressed: () {
            pressed = true;
          },
          isDisabled: true,
        ),
      ),
    ));

    // Verify label is present
    expect(find.text('Cancel'), findsOneWidget);

    // Tap button
    await tester.tap(find.byType(BrandSecondaryButton));
    await tester.pumpAndSettle();

    // Verify onPressed was not called
    expect(pressed, isFalse);
  });
}
