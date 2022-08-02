import 'package:calculator_2/calculator_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('display value initially returns string 0', () {
    final viewModel = CalculatorViewModel();
    expect(viewModel.displayValue, equals('0'));
  });

  test('handling a number sets the display value to that number', () {
    final viewModel = CalculatorViewModel();

    viewModel.handleButtonPress('3');

    expect(viewModel.displayValue, equals('3'));
  });

  test(
      'handling a second number sets the display value to those numbers concatenated',
      () {
    final viewModel = CalculatorViewModel();

    viewModel.handleButtonPress('3');
    viewModel.handleButtonPress('4');

    expect(viewModel.displayValue, equals('34'));
  });

  test(
      'handling an equals operator should evaluate the calculation',
          () {
        final viewModel = CalculatorViewModel();

        viewModel.handleButtonPress('=');

        expect(viewModel.displayValue, equals('0'));
      });
}
