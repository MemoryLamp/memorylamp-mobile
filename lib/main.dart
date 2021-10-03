import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memory_lamp/router/route_map.dart';
import 'package:memory_lamp/screens/onboarding.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    mlTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: MLColors.primary,
      ),
    );

    return MaterialApp(
      title: 'Memory Lamp',
      theme: MLTheme.light,
      darkTheme: MLTheme.dark,
      themeMode: mlTheme.currentTheme,
      initialRoute: OnboardingScreen.routeName,
      routes: routeMap,
    );
  }
}
