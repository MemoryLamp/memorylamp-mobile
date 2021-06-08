import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/buttons/ml_outlined_button.dart';
import 'package:memory_lamp/defaults/ml_text.dart';
import 'package:memory_lamp/theming/ml_colors.dart';

class TestingScreen extends StatelessWidget {
  static String routeName = '/login';
  const TestingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: MLText("hello world")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MLText("MLText"),
              MLOutlinedButton(
                child: MLText("OUTLINED BUTTON", color: Colors.white),
                onPressed: () {},
              ),
              MLOutlinedButton(
                backgroundColor: MLColors.primary,
                child: MLText(
                  "OUTLINED BUTTON with background",
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              MLOutlinedButton(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle_outline_outlined,
                      color: Colors.white,
                    ),
                    MLText(
                      "SWITCH MODE BUTTON",
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
