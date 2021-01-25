import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:multiplier_colors/multiplier_colors.dart';

void main() {
  test('colors', () {
    final colors = MultiplierColors.toList();
    for (final color in colors) {
      expect(color, isInstanceOf<Color>());
    }
  });
}
