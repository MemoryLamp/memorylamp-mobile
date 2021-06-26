import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/buttons/ml_text_button.dart';
import 'package:memory_lamp/defaults/ml_text.dart';
import 'package:memory_lamp/theming/ml_theme.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = '/onboarding';
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: MLText(""),
              ),
              Container(
                child: MLText("Start Memorizing Bible Verses"),
              ),
              MLTextButton(
                child: MLText("Toggle theme"),
                onPressed: () {
                  mlTheme.toggleTheme();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
