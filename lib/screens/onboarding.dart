import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/ml_text.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/theming/ml_font.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeMQ().init(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AssetManager.logo("ml-1-03.png")),
              MLText(
                "Start memorizing Bible verses",
                style: MLTextStyles.mutedBold,
              ),
              SizedBox(height: SizeMQ.width! * .2),
              TextButton(
                onPressed: () {
                  print("don't touch me");
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeMQ.width! * .15,
                    vertical: 2,
                  ),
                  child: MLText(
                    "GET STARTED",
                    fontWeight: MLFontWeight.bold,
                    fontSize: MLFontSize.small,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
