import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

abstract class MLColors {
  // This class is not meant to be instantiated or extended;
  // this constructor prevents instantiation and extension.
  MLColors._();

  static Color primary = Color(0xFF072C47);
  static Color primaryAccent = Color(0xFF173246);
  static Color primaryLight = Color(0xFF9CBBD2);

  static Color purple = Color(0xFF2a347f);

  static Color secondary = Color(0xFF227ABA);
  static Color secondaryLight = Color(0xFFEBF4F9);

  static Color bgLight = Color(0xFF8396A3);
}
