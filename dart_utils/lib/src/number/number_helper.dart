import 'dart:math';

extension NumberHelper on num {
  double chartInterval(double maxY) =>
      (((this + (maxY - 1)) / maxY).ceil() * maxY) / 10;

  num random() => Random().nextInt(this);

  int digitCount() => ceil().toString().split('').length;

  double roundUp() {
    bool _isDecimalPlace = false;
    List _digits = toString().split('');
    int _fisrtDigit = int.parse(_digits.first);

    for (var i = 0; i < _digits.length; i++) {
      if (_digits[i] == '.') _isDecimalPlace = true;
      _digits[i] = _isDecimalPlace ? '' : '0';
    }
    _digits[0] = (_fisrtDigit = _fisrtDigit + 1).toString();
    return double.parse(_digits.join());
  }

  double percentOf(num value) {
    if (value == 0) return 0;
    return (this / value) * 100;
  }
}
