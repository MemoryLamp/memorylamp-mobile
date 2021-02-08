import 'package:flutter/material.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/screens/login/forgot_password_screen.dart';

class FormContainer extends StatefulWidget {
  final bool loadForSignup;
  const FormContainer({this.loadForSignup = false});
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
        if (widget.loadForSignup) _userNameField(),
        SizedBox(height: SizeMQ.screenHeight * .03),
        _emailField(),
        SizedBox(height: SizeMQ.screenHeight * .03),
        _passwordField(),
        SizedBox(height: SizeMQ.screenHeight * .03),
        widget.loadForSignup ? _agreeToTOS() : _rememberMe(),
        SizedBox(height: SizeMQ.screenHeight * .03),
      ],
    );
  }

  //  COMPONENTS
  // ------ usernameField
  TextFormField _userNameField() => TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: "Username",
          hintText: "Enter your username",
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      );

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

  Row _agreeToTOS() => Row(
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
          Spacer(),
          Text("By clicking this, you agree to our "),
          GestureDetector(
            onTap: () {
              print('clicked : Terms and conditions');
              Navigator.pushNamed(context, ForgotPassword.routeName);
            },
            child: Text(
              "terms and conditions",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      );
}
