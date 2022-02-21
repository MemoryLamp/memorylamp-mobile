import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';

import 'ml_colors.dart';

abstract class MLThemeData {
  static ElevatedButtonThemeData get elevatedButton => ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(MLColors.bgLight),
          backgroundColor: MaterialStateProperty.all(MLColors.primary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      );

  static OutlinedButtonThemeData get outlinedButton => OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(MLColors.primary),
          side: MaterialStateProperty.all<BorderSide?>(
            const BorderSide(
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

  static AppBarTheme get appbar {
    return const AppBarTheme(backgroundColor: MLColors.primary);
  }

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
