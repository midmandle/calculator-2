import 'package:calculator_2/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
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
      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
        body: widget
    ),
  );
}