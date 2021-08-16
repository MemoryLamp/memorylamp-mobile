import 'package:flutter/material.dart';
import 'package:memory_lamp/defaults/ml_appbar.dart';
import 'package:memory_lamp/defaults/ml_drawer.dart';
import 'package:memory_lamp/defaults/ml_text.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MLAppbar(),
      drawer: MLDrawer(),
      body: Center(child: MLText("home")),
    );
  }
}
