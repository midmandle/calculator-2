import 'package:calculator_2/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

//@GenerateMocks([CalculatorViewModel])
void main() {
  testWidgets('Display buttons for numbers 0 - 9', (WidgetTester tester) async {
    final testableWidget = createTestWidget(const Calculator());
    await tester.pumpWidget(testableWidget);

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
    expect(find.text('6'), findsOneWidget);
    expect(find.text('7'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);
    expect(find.text('9'), findsOneWidget);
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
