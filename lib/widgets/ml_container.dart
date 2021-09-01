import 'package:flutter/material.dart';

class MLContainer extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final double? height;
  final bool hasShadow;

  const MLContainer({
    required this.child,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.borderRadius,
    this.height,
    this.hasShadow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        boxShadow: hasShadow
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ]
            : [],
      ),
      child: child,
    );
  }
}
