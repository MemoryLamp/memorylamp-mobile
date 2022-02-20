import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/ml_themedata.dart';

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
      elevatedButtonTheme: MLThemeData.elevatedButton,
      outlinedButtonTheme: MLThemeData.outlinedButton,
      textButtonTheme: MLThemeData.textButton,
      appBarTheme: MLThemeData.appbar,
    );
  }

  static ThemeData get dark {
    // I thought we were adding this haha
    return ThemeData();
  }
}
