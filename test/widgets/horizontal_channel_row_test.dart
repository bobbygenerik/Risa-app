import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:iptv_player/widgets/horizontal_channel_row.dart';

void main() {
  testWidgets('HorizontalChannelRow renders items', (WidgetTester tester) async {
    final controller = ScrollController();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SizedBox(
            height: 200,
            child: HorizontalChannelRow(
              itemCount: 20,
              itemBuilder: (context, index) => Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Item $index'),
              ),
              controller: controller,
              padding: EdgeInsets.zero,
              cardGap: 10,
              cardWidth: 100,
              sectionKey: 'test_section',
            ),
          ),
        ),
      ),
    );

    expect(find.text('Item 0'), findsOneWidget);
    expect(find.text('Item 1'), findsOneWidget);
    // Item 19 shouldn't be visible yet
    expect(find.text('Item 19'), findsNothing);
  });

  testWidgets('HorizontalChannelRow calls onLoadMore when scrolled to end', (WidgetTester tester) async {
    final controller = ScrollController();
    bool loadMoreCalled = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: 400, // limited width to force scrolling
            height: 200,
            child: HorizontalChannelRow(
              itemCount: 20,
              itemBuilder: (context, index) => SizedBox(
                width: 100,
                height: 100,
                child: Text('Item $index'),
              ),
              controller: controller,
              padding: EdgeInsets.zero,
              cardGap: 10,
              cardWidth: 100,
              sectionKey: 'test_section',
              onLoadMore: () {
                loadMoreCalled = true;
              },
            ),
          ),
        ),
      ),
    );

    // Initial state
    expect(loadMoreCalled, isFalse);

    // Scroll to the end
    controller.jumpTo(controller.position.maxScrollExtent);
    await tester.pumpAndSettle();

    // Verify callback
    expect(loadMoreCalled, isTrue);
  });
}
