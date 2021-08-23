import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/buttons/ml_elevated_button.dart';
import 'package:memory_lamp/defaults/ml_text.dart';
import 'package:memory_lamp/form/ml_form.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/screens/login.dart';
import 'package:memory_lamp/theming/ml_colors.dart';

class SignupScreen extends StatefulWidget {
  static String routeName = '/signup';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MLColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: SizeMQ.height! * .9,
            padding: EdgeInsets.symmetric(horizontal: SizeMQ.width! * .1),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _welcome(),
                MLForm(
                  loadForSignup: true,
                ),
                MLElevatedButton(
                    color: Colors.white,
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: MLColors.primary),
                    ),
                    onPressed: () {}),
                AlreadyUser(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Message
Column _welcome() => Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Hello!",
          style: TextStyle(
            color: Colors.white,
            fontSize: getProportionateScreenWidth(14),
            fontWeight: FontWeight.bold,
          ),
        ),
        MLText(
          'Create a new Account',
          color: Colors.white54,
        ),
      ],
    );

//SignIn
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
