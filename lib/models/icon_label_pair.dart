import 'package:flutter/cupertino.dart';

class IconLabelPair {
  String name;
  IconData? _icon;
  Image? _image;

  IconLabelPair({required this.name, icon, image}) {
    this.name = name;
    this._icon = icon;
    this._image = image;
  }

  dynamic get icon => _icon ?? _image;
}
