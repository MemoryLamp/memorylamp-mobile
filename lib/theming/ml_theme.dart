import 'package:flutter/material.dart';

import 'ml_colors.dart';

MLTheme mlTheme = MLTheme();

class MLTheme with ChangeNotifier {
  bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: MLColors.primary,
      backgroundColor: MLColors.bgLight,
      fontFamily: "poppins",
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(MLColors.bgLight),
          backgroundColor: MaterialStateProperty.all(MLColors.primary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
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
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(MLColors.primaryAccent),
          side: MaterialStateProperty.all<BorderSide?>(
            BorderSide(
              style: BorderStyle.solid,
              color: MLColors.primary,
              width: .8,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }

  static ThemeData get dark {
    // I thought we were adding this haha
    return ThemeData();
  }
}
