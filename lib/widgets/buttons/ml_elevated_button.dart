import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';

class MLElevatedButton extends StatelessWidget {
  final double? width;
  final Widget child;
  final Function() onPressed;

  const MLElevatedButton({
    this.width,
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
          padding: EdgeInsets.all(8.0),
          child: child,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
