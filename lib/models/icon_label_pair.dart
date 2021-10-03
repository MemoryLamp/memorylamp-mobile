import 'package:flutter/cupertino.dart';

class IconLabelPair {
  String name;
  IconData? _icon;
  Image? _image;

  IconLabelPair({required this.name, icon, image}) {
    name = name;
    _icon = icon;
    _image = image;
  }

  dynamic get icon => _icon ?? _image;
}
