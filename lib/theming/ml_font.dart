import 'package:flutter/material.dart';

import 'ml_colors.dart';

// the ._() constructors  prevents instantiation and extension.

class MLFont {
  MLFont._();

  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;

  static const double extraSmall = 9;
  static const double small = 12;
  static const double medium = 16;
  static const double mediumLarge = 18;
  static const double large = 20;
  static const double extraLarge = 25;

  // we can add some reusable TextStyle Widgets here so we can have a more uniform styling across the app
  // the naming format is size-color-weight-style

  static const TextStyle extraSmallS = TextStyle(
    color: Colors.black,
    fontSize: extraSmall,
  );

  static const italic = TextStyle(
    fontStyle: FontStyle.italic,
  );

  static const TextStyle smallLight = TextStyle(
    fontSize: small,
    fontWeight: light,
  );

  static const TextStyle smallPrimaryBold = TextStyle(
    color: MLColors.primary,
    fontSize: small,
    fontWeight: bold,
  );

  static const TextStyle mediumS = TextStyle(
    fontSize: medium,
  );

  static const TextStyle mediumLargeS = TextStyle(
    fontSize: mediumLarge,
  );

  static const TextStyle mediumLargeWhiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: mediumLarge,
    fontWeight: semiBold,
  );

  static const TextStyle mediumPrimaryBold = TextStyle(
    color: MLColors.primary,
    fontSize: mediumLarge,
    fontWeight: bold,
  );

  static const TextStyle mediumWhite = TextStyle(
    color: Colors.white,
    fontSize: medium,
  );

  static const TextStyle whiteSemiBold = TextStyle(
    color: Colors.white,
    fontWeight: semiBold,
  );

  static const TextStyle extraLargeWhiteBold = TextStyle(
    color: Colors.white,
    fontSize: extraLarge,
    fontWeight: bold,
  );

  static const TextStyle smallWhite = TextStyle(
    color: Colors.white,
    fontSize: small,
  );

  static const TextStyle mediumWhiteLight = TextStyle(
    color: Colors.white,
    fontSize: medium,
    fontWeight: light,
  );

  static const TextStyle mediumSemiBold = TextStyle(
    fontSize: medium,
    fontWeight: semiBold,
  );

  static const TextStyle bannerText01 = TextStyle(
    color: MLColors.primary,
    fontSize: mediumLarge,
    fontWeight: semiBold,
  );

  static const TextStyle extraLargeBold = TextStyle(
    color: MLColors.primary,
    fontSize: extraLarge,
    fontWeight: bold,
  );

  static const TextStyle memorizeHeader = TextStyle(
    fontSize: extraLarge,
    fontWeight: bold,
  );
}
