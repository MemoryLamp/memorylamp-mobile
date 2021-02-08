import 'package:flutter/material.dart';
import 'package:memory_lamp/package/size.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = '/forgotPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: SizeMQ.screenHeight * 0.04),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Please enter your email and we will send \nyou a link to return to your account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeMQ.screenHeight * 0.1),
                // ForgotPassForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
