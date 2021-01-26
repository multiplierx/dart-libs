import 'package:flutter_test/flutter_test.dart';
import 'package:dart_utils/dart_utils.dart';

void main() {
  test('Format Currency', () {
    var thousand = 1500.toDouble();
    var hundredThousand = 150000.toDouble();
    var million = 1500000.toDouble();
    var billion = 15000000000.toDouble();
    var lessThousand = 150.toDouble();

    expect(thousand.numberCurrencyFormat(thousand), '1.5K');
    expect(hundredThousand.numberCurrencyFormat(hundredThousand), '150K');
    expect(million.numberCurrencyFormat(million), '1.5M');
    expect(billion.numberCurrencyFormat(billion), '15B');
    expect(lessThousand.numberCurrencyFormat(lessThousand), '150');
  });
}
