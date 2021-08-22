import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/ml_text.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/screens/signup.dart';

class SignUpHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MLText(
          'New User? ',
          fontSize: getProportionateScreenWidth(7),
          color: Colors.white,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignupScreen.routeName);
          },
          child: MLText(
            'Sign Up Here!',
            textDecoration: TextDecoration.underline,
            fontSize: getProportionateScreenWidth(7),
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
