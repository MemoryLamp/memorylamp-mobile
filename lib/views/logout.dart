import 'package:flutter/material.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class LogoutView extends StatelessWidget {
  const LogoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              MLText(
                "This isn't actually supposed to be a view, I just added it here temporarily",
              )
            ],
          ),
        ),
      ),
    );
  }
}
