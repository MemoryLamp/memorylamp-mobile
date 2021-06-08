import 'package:flutter/material.dart';

class MLText extends StatelessWidget {
  final String text;
  const MLText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
