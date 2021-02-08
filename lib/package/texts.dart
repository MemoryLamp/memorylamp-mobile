import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NormalText extends StatelessWidget {
  final String child;
  final Color color;
  final FontWeight weight;
  final double size;
  const NormalText(this.child, {this.color, this.weight, this.size = 15});
  @override
  Widget build(BuildContext context) {
    return Text(
      child,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}

class MediumText extends NormalText {
  final String child;
  final Color color;
  final FontWeight weight;
  final double size;
  const MediumText(this.child, {this.color, this.weight, this.size = 25})
      : super(child);
}

class LargeText extends NormalText {
  final String child;
  final Color color;
  final FontWeight weight;
  final double size;
  const LargeText(this.child, {this.color, this.weight, this.size = 35})
      : super(child);
}
