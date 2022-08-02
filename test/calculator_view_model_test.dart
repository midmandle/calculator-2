import 'package:calculator_2/calculator_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late CalculatorViewModel viewModel;

  setUp(() {
    viewModel = CalculatorViewModel();
  });

  test('display value initially returns string 0', () {
    expect(viewModel.displayValue, equals('0'));
  });

  test('handling a number sets the display value to that number', () {
    viewModel.handleButtonPress('3');

    expect(viewModel.displayValue, equals('3'));
  });

  test(
      'handling a second number sets the display value to those numbers concatenated',
      () {
    viewModel.handleButtonPress('3');
    viewModel.handleButtonPress('4');

    expect(viewModel.displayValue, equals('34'));
  });

  test('handling an equals operator should evaluate the calculation', () {
    viewModel.handleButtonPress('=');

    expect(viewModel.displayValue, equals('0'));
  });

  test(
      'handling an equals operator with a single number should evaluate the calculation',
      () {
    viewModel.handleButtonPress('1');
    viewModel.handleButtonPress('+');
    viewModel.handleButtonPress('=');

    expect(viewModel.displayValue, equals('1'));
  });

  test(
      'handling an minus operator with a single number should evaluate the calculation',
      () {
    viewModel.handleButtonPress('1');
    viewModel.handleButtonPress('-');
    viewModel.handleButtonPress('=');

    expect(viewModel.displayValue, equals('1'));
  });

  test(
      'handling a minus operator with a single number should evaluate the calculation',
      () {
    viewModel.handleButtonPress('1');
    viewModel.handleButtonPress('-');
    viewModel.handleButtonPress('=');

    expect(viewModel.displayValue, equals('1'));
  });

  test(
      'handling a multiply operator with a single number should evaluate the calculation',
      () {
    viewModel.handleButtonPress('1');
    viewModel.handleButtonPress('*');
    viewModel.handleButtonPress('=');

    expect(viewModel.displayValue, equals('1'));
  });
}
