import 'package:calculator_2/calculator.dart';
import 'package:calculator_2/number_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'number_button_test.mocks.dart';

@GenerateMocks([CalculatorViewModel])
void main() {
  testWidgets('Display a number 1 button', (WidgetTester tester) async {
    final mockCalculatorViewModel = MockCalculatorViewModel();

    final testableWidget = createTestWidget(NumberButton(
        value: "1", onClickHandler: mockCalculatorViewModel.handleButtonPress));
    await tester.pumpWidget(testableWidget);

    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('displays the value on the button', (WidgetTester tester) async {
    final mockCalculatorViewModel = MockCalculatorViewModel();

    final testableWidget = createTestWidget(NumberButton(
        value: "2", onClickHandler: mockCalculatorViewModel.handleButtonPress));
    await tester.pumpWidget(testableWidget);

    expect(find.text('2'), findsOneWidget);
  });

  testWidgets('report the value when clicked', (WidgetTester tester) async {
    final mockCalculatorViewModel = MockCalculatorViewModel();

    final testableWidget = createTestWidget(NumberButton(
        value: "2", onClickHandler: mockCalculatorViewModel.handleButtonPress));
    await tester.pumpWidget(testableWidget);
    await tester.tap(find.text("2"));

    verify(mockCalculatorViewModel.handleButtonPress(any));
  });

  testWidgets('report the value 2 when clicked', (WidgetTester tester) async {
    final mockCalculatorViewModel = MockCalculatorViewModel();

    final testableWidget = createTestWidget(NumberButton(
        value: "2", onClickHandler: mockCalculatorViewModel.handleButtonPress));
    await tester.pumpWidget(testableWidget);
    await tester.tap(find.text("2"));

    verify(mockCalculatorViewModel.handleButtonPress("2"));
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
