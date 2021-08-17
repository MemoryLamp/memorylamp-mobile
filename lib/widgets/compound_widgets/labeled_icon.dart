import 'package:flutter/material.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class LabeledIcon extends StatelessWidget {
  final IconData icon;
  final MLText label;
  final Axis direction;

  const LabeledIcon({
    required this.icon,
    required this.label,
    this.direction = Axis.horizontal,
  });

  SizedBox _separator() {
    return SizedBox(
      width: direction == Axis.vertical ? 0 : 8,
      height: direction == Axis.horizontal ? 0 : 8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: direction,
      children: [
        Icon(this.icon),
        _separator(),
        this.label,
      ],
    );
  }
}
