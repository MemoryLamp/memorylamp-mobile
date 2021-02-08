import 'package:flutter/material.dart';
import 'package:memory_lamp/package/memory_lamp_theme.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/router/route_map.dart';
import 'package:memory_lamp/screens/onboarding/onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeMQ().init(context);
    return MaterialApp(
      title: 'Memory Lamp',
      theme: memoryLampTheme(),
      initialRoute: Onboarding.routeName,
      routes: routeMap,
    );
  }
}
