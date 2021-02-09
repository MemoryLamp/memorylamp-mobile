import 'package:flutter/material.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/screens/login/forgot_password_screen.dart';
import 'package:memory_lamp/screens/login/widgets/error_list_builder.dart';

class FormContainer extends StatefulWidget {
  final bool loadForSignup;
  const FormContainer({this.loadForSignup = false});
  @override
  _FormContainerState createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {
  final _formKey = GlobalKey<FormState>();
  bool remember = false;
  bool agreeToTos = false;
  String email;
  String password;
  final List<String> errors = [];

  // ------ setState functions
  void appendError({String error}) {
    if (!errors.contains(error)) setState(() => errors.add(error));
  }

  void removeError({String error}) {
    if (errors.contains(error)) setState(() => errors.remove(error));
  }

  // void setEmail(String input) => setState(() => email = input);
  // void setPassword(String input) => setState(() => password = input);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          if (widget.loadForSignup) _userNameField(),
          SizedBox(height: SizeMQ.screenHeight * .03),
          _emailField(),
          SizedBox(height: SizeMQ.screenHeight * .03),
          _passwordField(),
          SizedBox(height: SizeMQ.screenHeight * .03),
          ErrorListBuilder(errors: errors),
          widget.loadForSignup ? _agreeToTOS() : _rememberMe(),
          SizedBox(height: SizeMQ.screenHeight * .03),
        ],
      ),
    );
  }

  //  COMPONENTS
  // ------ usernameField
  TextFormField _userNameField() => TextFormField(
        keyboardType: TextInputType.name,
        decoration: defaultInputDecoration(
          label: "UserName",
          hint: "Enter your UserName",
          icon: "assets/icons/Mail.svg",
        ),
      );

  // ------ emailField
  TextFormField _emailField() => TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (emailInput) => email = emailInput,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: emptyEmail);
          } else if (emailRegExp.hasMatch(value)) {
            removeError(error: invalidEmail);
          }
          return null;
        },
        validator: (value) {
          if (value.isEmpty) {
            appendError(error: emptyEmail);
            return "";
          } else if (!emailRegExp.hasMatch(value)) {
            appendError(error: invalidEmail);
            return "";
          }
          return null;
        },
        decoration: defaultInputDecoration(
          label: "Email",
          hint: "Enter your Email",
          icon: "assets/icons/Mail.svg",
        ),
      );

  // ------ passwordField
  TextFormField _passwordField() => TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: defaultInputDecoration(
          label: "Password",
          hint: "Enter your Password",
          icon: "assets/icons/Lock.svg",
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

  // ------ agreeToTOS
  Row _agreeToTOS() => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Checkbox(
            value: remember,
            activeColor: PrimaryColor,
            onChanged: (value) {
              setState(() {
                agreeToTos = value;
              });
            },
          ),
          Spacer(),
          Text("By clicking this, you agree to our "),
          GestureDetector(
            onTap: () {
              print("Terms of Service");
              // show TOS
            },
            child: Text(
              "Terms of Service",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      );
}
