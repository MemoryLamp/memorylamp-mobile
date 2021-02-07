import 'package:flutter/material.dart';
import 'package:memory_lamp/package/my_button.dart';
import 'package:memory_lamp/package/size.dart';
import 'package:memory_lamp/screens/login/sign_up_cta.dart';
import 'package:memory_lamp/screens/login/widgets/email_field.dart';
import 'package:memory_lamp/screens/login/widgets/password_field.dart';
import 'package:memory_lamp/screens/login/widgets/remember_me.dart';

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
        EmailField(),
        SizedBox(height: SizeMQ.screenHeight * .03),
        PasswordField(),
        SizedBox(height: SizeMQ.screenHeight * .03),
        RememberMe(),
        SizedBox(height: SizeMQ.screenHeight * .03),
        MyButton(
          press: () {},
          text: 'Login',
        ),
        SizedBox(height: SizeMQ.screenHeight * .03),
        SignUpCta(),
      ],
    );
  }
}
