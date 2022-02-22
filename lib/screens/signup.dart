import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';

class SignupScreen extends StatelessWidget {
  static String routeName = '/signup';
  SignupScreen({Key? key}) : super(key: key);

  final double width = SizeMQ.width! * .6;

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
              _ThirdPartySignup(width: width),
              const _Divider(),
              const _SignUp(),
              _SubmitButton(width: width),
            ],
          ),
        ),
      ),
    );
  }
}

class _ThirdPartySignup extends StatelessWidget {
  final double width;

  const _ThirdPartySignup({required this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: width,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Sign up via Google",
              style: MLFont.smallLight,
            ),
          ),
        ),
        SizedBox(
          width: width,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Sign up via Facebook",
              style: MLFont.smallLight,
            ),
          ),
        ),
      ],
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class _SignUp extends StatelessWidget {
  const _SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text("email"),
        Text("password"),
      ],
    );
  }
}

class _SubmitButton extends StatelessWidget {
  final double width;
  const _SubmitButton({required this.width, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text("Submit"),
      ),
    );
  }
}
