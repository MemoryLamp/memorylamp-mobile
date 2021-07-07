import 'package:flutter/cupertino.dart';
import 'package:memory_lamp/theming/ml_colors.dart';

// These classes are not meant to be instantiated or extended;
// the ._() constructors  prevents instantiation and extension.

class MLTextStyles {
  MLTextStyles._();

  static TextStyle mutedBold = TextStyle(
    color: MLColors.primaryLight,
    fontSize: MLFontSize.medium,
    fontWeight: MLFontWeight.bold,
  );
}

class MLFontWeight {
  MLFontWeight._();

  static FontWeight thin = FontWeight.w100;
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight bold = FontWeight.w700;
}

class MLFontSize {
  MLFontSize._();

  static double small = 12;
  static double medium = 16;
  static double large = 20;
}
