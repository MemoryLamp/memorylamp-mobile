import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/ml_text.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: MLText("hello")),
    );
  }
}
