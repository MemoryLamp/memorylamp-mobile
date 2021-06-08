import 'package:flutter/widgets.dart';
import 'package:memory_lamp/screens/testing_screen.dart';

final Map<String, WidgetBuilder> routeMap = {
  // ------ screen for manual testing widgets
  TestingScreen.routeName: (context) => TestingScreen(),
};
