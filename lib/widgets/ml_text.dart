import 'package:flutter/material.dart';

class MLText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final FontWeight? fontWeight;
  final double? fontSize;
  final FontStyle? fontStyle;
  final Color? fontColor;
  final TextAlign? textAlign;
  final double? height;

  const MLText(
    this.text, {
    this.style,
    this.fontWeight,
    this.fontSize,
    this.fontStyle,
    this.fontColor,
    this.textAlign,
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style ??
          TextStyle(
            height: height,
            fontWeight: fontWeight,
            fontSize: fontSize,
            fontStyle: fontStyle,
            color: fontColor,
          ),
    );
  }
}
