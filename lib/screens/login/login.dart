import 'package:flutter/material.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/screens/login/widgets/form_container.dart';
import 'package:memory_lamp/screens/login/widgets/welcome.dart';

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
                Welcome(),
                FormContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
