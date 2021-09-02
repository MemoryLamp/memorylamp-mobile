import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/defaults.dart';

import 'ml_colors.dart';

abstract class MLThemeData {
  static ElevatedButtonThemeData get elevatedButton => ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(MLColors.bgLight),
          backgroundColor: MaterialStateProperty.all(MLColors.primary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: MLDefaults.rounded,
            ),
          ),
        ),
      );

  static OutlinedButtonThemeData get outlinedButton => OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(MLColors.primary),
          side: MaterialStateProperty.all<BorderSide?>(
            BorderSide(
              style: BorderStyle.solid,
              color: MLColors.primary,
              width: .8,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      );

  static TextButtonThemeData get textButton => TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(MLColors.primaryAccent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: MLDefaults.rounded,
            ),
          ),
        ),
      );
}
