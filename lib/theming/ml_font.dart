import 'package:flutter/cupertino.dart';
import 'package:memory_lamp/theming/ml_colors.dart';

// the ._() constructors  prevents instantiation and extension.

class MLFont {
  MLFont._();

  static FontWeight thin = FontWeight.w100;
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight bold = FontWeight.w700;

  static double extraSmall = 9;
  static double small = 12;
  static double medium = 16;
  static double large = 20;

  // some presets
  static TextStyle get mutedBold => TextStyle(
        color: MLColors.primaryLight,
        fontSize: medium,
        fontWeight: bold,
      );
}
