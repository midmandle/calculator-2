import 'package:calculator_2/calculator_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('result initially returns string 0', () {
    final viewModel = CalculatorViewModel();
    expect(viewModel.result, equals('0'));
  });
}
