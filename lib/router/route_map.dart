import 'package:flutter/widgets.dart';
import 'package:memory_lamp/screens/login/forgot_password_screen.dart';
import 'package:memory_lamp/screens/login/login_screen.dart';
import 'package:memory_lamp/screens/login/signup_screen.dart';
import 'package:memory_lamp/screens/onboarding/onboarding.dart';

final Map<String, WidgetBuilder> routeMap = {
  // ------ for login
  Onboarding.routeName: (context) => Onboarding(),
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
