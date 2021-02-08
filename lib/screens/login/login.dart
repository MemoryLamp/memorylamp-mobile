import 'package:flutter/material.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/my_button.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/package/texts.dart';
import 'package:memory_lamp/screens/login/widgets/form_container.dart';
import 'package:memory_lamp/screens/login/widgets/sign_up_button.dart';

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
                SignUpCallToAction(),
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
}
