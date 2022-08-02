class CalculatorViewModel {
  String _displayValue = '0';
  get displayValue => _displayValue;

  void handleButtonPress(String value) {
    if(value == '=') {
      return;
    }

    if (value == '+') {
      return;
    }

    _displayValue = _displayValue == '0' ? value : _displayValue += value;
  }
}
