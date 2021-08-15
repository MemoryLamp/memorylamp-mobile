import 'package:flutter/widgets.dart';
import 'package:memory_lamp/screens/home.dart';
import 'package:memory_lamp/screens/onboarding.dart';
import 'package:memory_lamp/screens/signup.dart';
import 'package:memory_lamp/screens/testing_screen.dart';

final Map<String, WidgetBuilder> routeMap = {
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),

  // ------ screen for manual testing widgets
  TestingScreen.routeName: (context) => TestingScreen(),
};
