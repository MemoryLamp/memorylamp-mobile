import 'package:flutter/material.dart';
import 'package:memory_lamp/constants/temp_hardcoded_data.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';

import '../widgets/reusable/emotion_button.dart';

class EmotionsView extends StatelessWidget {
  const EmotionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: MLDefaults.screenPadding,
          child: Column(
            children: const [
              _Banner(),
              _Emotions(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LabeledIcon(
      icon: Icon(
        Icons.check_circle_outline,
        color: MLColors.secondary,
        size: 32,
      ),
      label: Text(
        "Get comforted by Bible verses",
        style: MLFont.bannerText01,
      ),
    );
  }
}

class _Emotions extends StatelessWidget {
  const _Emotions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 4,
            children: List.generate(
              emotionsList.length,
              (index) {
                return EmotionButton(emotionsList[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
