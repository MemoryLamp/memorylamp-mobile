import 'package:flutter/material.dart';

class MLTextButton extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  const MLTextButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
// It's called padding but it actually acts as a margin, hence the property name
// Flutter doesn't have margins, It uses outer paddings as margin
      padding: margin,
      child: SizedBox(
        width: width,
        height: height,
        child: TextButton(
          onPressed: onPressed,
          child: Padding(
            padding: padding,
            child: child,
          ),
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
