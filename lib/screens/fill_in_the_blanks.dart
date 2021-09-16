import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/defaults.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class FillInTheBlanksScreen extends StatelessWidget {
  static const String routeName = "/fillInTheBlanks";

  const FillInTheBlanksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MLText("Memorize"), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: MLDefaults.screenPadding,
          child: MLText("Fill In The Blanks"),
        ),
      ),
    );
  }
}
