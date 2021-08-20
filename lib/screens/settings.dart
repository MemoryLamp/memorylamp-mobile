import 'package:flutter/material.dart';
import 'package:memory_lamp/widgets/compound_widgets/ml_appbar.dart';
import 'package:memory_lamp/widgets/compound_widgets/ml_drawer.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class SettingsScreen extends StatelessWidget {
  static String routeName = "settings";

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MLAppbar(),
      drawer: MLDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: MLText(routeName),
          ),
        ),
      ),
    );
  }
}
