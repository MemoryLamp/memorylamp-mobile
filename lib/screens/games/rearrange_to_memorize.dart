import 'package:flutter/material.dart';
import 'package:memory_lamp/widgets/compound_widgets/memorize_scaffold.dart';

class RearrangeToMemorizeScreen extends StatelessWidget {
  static const String routeName = "/rearrangeToMemorize";

  const RearrangeToMemorizeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MemorizeScaffold(
      body: Text("Rearrange to memorize"),
    );
  }
}
