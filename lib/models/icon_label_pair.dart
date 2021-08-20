import 'package:flutter/cupertino.dart';

class IconLabelPair {
  final String name;
  final IconData? icon;
  final Image? image;

  const IconLabelPair({required this.name, this.icon, this.image});

  // icon label pair but it takes an image instead of an IconData
  const IconLabelPair.image({required this.name, this.icon, this.image});
}
