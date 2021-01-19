import 'package:flutter_test/flutter_test.dart';

import 'package:dart_utils/dart_utils.dart';

void main() {
  test('Debouncer test', () async {
    var durationA = Duration(seconds: 3);
    var durationB = Duration(seconds: 2);
    var debounce = DebouncerHelper(durationA);

    var foo = false;

    var function = () => foo = !foo;

    debounce.run(function);

    expect(foo, false);
    await Future.delayed(durationA);
    expect(foo, true);

    debounce.run(function);
    // delay inferior ao time do dobouncer, cai no cancel() e não executa a function
    await Future.delayed(durationB);
    debounce.run(function);
    expect(foo, true);
  });
}
