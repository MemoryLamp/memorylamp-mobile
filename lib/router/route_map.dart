import 'package:flutter/widgets.dart';
import 'package:memory_lamp/screens/books.dart';
import 'package:memory_lamp/screens/home.dart';
import 'package:memory_lamp/screens/notification.dart';
import 'package:memory_lamp/screens/onboarding.dart';
import 'package:memory_lamp/screens/profile.dart';
import 'package:memory_lamp/screens/settings.dart';
import 'package:memory_lamp/screens/signup.dart';

final Map<String, WidgetBuilder> routeMap = {
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  BooksScreen.routeName: (context) => BooksScreen(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  SettingsScreen.routeName: (context) => SettingsScreen(),
};
