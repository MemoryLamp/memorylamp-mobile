import 'package:flutter/material.dart';
import 'package:memory_lamp/widgets/compound_widgets/memorize_scaffold.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class RearrangeToMemorizeScreen extends StatelessWidget {
  static const String routeName = "/rearrangeToMemorize";

  const RearrangeToMemorizeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MemorizeScaffold(
      body: MLText("Rearrange to memorize"),
    );
  }
}
