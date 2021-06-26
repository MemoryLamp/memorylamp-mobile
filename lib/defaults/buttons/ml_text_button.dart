import 'package:flutter/material.dart';

class MLTextButton extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  const MLTextButton({
    Key? key,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
