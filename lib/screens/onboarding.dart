import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/screens/home.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeMQ().init(context);

    return Scaffold(
      backgroundColor: MLColors.primary,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const _Logo(),
            SizedBox(height: SizeMQ.width! * .2),
            const _GetStarted(),
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetPaths.logo("logo-light.png"),
      width: SizeMQ.width! * .65,
      fit: BoxFit.fitWidth,
    );
  }
}

class _GetStarted extends StatelessWidget {
  const _GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeMQ.width! * .60,
      height: 40,
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
        child: const Text(
          "Get Started",
          style: MLFont.mediumPrimaryBold,
        ),
        style: ElevatedButton.styleFrom(primary: Colors.white),
      ),
    );
  }
}
