import 'package:flutter/material.dart';

import 'ml_colors.dart';

MLTheme mlTheme = MLTheme();

class MLTheme with ChangeNotifier {
  bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: MLColors.primary,
      accentColor: MLColors.accent,
      backgroundColor: MLColors.bgLight,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.normal),
        bodyText1: TextStyle(fontSize: 14.0, color: MLColors.primary),
        bodyText2: TextStyle(fontSize: 14.0, color: MLColors.primary),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: MLColors.primaryLight,
      accentColor: MLColors.accent,
      backgroundColor: MLColors.bgLight,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText1: TextStyle(fontSize: 14.0, color: MLColors.primaryLight),
        bodyText2: TextStyle(fontSize: 14.0, color: MLColors.primaryLight),
      ),
    );
  }
}
