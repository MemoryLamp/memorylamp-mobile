import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_elevated_button.dart';

class SignupScreen extends StatelessWidget {
  static String routeName = '/signup';
  SignupScreen({Key? key}) : super(key: key);

  final double _width = SizeMQ.width! * .6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MLColors.bgLight,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: SizeMQ.width! * .1),
              _thirdPartySignup(),
              _divider(),
              _signUp(),
              _submitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Column _thirdPartySignup() {
    return Column(
      children: [
        MLElevatedButton(
          width: _width,
          onPressed: () {},
          child: const Text(
            "Sign up via Google",
            style: MLFont.smallLight,
          ),
        ),
        MLElevatedButton(
          width: _width,
          onPressed: () {},
          child: const Text(
            "Sign up via Facebook",
            style: MLFont.smallLight,
          ),
        ),
      ],
    );
  }

  Padding _divider() {
    const Expanded _line = Expanded(
      child: Divider(
        color: MLColors.secondary,
        thickness: .5,
      ),
    );
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeMQ.width! * .1,
        vertical: SizeMQ.width! * .06,
      ),
      child: Row(
        children: const [
          _line,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text("OR", style: MLFont.extraSmallS),
          ),
          _line,
        ],
      ),
    );
  }

  Column _signUp() {
    return Column(
      children: const [
        Text("email"),
        Text("password"),
      ],
    );
  }

  MLElevatedButton _submitButton() {
    return MLElevatedButton(
      width: _width,
      onPressed: () {},
      child: const Text("Submit"),
    );
  }
}
