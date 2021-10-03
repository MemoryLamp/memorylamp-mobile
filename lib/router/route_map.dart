import 'package:flutter/widgets.dart';
import 'package:memory_lamp/screens/games/fill_in_the_blanks.dart';
import 'package:memory_lamp/screens/games/pick_game.dart';
import 'package:memory_lamp/screens/games/rearrange_to_memorize.dart';
import 'package:memory_lamp/screens/games/recite_this_verse.dart';
import 'package:memory_lamp/screens/home.dart';
import 'package:memory_lamp/screens/onboarding.dart';
import 'package:memory_lamp/screens/signup.dart';
import 'package:memory_lamp/screens/emotions.dart';

_extractArgs(BuildContext context) =>
    ModalRoute.of(context)!.settings.arguments;

final Map<String, WidgetBuilder> routeMap = {
  OnboardingScreen.routeName: (_) => const OnboardingScreen(),
  SignupScreen.routeName: (_) => SignupScreen(),
  HomeScreen.routeName: (_) => const HomeScreen(),
  EmotionsScreen.routeName: (context) => EmotionsScreen(_extractArgs(context)),

  // games
  PickGameScreen.routeName: (context) => PickGameScreen(_extractArgs(context)),
  FillInTheBlanksScreen.routeName: (context) => FillInTheBlanksScreen(
        _extractArgs(context),
      ),
  ReciteThisVerseScreen.routeName: (context) => const ReciteThisVerseScreen(),
  RearrangeToMemorizeScreen.routeName: (context) =>
      const RearrangeToMemorizeScreen(),
};
