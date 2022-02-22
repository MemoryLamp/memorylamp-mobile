import 'package:flutter/material.dart';

import '../../models/emotion.dart';
import '../../screens/emotions.dart';
import '../../theming/ml_font.dart';
import '../compound_widgets/labeled_icon.dart';

class EmotionButton extends StatelessWidget {
  final Emotion emotion;
  const EmotionButton(this.emotion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: OutlinedButton(
        onPressed: () => Navigator.pushNamed(
          context,
          EmotionsScreen.routeName,
          arguments: emotion,
        ),
        child: LabeledIcon(
          icon: emotion.image,
          label: Text(
            emotion.name,
            style: MLFont.mediumS,
          ),
        ),
      ),
    );
  }
}
