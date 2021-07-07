import 'package:flutter/painting.dart';

abstract class MLColors {
  // This class is not meant to be instantiated or extended;
  // this constructor prevents instantiation and extension.
  MLColors._();

  static Color primary = Color(0xFF173246);
  static Color primaryLight = Color(0xFF698292);

  static Color secondary = Color(0xFF227ABA);
  static Color secondaryLight = Color(0xFF2596BE);

  static Color accent = Color(0xFF1742AF);

  static Color bgLight = Color(0xFFF6FCFF);
}
