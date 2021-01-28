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
    expect(100.0.percent(), '100,00%');
    expect(0.0.percent(), '0,00%');
    expect(0.01.percent(), '0,01%');
    expect(5.55.percent(), '5,55%');
    expect(5.5.percent(), '5,50%');
    expect(2147.41.percent(), '2.147,41%');
  });
}
