import 'package:flutter/material.dart';

class LabeledIcon extends StatelessWidget {
  final Widget icon;
  final Widget label;
  final Axis direction;
  final double? spaceBetween;
  final MainAxisAlignment? mainAxisAlignment;

  const LabeledIcon({
    required this.icon,
    required this.label,
    this.spaceBetween = 8,
    this.direction = Axis.horizontal,
    this.mainAxisAlignment,
    Key? key,
  }) : super(key: key);

  SizedBox _separator() {
    return SizedBox(
      width: direction == Axis.vertical ? 0 : spaceBetween,
      height: direction == Axis.horizontal ? 0 : spaceBetween,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      direction: direction,
      children: [
        icon,
        _separator(),
        label,
      ],
    );
  }
}
