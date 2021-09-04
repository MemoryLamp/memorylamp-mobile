import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';

class MLElevatedButton extends StatelessWidget {
  final double? width;
  final Widget child;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final Function() onPressed;

  const MLElevatedButton({
    this.width,
    this.backgroundColor,
    this.padding,
    this.borderRadius,
    required this.child,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? SizeMQ.width! * .5,
      child: ElevatedButton(
        child: Padding(
          padding: padding ?? EdgeInsets.all(8.0),
          child: child,
        ),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(primary: backgroundColor),
      ),
    );
  }
}
