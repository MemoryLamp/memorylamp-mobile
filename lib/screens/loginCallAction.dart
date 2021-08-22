import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/ml_text.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/screens/login.dart';

class AlreadyUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MLText(
          'Already have an Account? ',
          fontSize: getProportionateScreenWidth(7),
          color: Colors.white,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, LoginScreen.routeName);
          },
          child: MLText(
            'Sign in here!',
            textDecoration: TextDecoration.underline,
            fontSize: getProportionateScreenWidth(7),
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
