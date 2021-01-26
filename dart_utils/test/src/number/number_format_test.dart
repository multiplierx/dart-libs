import 'package:flutter_test/flutter_test.dart';
import 'package:dart_utils/dart_utils.dart';

void main() {
  test('Number Format', () {
    var decimalFormat = 1500;

    expect(decimalFormat.decimal(), '1.500,00');
  });

  test('Number Format Currency', () {
    var currencyFormat = 1500;
    var nbsp = String.fromCharCode(0xa0);

    expect(currencyFormat.currency(), 'R\$' + nbsp + '1.500,00');
  });

  test('Percent Format', () {
    var percentFormat = 1000;

    expect(percentFormat.percent(), '1000%');
  });
}
