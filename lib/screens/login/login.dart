import 'package:flutter/material.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/my_button.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/package/texts.dart';
import 'package:memory_lamp/screens/login/widgets/form_container.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeMQ.screenWidth * .1),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _welcome(),
                FormContainer(),
                MyButton(press: () {}, text: 'Login'),
                SizedBox(height: SizeMQ.screenHeight * .03),
                _signUpButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ======  COMPONENTS

  // ------ welcome
  Column _welcome() => Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Login To Memory Lamp",
            style: TextStyle(
              color: PrimaryColor,
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              height: 5,
            ),
          ),
          NormalText('Dolor cillum laborum sunt qui fugiat aliqua eu ad.'),
        ],
      );

  // ------ signUpCTA
  Row _signUpButton(context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NormalText(
            "Don’t have an account? ",
            size: getProportionateScreenWidth(16),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, LoginScreen.routeName),
            child: NormalText("Sign Up",
                size: getProportionateScreenWidth(16), color: PrimaryColor),
          ),
        ],
      );
}
