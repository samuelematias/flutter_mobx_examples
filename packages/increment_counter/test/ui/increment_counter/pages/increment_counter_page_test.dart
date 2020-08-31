import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:increment_counter_package/src/ui/increment_counter/pages/increment_counter_page.dart';

void main() {
  Widget _makeTestable(Widget widget) => MaterialApp(home: widget);

  group('IncrementCounterPage |', () {
    testWidgets('Counter increments smoke test', (WidgetTester tester) async {
      const widget = IncrementCounterPage(title: 'IncrementCounterPage Test');

      await tester.pumpWidget(_makeTestable(widget));

      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
  });
}
