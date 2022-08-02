import 'package:calculator_2/calculator_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('result initially returns string 0', () {
    final viewModel = CalculatorViewModel();
    expect(viewModel.result, equals('0'));
  });
  test('handling a number sets the display value to that number', () {
    final viewModel = CalculatorViewModel();

    viewModel.handleButtonPress('3');

    expect(viewModel.result, equals('3'));
  });
}
