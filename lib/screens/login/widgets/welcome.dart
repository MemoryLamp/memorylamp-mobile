import 'package:flutter/material.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/package/texts.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "Login To Memory Lamp",
          style: TextStyle(
            color: PrimaryColor,
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            height: 5,
          ),
        ),
        NormalText('Dolor cillum laborum sunt qui fugiat aliqua eu ad.'),
      ],
    );
  }
}
