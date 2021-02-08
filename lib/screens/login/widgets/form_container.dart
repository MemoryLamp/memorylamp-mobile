import 'package:flutter/material.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/screens/login/forgot_password.dart';

class FormContainer extends StatefulWidget {
  @override
  _FormContainerState createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        _emailField(),
        SizedBox(height: SizeMQ.screenHeight * .03),
        _passwordField(),
        SizedBox(height: SizeMQ.screenHeight * .03),
        _rememberMe(),
        SizedBox(height: SizeMQ.screenHeight * .03),
      ],
    );
  }

  //  COMPONENTS
  // ------ emailFeild
  TextFormField _emailField() => TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      );

  // ------ passwordField
  TextFormField _passwordField() => TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      );

  // ------- rememberMe
  Row _rememberMe() => Row(
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
            onTap: () {
              print('clicked : forgot password');
              Navigator.pushNamed(context, ForgotPassword.routeName);
            },
            child: Text(
              "Forgot Password",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      );
}
