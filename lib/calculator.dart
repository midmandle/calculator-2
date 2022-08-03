import 'package:calculator_2/number_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'calculator_view_model.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorViewModel>(
      builder: (context, viewModel, _) {
        return Column(
          children: [
            Row(
              children: [
                Text(viewModel.displayValue,
                    textDirection: TextDirection.ltr)
              ],
            ),
            Row(
              children: [
                NumberButton(
                  value: '/',
                  onClickHandler: viewModel.handleButtonPress,
                ),
              ],
            ),
            Row(
              children: [
                NumberButton(
                  value: '7',
                  onClickHandler: viewModel.handleButtonPress,
                ),
                NumberButton(
                  value: '8',
                  onClickHandler: viewModel.handleButtonPress,
                ),
                NumberButton(
                  value: '9',
                  onClickHandler: viewModel.handleButtonPress,
                ),
                NumberButton(
                  value: '*',
                  onClickHandler: viewModel.handleButtonPress,
                ),
              ],
            ),
            Row(
              children: [
                NumberButton(
                  value: '4',
                  onClickHandler: viewModel.handleButtonPress,
                ),
                NumberButton(
                  value: '5',
                  onClickHandler: viewModel.handleButtonPress,
                ),
                NumberButton(
                  value: '6',
                  onClickHandler: viewModel.handleButtonPress,
                ),
                NumberButton(
                  value: '-',
                  onClickHandler: viewModel.handleButtonPress,
                ),
              ],
            ),
            Row(
              children: [
                NumberButton(
                  value: '1',
                  onClickHandler: viewModel.handleButtonPress,
                ),
                NumberButton(
                  value: '2',
                  onClickHandler: viewModel.handleButtonPress,
                ),
                NumberButton(
                  value: '3',
                  onClickHandler: viewModel.handleButtonPress,
                ),
                NumberButton(
                  value: '+',
                  onClickHandler: viewModel.handleButtonPress,
                ),
              ],
            ),
            Row(
              children: [
                NumberButton(
                  value: '0',
                  onClickHandler: viewModel.handleButtonPress,
                ),
                NumberButton(
                  value: '=',
                  onClickHandler: viewModel.handleButtonPress,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
