import 'package:flutter/material.dart';

class LabeledIcon extends StatelessWidget {
  final Widget icon;
  final Widget label;
  final Axis direction;
  final double? spaceBetween;

  const LabeledIcon({
    required this.icon,
    required this.label,
    this.spaceBetween = 8,
    this.direction = Axis.horizontal,
  });

  SizedBox _separator() {
    return SizedBox(
      width: direction == Axis.vertical ? 0 : spaceBetween,
      height: direction == Axis.horizontal ? 0 : spaceBetween,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction,
      children: [
        this.icon,
        _separator(),
        this.label,
      ],
    );
  }
}
