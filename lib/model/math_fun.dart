class kalkulator {
  String input = '';
  String result = '0';
  String operator = '';
  double firstoperand = 0;

  void buttonPrassed(String value, Function(String) UpdateUI) {
    if (value == 'C') {
      input = '';
      result = '0';
      operator = '';
      firstoperand = 0;
    } else if (value == '+' || value == '-' || value == '*' || value == '/') {
      operator = value;
      firstoperand = double.parse(result);
      input = '';
    } else if (value == '=') {
      double secondoperand = double.parse(input);
      switch (operator) {
        case '+':
          result = (firstoperand + secondoperand).toString();
          break;
        case '-':
          result = (firstoperand - secondoperand).toString();
          break;
        case '*':
          result = (firstoperand * secondoperand).toString();
          break;
        case '/':
          result = secondoperand != 0
              ? (firstoperand / secondoperand).toString()
              : 'Error';
          break;
      }

      input = '';
    } else {
      input += value;
      result = input;
    }

    UpdateUI(result);
  }
}
