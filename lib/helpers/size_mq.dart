import 'package:flutter/material.dart';

class SizeMQ {
  static MediaQueryData? _mediaQueryData;
  static double? width;
  static double? height;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData?.size.width;
    height = _mediaQueryData?.size.height;
    orientation = _mediaQueryData?.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = SizeMQ.width;
  return (inputHeight / 812.0) * screenHeight!;
}

double getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = SizeMQ.height;
  return (inputWidth / 375.0) * screenWidth!;
}
