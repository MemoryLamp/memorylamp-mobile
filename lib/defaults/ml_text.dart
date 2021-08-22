import 'package:flutter/material.dart';

class MLText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextDecoration? textDecoration;

  const MLText(
    this.text, {
    this.textDecoration,
    this.style,
    this.color,
    this.fontWeight,
    this.fontSize,
    Key? key,
  })  : assert(
          style == null || (fontWeight == null && fontSize == null),
          "Please don't add custom styles when using a preset style, "
          "It won't work anyway as the preset style will take priority- jerome",
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          TextStyle(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color,
            decoration: textDecoration,
          ),
    );
  }
}
