import 'package:calculator_2/number_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calculator_2/main.dart';

void main() {
  testWidgets('Display a number 1 button', (WidgetTester tester) async {
    await tester.pumpWidget(const NumberButton(value: "1",));

    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('displays the value on the button', (WidgetTester tester) async {
    await tester.pumpWidget(const NumberButton(value: '2'));

    expect(find.text('2'), findsOneWidget);
  });
}
