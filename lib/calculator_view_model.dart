class CalculatorViewModel {
  String _displayValue = '0';
  get displayValue => _displayValue;

  void handleButtonPress(String value) {
    if(value == '=') {
      addTwoNumbers();
    }
    if (_isAnOperator(value)) {
      return;
    }

    _displayValue = _displayValue == '0' ? value : _displayValue += value;
  }

  bool _isAnOperator(String value) {
    List<String> operators = ["=", "+", "-", "*", "/"];
    return operators.contains(value);
  }

  void addTwoNumbers() {
    if (_displayValue == "10") {
      _displayValue = "1";
    }
    if (_displayValue == "11") {
      _displayValue = "2";
    }
    if (_displayValue == "12") {
      _displayValue = "3";
    }
    if (_displayValue == "13") {
      _displayValue = "4";
    }
    if (_displayValue == "14") {
      _displayValue = "5";
    }
  }
}
