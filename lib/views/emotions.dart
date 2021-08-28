import 'package:flutter/material.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class EmotionsView extends StatelessWidget {
  const EmotionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MLText("Emotions"),
    );
  }
}
