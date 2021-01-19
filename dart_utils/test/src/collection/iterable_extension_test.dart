import 'package:flutter_test/flutter_test.dart';

import 'package:dart_utils/dart_utils.dart';

void main() {
  test('chunk 2', () {
    var iterable = [0, 1, 2, 3, 4];

    expect(iterable.chunk(2), [
      [0, 1],
      [2, 3],
      [4],
    ]);
  });

  test('chunk -2', () {
    var iterable = [0, 1, 2, 3, 4];

    expect(
      () => iterable.chunk(-2),
      throwsA(isInstanceOf<InvalidRangeException>()),
    );
  });

  test('chunk 10', () {
    var iterable = [0, 1, 2, 3, 4];

    expect(
      iterable.chunk(10),
      [
        [0, 1, 2, 3, 4],
      ],
    );
  });

  test('chunk 0', () {
    var iterable = [0, 1, 2, 3, 4];

    expect(
      () => iterable.chunk(0),
      throwsA(isInstanceOf<InvalidRangeException>()),
    );
  });
}
