import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:increment_counter_package/src/ui/increment_counter/pages/increment_counter_page.dart';

void main() {
  // Create a MaterialApp to test.
  Widget _makeTestable(Widget widget) => MaterialApp(home: widget);
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Create the widget to test.
    const widget = IncrementCounterPage(title: 'IncrementCounterPage Test');

    // Build our app and trigger a frame.
    await tester.pumpWidget(_makeTestable(widget));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
  });
}
