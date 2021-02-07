import 'package:flutter/widgets.dart';
import 'package:memory_lamp/package/constants.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/package/texts.dart';
import 'package:memory_lamp/screens/login/login.dart';

class SignUpCta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NormalText(
          "Don’t have an account? ",
          size: getProportionateScreenWidth(16),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, LoginScreen.routeName),
          child: NormalText("Sign Up",
              size: getProportionateScreenWidth(16), color: PrimaryColor),
        ),
      ],
    );
  }
}
