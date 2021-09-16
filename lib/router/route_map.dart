import 'package:flutter/widgets.dart';
import 'package:memory_lamp/screens/fill_in_the_blanks.dart';
import 'package:memory_lamp/screens/home.dart';
import 'package:memory_lamp/screens/onboarding.dart';
import 'package:memory_lamp/screens/pick_game.dart';
import 'package:memory_lamp/screens/rearrange_to_memorize.dart';
import 'package:memory_lamp/screens/recite_this_verse.dart';
import 'package:memory_lamp/screens/signup.dart';
import 'package:memory_lamp/screens/emotions.dart';

_extractArgs(BuildContext context) =>
    ModalRoute.of(context)!.settings.arguments;

final Map<String, WidgetBuilder> routeMap = {
  OnboardingScreen.routeName: (_) => OnboardingScreen(),
  SignupScreen.routeName: (_) => SignupScreen(),
  HomeScreen.routeName: (_) => HomeScreen(),
  EmotionsScreen.routeName: (context) => EmotionsScreen(_extractArgs(context)),

  // games
  PickGameScreen.routeName: (context) => PickGameScreen(),
  FillInTheBlanksScreen.routeName: (context) => FillInTheBlanksScreen(),
  ReciteThisVerseScreen.routeName: (context) => ReciteThisVerseScreen(),
  RearrangeToMemorizeScreen.routeName: (context) => RearrangeToMemorizeScreen(),
};
