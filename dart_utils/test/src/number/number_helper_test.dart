import 'package:flutter_test/flutter_test.dart';
import 'package:dart_utils/dart_utils.dart';

void main() {
  test('Chart Interval', () {
    var chartIntervelValue = 15.0;

    expect(chartIntervelValue.chartInterval(chartIntervelValue), 3.0);
  });

  test('Random', () {
    var randomValue = 1500;

    expect(randomValue.random() <= randomValue, true);
  });

  test('Digit Counter', () {
    var valueCounter = 1234;

    expect(valueCounter.digitCount(), 4);
  });

  test('Round Up', () {
    var randomValue = 49999;

    expect(randomValue.roundUp(), 50000);
  });

  test('Percent Of Value', () {
    var randomValue = 100;

    expect(randomValue.percentOf(10), 1000);
  });
}
