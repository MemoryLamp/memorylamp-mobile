import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

abstract class MLColors {
  // This class is not meant to be instantiated or extended;
  // this constructor prevents instantiation and extension.
  MLColors._();

  static const Color primary = Color(0xFF072C47);
  static const Color primaryAccent = Color(0xFF173246);
  static const Color primaryLight = Color(0xFF9CBBD2);

  static const Color purple = Color(0xFF2a347f);

  static const Color secondary = Color(0xFF227ABA);
  static const Color secondaryLight = Color(0xFFEBF4F9);

  static const Color bgLight = Color(0xFF8396A3);
}
