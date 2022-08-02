import 'package:calculator_2/calculator.dart';
import 'package:calculator_2/calculator_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Pressing 5 + 6 displays a 11", (WidgetTester tester) async {
    final viewModel = CalculatorViewModel();
    Widget testableWidget = createTestWidget(Calculator(
      viewModel: viewModel,
    ));
    await tester.pumpWidget(testableWidget);

    await tester.tap(find.text("5"));
    await tester.tap(find.text("+"));
    await tester.tap(find.text("6"));
    await tester.tap(find.text("="));

    expect(find.text("11"), findsOneWidget);
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
