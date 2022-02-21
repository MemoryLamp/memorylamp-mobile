import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/screens/home.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_elevated_button.dart';

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
            _logo(),
            SizedBox(height: SizeMQ.width! * .2),
            _getStarted(context),
          ],
        ),
      ),
    );
  }

  Image _logo() {
    return Image.asset(
      AssetPaths.logo("logo-light.png"),
      width: SizeMQ.width! * .65,
      fit: BoxFit.fitWidth,
    );
  }

  MLElevatedButton _getStarted(BuildContext context) {
    return MLElevatedButton(
      backgroundColor: Colors.white,
      width: SizeMQ.width! * .60,
      padding: const EdgeInsets.all(12),
      onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
      child: const Text(
        "Get Started",
        style: MLFont.mediumPrimaryBold,
      ),
    );
  }
}
