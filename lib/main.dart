import 'package:flutter/material.dart';
import 'package:memory_lamp/router/route_map.dart';
import 'package:memory_lamp/screens/testing_screen.dart';
import 'package:memory_lamp/theming/ml_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Lamp',
      theme: MLTheme.def,
      initialRoute: TestingScreen.routeName,
      routes: routeMap,
    );
  }
}
