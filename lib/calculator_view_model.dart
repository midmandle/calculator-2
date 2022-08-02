class CalculatorViewModel {
  String _displayValue = '0';
  get displayValue => _displayValue;

  void handleButtonPress(String value) {
    _displayValue = value;
  }
}
