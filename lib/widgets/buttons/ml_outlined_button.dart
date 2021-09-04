import 'package:flutter/material.dart';

class MLOutlinedButton extends StatelessWidget {
  final Function()? onPressed;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final Color? outlineColor;
  final Widget child;
  final EdgeInsets padding;
  final double? width;

  const MLOutlinedButton({
    this.onPressed,
    this.backgroundColor,
    this.borderRadius,
    this.borderWidth,
    this.outlineColor,
    this.padding = EdgeInsets.zero,
    this.width,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
