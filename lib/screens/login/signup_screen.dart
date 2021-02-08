import 'package:flutter/material.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/my_button.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/package/texts.dart';
import 'package:memory_lamp/package/transparent_appbar.dart';
import 'package:memory_lamp/screens/login/widgets/form_container.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: transparentAppbar('Sign Up'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: SizeMQ.screenHeight * .9,
            padding: EdgeInsets.symmetric(horizontal: SizeMQ.screenWidth * .1),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _welcome(),
                FormContainer(loadForSignup: true),
                MyButton(press: () {}, text: 'Sign Up'),
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
            "Sign up To Memory Lamp",
            style: TextStyle(
              color: PrimaryColor,
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: SizeMQ.screenHeight * .03),
          NormalText(
              'Minim anim enim consequat veniam nulla reprehenderit Lorem eiusmod ea.'),
        ],
      );
}
