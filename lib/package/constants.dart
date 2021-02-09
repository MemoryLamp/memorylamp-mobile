import 'package:flutter/material.dart';
import 'package:memory_lamp/package/reusable_widgets.dart';
import 'package:memory_lamp/package/size.dart';

const PrimaryColor = Colors.blue;
const PrimaryLightColor = Colors.lightBlue;
const SecondaryColor = Colors.grey;
const TextColor = Colors.black87;

const AnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

defaultInputDecoration({
  @required String label,
  @required String hint,
  @required String icon,
}) {
  return InputDecoration(
    labelText: label,
    hintText: hint,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    suffixIcon: FormSuffixIcon(svgIcon: icon),
  );
}
