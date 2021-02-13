import 'package:flutter/material.dart';
import 'package:memory_lamp/package/texts.dart';

class LoggedinScreen extends StatelessWidget {
  static String routeName = '/loggedin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: MediumText('logged in succesfully')),
    );
  }
}
