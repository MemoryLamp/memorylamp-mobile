import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/theming/ml_colors.dart';

class MLForm extends StatefulWidget {
  final bool loadForSignup;
  final bool loadForLogin;
  const MLForm({this.loadForSignup = false, this.loadForLogin = false});
  @override
  _MLFormState createState() => _MLFormState();
}

class _MLFormState extends State<MLForm> {
  final _mlFormKey = GlobalKey<FormState>();
  bool? remember = false;
  bool? agreeToTos = false;

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
          if (widget.loadForLogin) _rememberMe(),
          SizedBox(height: SizeMQ.height! * .03),
          if (widget.loadForSignup) _emailField(),
          SizedBox(height: SizeMQ.height! * .03),
          if (widget.loadForSignup) _passwordField(),
          SizedBox(height: SizeMQ.height! * .03),
          if (widget.loadForSignup) _confirmPasswordField(),
          SizedBox(height: SizeMQ.height! * .03),
          if (widget.loadForSignup) _agreement(),
        ],
      ),
    );
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
        decoration: _defaultInputDecoration(
          label: 'Password',
          icon: Icon(Icons.visibility),
        ),
      );

//confirmPassword
  TextFormField _confirmPasswordField() => TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: _defaultInputDecoration(
          label: 'Confirm Password',
          icon: Icon(Icons.visibility),
        ),
      );

//AgreeToTos
  Row _agreement() => Row(
        children: [
          Theme(
            child: Checkbox(
                value: agreeToTos,
                activeColor: Colors.white,
                checkColor: MLColors.primary,
                onChanged: (value) {
                  setState(() {
                    agreeToTos = value;
                  });
                }),
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
  Row _rememberMe() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Theme(
            child: Checkbox(
                value: remember,
                activeColor: Colors.white,
                checkColor: MLColors.primary,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                }),
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
    Icon? icon,
  }) {
    return InputDecoration(
      labelStyle: TextStyle(color: Colors.white),
      labelText: label,
      suffixIcon: icon,
      contentPadding: EdgeInsets.zero,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    );
  }
}

//TO DO: validations