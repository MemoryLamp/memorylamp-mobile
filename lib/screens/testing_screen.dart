import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/ml_text.dart';

class TestingScreen extends StatelessWidget {
  static String routeName = '/login';
  const TestingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MLText("hello world")),
      body: Center(child: MLText("hello world")),
    );
  }
}
