import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/defaults.dart';

class LogoutView extends StatelessWidget {
  const LogoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: MLDefaults.screenPadding,
          child: Column(
            children: const [
              Text(
                "This isn't actually supposed to be a view, I just added it here temporarily",
              )
            ],
          ),
        ),
      ),
    );
  }
}
