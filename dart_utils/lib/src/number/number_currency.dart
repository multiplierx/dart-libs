const double billion = 1000000000;

const double million = 1000000;

const double kilo = 1000;

extension NumberCurrencyFormat on num {
  String numberCurrencyFormat(double number) {
    String resultNumber;
    String symbol;
    if (number >= billion) {
      resultNumber = (number / billion).toStringAsFixed(1);
      symbol = 'B';
    } else if (number >= million) {
      resultNumber = (number / million).toStringAsFixed(1);
      symbol = 'M';
    } else if (number >= kilo) {
      resultNumber = (number / kilo).toStringAsFixed(1);
      symbol = 'K';
    } else {
      resultNumber = number.toStringAsFixed(1);
      symbol = '';
    }

    if (resultNumber.endsWith('.0')) {
      resultNumber = resultNumber.substring(0, resultNumber.length - 2);
    }

    return resultNumber + symbol;
  }
}
