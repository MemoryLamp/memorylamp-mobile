import 'package:flutter/widgets.dart';
import 'package:memory_lamp/screens/onboarding.dart';
import 'package:memory_lamp/screens/testing_screen.dart';

final Map<String, WidgetBuilder> routeMap = {
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  // ------ screen for manual testing widgets
  TestingScreen.routeName: (context) => TestingScreen(),
};
