import 'package:calculator_2/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Pressing 1 + 1 displays a 2", (WidgetTester tester) async {
    Widget testableWidget = createTestWidget(const Calculator());
    await tester.pumpWidget(testableWidget);

    await tester.tap(find.text("1"));
    await tester.tap(find.text("+"));
    await tester.tap(find.text("1"));
    await tester.tap(find.text("="));

    expect(find.text("2"), findsOneWidget);
  });
}

Widget createTestWidget(Widget widget) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(body: widget),
  );
}
