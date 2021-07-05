import 'package:flutter/cupertino.dart';

// These classes are not meant to be instantiated or extended;
// the ._() constructors  prevents instantiation and extension.

abstract class MLFontWeight {
  MLFontWeight._();

  // FontWeights
  static FontWeight thin = FontWeight.w100;
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight bold = FontWeight.w700;
}

abstract class MLFontSize {
  MLFontSize._();

  // FontSizes
  static double small = 12;
  static double medium = 15;
  static double large = 20;
}
