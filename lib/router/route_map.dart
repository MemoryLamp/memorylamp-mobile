import 'package:flutter/widgets.dart';
import 'package:memory_lamp/screens/login/forgot_password.dart';
import 'package:memory_lamp/screens/login/login.dart';
import 'package:memory_lamp/screens/onboarding/onboarding.dart';

final Map<String, WidgetBuilder> routeMap = {
  Onboarding.routeName: (context) => Onboarding(),
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
};
