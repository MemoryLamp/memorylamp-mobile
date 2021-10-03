import 'package:flutter/material.dart';
import 'package:memory_lamp/widgets/compound_widgets/memorize_scaffold.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class ReciteThisVerseScreen extends StatelessWidget {
  static const String routeName = "/reciteThisVerse";

  const ReciteThisVerseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MemorizeScaffold(
      body: MLText("Recite this verse"),
    );
  }
}
