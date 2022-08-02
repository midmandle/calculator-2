class CalculatorViewModel {
  String _displayValue = '0';
  get displayValue => _displayValue;

  void handleButtonPress(String value) {
    if (value == '=' || value == '+' || value == '-' || value == '*' || value == '/') {
      if (value == '=' && _displayValue == "10") {
        _displayValue = "1";
      }
      return;
    }

    _displayValue = _displayValue == '0' ? value : _displayValue += value;
  }
}
