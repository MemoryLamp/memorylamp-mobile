import 'package:flutter/material.dart';
import 'package:memory_lamp/package/size.dart';

const PrimaryColor = Colors.blue;
const PrimaryLightColor = Colors.lightBlue;
const PrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Colors.lightBlue, Colors.lightBlueAccent],
);
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

// OutlineInputBorder outlineInputBorder() {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
//     borderSide: BorderSide(color: TextColor),
//   );
// }
