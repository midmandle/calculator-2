import 'package:calculator_2/number_button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Function(String value) placeholder = (value) {};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            NumberButton(
              value: '/',
              onClickHandler: placeholder,
            ),
          ],
        ),
        Row(
          children: [
            NumberButton(
              value: '7',
              onClickHandler: placeholder,
            ),
            NumberButton(
              value: '8',
              onClickHandler: placeholder,
            ),
            NumberButton(
              value: '9',
              onClickHandler: placeholder,
            ),
            NumberButton(
              value: '*',
              onClickHandler: placeholder,
            ),
          ],
        ),
        Row(
          children: [
            NumberButton(
              value: '4',
              onClickHandler: placeholder,
            ),
            NumberButton(
              value: '5',
              onClickHandler: placeholder,
            ),
            NumberButton(
              value: '6',
              onClickHandler: placeholder,
            ),
            NumberButton(
              value: '-',
              onClickHandler: placeholder,
            ),
          ],
        ),
        Row(
          children: [
            NumberButton(
              value: '1',
              onClickHandler: placeholder,
            ),
            NumberButton(
              value: '2',
              onClickHandler: placeholder,
            ),
            NumberButton(
              value: '3',
              onClickHandler: placeholder,
            ),
            NumberButton(
              value: '+',
              onClickHandler: placeholder,
            ),
          ],
        ),
        Row(
          children: [
            NumberButton(
              value: '0',
              onClickHandler: placeholder,
            ),
            NumberButton(
              value: '=',
              onClickHandler: placeholder,
            ),
          ],
        ),
      ],
    );
  }
}

class CalculatorViewModel {
  void handleButtonPress(String value) {}
}
