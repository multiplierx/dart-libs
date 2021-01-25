library multiplier_colors;

import 'package:flutter/material.dart';

abstract class MultiplierColors {
  static final black = Color(0xFF0A0A0A);
  static final purpleMetalic = Color(0xFF8673A1);
  static final lightOrange = Color(0xFFFFA420);
  static final intenseOrange = Color(0xFFEC7C26);
  static final fernGreen = Color(0xFF3D642D);
  static final signalizationBLue = Color(0xFF063971);
  static final celestialBlue = Color(0xFF2271B3);
  static final turquoiseBlue = Color(0xFF3F888F);
  static final rubyRed = Color(0xFF9B111E);
  static final magenta = Color(0xFFCF3476);
  static final pink = Color(0xFFE63244);
  static final platinumGray = Color(0xFF7F7679);

  static List<Color> toList() => [
        black,
        purpleMetalic,
        lightOrange,
        intenseOrange,
        fernGreen,
        signalizationBLue,
        celestialBlue,
        turquoiseBlue,
        rubyRed,
        magenta,
        pink,
        platinumGray,
      ];
}
