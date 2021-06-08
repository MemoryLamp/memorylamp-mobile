import 'package:flutter/material.dart';

class MLOutlinedButton extends StatelessWidget {
  final Function()? onPressed;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final Color? outlineColor;
  final Widget child;

  const MLOutlinedButton(
      {this.onPressed,
      this.backgroundColor,
      this.borderRadius,
      this.borderWidth,
      this.outlineColor,
      required this.child,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: child,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(30),
        ),
        side: BorderSide(
          width: borderWidth ?? 2,
          color: outlineColor ?? Colors.white,
        ),
      ),
    );
  }
}
