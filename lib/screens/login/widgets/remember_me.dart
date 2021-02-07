import 'package:flutter/material.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/size.dart';

class RememberMe extends StatefulWidget {
  @override
  _RememberMeState createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Checkbox(
          value: remember,
          activeColor: PrimaryColor,
          onChanged: (value) {
            setState(() {
              remember = value;
            });
          },
        ),
        Text("Remember me"),
        SizedBox(height: SizeMQ.screenHeight * .03),
        Spacer(),
        GestureDetector(
          // onTap: () => Navigator.pushNamed(
          //     context, ForgotPasswordScreen.routeName),
          child: Text(
            "Forgot Password",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
