import 'package:flutter/cupertino.dart';

import 'ml_colors.dart';

// the ._() constructors  prevents instantiation and extension.

class MLFont {
  MLFont._();

  static FontWeight extraLight = FontWeight.w200;
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
  static FontWeight extraBold = FontWeight.w800;
  static FontWeight black = FontWeight.w900;

  static double extraSmall = 9;
  static double small = 12;
  static double medium = 16;
  static double mediumLarge = 18;
  static double large = 20;

  // we can add some reusable TextStyle Widgets here so we can have a more uniform styling across the app
  static TextStyle get bannerText01 => TextStyle(
        color: MLColors.primary,
        fontSize: mediumLarge,
        fontWeight: semiBold,
      );
}
