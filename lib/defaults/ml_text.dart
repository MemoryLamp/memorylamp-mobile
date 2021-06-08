import 'package:flutter/material.dart';

class MLText extends StatelessWidget {
  final String text;
  final Color? color;
  const MLText(this.text, {this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color),
    );
  }
}
