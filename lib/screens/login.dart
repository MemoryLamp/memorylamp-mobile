import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/buttons/ml_elevated_button.dart';
import 'package:memory_lamp/defaults/ml_text.dart';
import 'package:memory_lamp/form/ml_form.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/screens/signup.dart';
import 'package:memory_lamp/theming/ml_colors.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login';
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MLColors.primary,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Container(
              height: SizeMQ.height! * .9,
              padding: EdgeInsets.symmetric(horizontal: SizeMQ.width! * .1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _welcome(),
                  SizedBox(width: SizeMQ.width! * .03),
                  MLForm(
                    loadForLogin: true,
                  ),
                  _loginButton(),
                  SizedBox(width: SizeMQ.height! * .03),
                  _signUpHere(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

// ======  COMPONENTS

//WelcomeMessage
  Column _welcome() => Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: MLText(
              "Welcome Back! ",
              style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(14),
                fontWeight: FontWeight.normal,
                height: 2,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: MLText(
              'Log in to continue',
              color: Colors.white54,
            ),
          ),
        ],
      );

//LoginButton
  MLElevatedButton _loginButton() => MLElevatedButton(
        child: MLText(
          'Log in',
          color: MLColors.primary,
        ),
        color: Colors.white,
        onPressed: () {
          print('Login');
        },
      );

//SignUp
  Row _signUpHere(BuildContext context) {
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
