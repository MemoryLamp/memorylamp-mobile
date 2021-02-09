import 'package:flutter/material.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/my_button.dart';
import 'package:memory_lamp/package/reusable_widgets.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/package/texts.dart';
import 'package:memory_lamp/screens/login/widgets/forgot_password_form.dart';
import 'package:memory_lamp/screens/login/widgets/sign_up_call_to_action.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = '/forgotPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: transparentAppbar('Reset Password'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: SizeMQ.screenHeight * .8,
            padding: EdgeInsets.symmetric(horizontal: SizeMQ.screenWidth * .1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: SizeMQ.screenHeight * 0.04),
                NormalText(
                  "Reset Password",
                  color: PrimaryColor,
                  weight: FontWeight.bold,
                  size: getProportionateScreenWidth(40),
                ),
                Text(
                  "Please enter your email and we will send \nyou a link to reset your password",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeMQ.screenHeight * 0.1),
                ForgotPasswordForm(),
                SizedBox(height: SizeMQ.screenHeight * 0.1),
                MyButton(press: () {}, text: 'Submit'),
                SizedBox(height: SizeMQ.screenHeight * 0.1),
                SignUpCallToAction(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
