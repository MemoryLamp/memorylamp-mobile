import 'package:flutter/material.dart';

class MLTextButton extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry margin;

  const MLTextButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.width,
    this.height,
    this.margin = EdgeInsets.zero,
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
          child: child,
        ),
      ),
    );
  }
}
