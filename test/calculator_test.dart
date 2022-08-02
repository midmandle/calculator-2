import 'package:calculator_2/calculator.dart';
import 'package:calculator_2/calculator_view_model.dart';
import 'package:calculator_2/number_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'calculator_test.mocks.dart';

@GenerateMocks([CalculatorViewModel])
void main() {
  testWidgets('Display buttons for numbers 0 - 9', (WidgetTester tester) async {
    var mockedCalculatorViewModel = MockCalculatorViewModel();
    when(mockedCalculatorViewModel.displayValue).thenReturn('0');

    final testableWidget =
        createTestWidget(Calculator(viewModel: mockedCalculatorViewModel));
    await tester.pumpWidget(testableWidget);

    var zeroButton = find.widgetWithText(NumberButton, '0');
    expect(zeroButton, findsOneWidget);
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

  testWidgets('Display operator buttons', (WidgetTester tester) async {
    var mockedCalculatorViewModel = MockCalculatorViewModel();
    when(mockedCalculatorViewModel.displayValue).thenReturn('0');

    final testableWidget =
        createTestWidget(Calculator(viewModel: mockedCalculatorViewModel));
    await tester.pumpWidget(testableWidget);

    expect(find.text('+'), findsOneWidget);
    expect(find.text('-'), findsOneWidget);
    expect(find.text('/'), findsOneWidget);
    expect(find.text('*'), findsOneWidget);
    expect(find.text('='), findsOneWidget);
  });

  testWidgets('Display the result of a calculation',
      (WidgetTester tester) async {
    var mockedCalculatorViewModel = MockCalculatorViewModel();
    when(mockedCalculatorViewModel.displayValue).thenReturn('12');

    final testableWidget =
        createTestWidget(Calculator(viewModel: mockedCalculatorViewModel));
    await tester.pumpWidget(testableWidget);

    expect(find.text('12'), findsOneWidget);
  });

  testWidgets('Clicking number 1 adds it to the calculation',
      (WidgetTester tester) async {
    var mockedCalculatorViewModel = MockCalculatorViewModel();
    when(mockedCalculatorViewModel.displayValue).thenReturn('0');

    final testableWidget =
        createTestWidget(Calculator(viewModel: mockedCalculatorViewModel));
    await tester.pumpWidget(testableWidget);

    await tester.tap(find.text('1'));

    verify(mockedCalculatorViewModel.handleButtonPress('1'));
  });

  testWidgets('Clicking minus operator adds it to the calculation',
      (WidgetTester tester) async {
    var mockedCalculatorViewModel = MockCalculatorViewModel();
    when(mockedCalculatorViewModel.displayValue).thenReturn('0');

    final testableWidget =
        createTestWidget(Calculator(viewModel: mockedCalculatorViewModel));
    await tester.pumpWidget(testableWidget);

    await tester.tap(find.text('-'));

    verify(mockedCalculatorViewModel.handleButtonPress('-'));
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
