class CalculatorViewModel {
  String _displayValue = '0';
  get displayValue => _displayValue;

  void handleButtonPress(String value) {
    if (_displayValue == '0') {
      _displayValue = value;
    } else {
      _displayValue += value;
    }
  }
}
