import 'package:flutter/material.dart';

class MLText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final FontWeight? fontWeight;
  final double? fontSize;
  final FontStyle? fontStyle;
  final Color? fontColor;

  const MLText(
    this.text, {
    this.style,
    this.fontWeight,
    this.fontSize,
    this.fontStyle,
    this.fontColor,
    Key? key,
  })  : assert(
          style == null ||
              (fontWeight == null && fontSize == null && fontStyle == null),
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
            fontStyle: fontStyle,
            color: fontColor,
          ),
    );
  }
}
