import 'package:flutter/widgets.dart';
import 'package:memory_lamp/screens/home.dart';
import 'package:memory_lamp/screens/onboarding.dart';
import 'package:memory_lamp/screens/signup.dart';

final Map<String, WidgetBuilder> routeMap = {
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
