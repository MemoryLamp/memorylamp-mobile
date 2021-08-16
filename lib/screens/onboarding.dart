import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/buttons/ml_elevated_button.dart';
import 'package:memory_lamp/defaults/ml_text.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/screens/home.dart';
import 'package:memory_lamp/screens/signup.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeMQ().init(context);

    return Scaffold(
      backgroundColor: MLColors.bgLight,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            heroLogo(),
            SizedBox(height: SizeMQ.width! * .2),
            MLElevatedButton(
              onPressed: () =>
                  Navigator.popAndPushNamed(context, HomeScreen.routeName),
              child: MLText(
                "Get Started",
                fontWeight: MLFont.bold,
                fontSize: MLFont.small,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Hero heroLogo() {
    return Hero(
      tag: "logo",
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AssetManager.logo("ml-1-03.png"),
          ),
          MLText(
            "Start memorizing Bible verses",
            fontSize: MLFont.medium,
          ),
        ],
      ),
    );
  }
}
