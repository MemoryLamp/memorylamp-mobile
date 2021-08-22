import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/theming/ml_colors.dart';

class MLForm extends StatefulWidget {
  final bool loadForSignup;
  const MLForm({this.loadForSignup = false});
  @override
  _MLFormState createState() => _MLFormState();
}

class _MLFormState extends State<MLForm> {
  final _mlFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _mlFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _userNameField(),
          SizedBox(height: SizeMQ.height! * .03),
          if (widget.loadForSignup) _emailField(),
          SizedBox(height: SizeMQ.height! * .03),
          _passwordField(),
          SizedBox(height: SizeMQ.height! * .03),
          if (widget.loadForSignup) _confirmPasswordField(),
          widget.loadForSignup ? _agreement() : _rememberMe(),
        ],
      ),
    );
  }
}

//username
TextFormField _userNameField() => TextFormField(
      keyboardType: TextInputType.name,
      decoration: _defaultInputDecoration(label: 'Username'),
    );

//email
TextFormField _emailField() => TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: _defaultInputDecoration(label: 'Email'),
    );

//password
TextFormField _passwordField() => TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: _defaultInputDecoration(label: 'Password'),
    );

//confirmPassword
TextFormField _confirmPasswordField() => TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: _defaultInputDecoration(label: 'Confirm Password'),
    );

//AgreeToTos
// ---> i get errors when i put this above. can't seem find the error. for the meantime i put it here
bool agreeToTos = false;

Row _agreement() => Row(
      children: [
        Theme(
          child: Checkbox(
              value: agreeToTos,
              activeColor: Colors.blue,
              checkColor: MLColors.primary,
              onChanged: (value) {}),
          data: ThemeData(unselectedWidgetColor: Colors.white38),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "I agree with the ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(7)),
            ),
            Text(
              "Terms and Conditions",
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(7)),
            ),
          ],
        )
      ],
    );

//rememberMe
bool remember = false;

Row _rememberMe() => Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Theme(
          child: Checkbox(
              value: remember,
              activeColor: Colors.blue,
              checkColor: MLColors.primary,
              onChanged: (value) {}),
          data: ThemeData(unselectedWidgetColor: Colors.white38),
        ),
        Text(
          "Remember Me ",
          style: TextStyle(
              color: Colors.white, fontSize: getProportionateScreenWidth(7)),
        ),
      ],
    );

_defaultInputDecoration({
  required String label,
}) {
  return InputDecoration(
    labelStyle: TextStyle(color: Colors.white),
    labelText: label,
    contentPadding: EdgeInsets.zero,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
    enabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
  );
}

//TO DO: validations