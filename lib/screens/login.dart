import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:memory_lamp/defaults/buttons/ml_elevated_button.dart';
import 'package:memory_lamp/form/ml_form.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/screens/signupCallAction.dart';
import 'package:memory_lamp/theming/ml_colors.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login';
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MLColors.primary,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Container(
              height: SizeMQ.height! * .9,
              padding: EdgeInsets.symmetric(horizontal: SizeMQ.width! * .1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _welcome(),
                  SizedBox(width: SizeMQ.width! * .03),
                  MLForm(),
                  _loginButton(),
                  _orDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _googleLogin(),
                      SizedBox(width: SizeMQ.width! * .03),
                      _facebookLogin(),
                    ],
                  ),
                  SizedBox(width: SizeMQ.height! * .03),
                  SignUpHere(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ======  COMPONENTS

//WelcomeMessage
Column _welcome() => Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Welcome Back! ",
            style: TextStyle(
              color: Colors.white,
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.normal,
              height: 2,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Sign in to continue',
            style: (TextStyle(
              color: Colors.white54,
            )),
          ),
        ),
      ],
    );

//LoginButton
MLElevatedButton _loginButton() => MLElevatedButton(
      child: Text(
        'Log in',
        style: TextStyle(color: MLColors.primary),
      ),
      color: Colors.white,
      onPressed: () {
        print('Login');
      },
    );

//Facebook Login
Row _facebookLogin() => row(
      MaterialCommunityIcons.facebook,
      'Facebook',
      Colors.blue[900],
    );

//Google Login
Row _googleLogin() => row(
      MaterialCommunityIcons.google,
      'Google',
      Colors.red,
    );

//for soical media login
Row row(
  IconData icon,
  String title,
  Color? backgroundColor,
) {
  return Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      TextButton(
        onPressed: () {
          print('logged in');
        },
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: backgroundColor,
          minimumSize: Size(150, getProportionateScreenHeight(60)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 15,
            ),
            Text(title),
          ],
        ),
      ),
    ],
  );
}

//ORDivider
Row _orDivider() => Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        OrDivider(
          indent: 0,
          endIndent: 10,
        ),
        Text(
          'OR',
          style: TextStyle(color: Colors.white),
        ),
        OrDivider(
          indent: 10,
          endIndent: 0,
        ),
      ],
    );

class OrDivider extends StatelessWidget {
  final double indent;
  final double endIndent;

  const OrDivider({
    required this.indent,
    required this.endIndent,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: Colors.white,
        indent: indent,
        endIndent: endIndent,
        thickness: 1.0,
      ),
    );
  }
}
