import 'package:flutter/material.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class MLDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: List.generate(
        5,
        (index) => ListTile(title: MLText("Hello world $index")),
      ),
    ));
  }
}
