import 'package:flutter/material.dart';
import 'package:memory_lamp/constants/emotion_list.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/screens/emotions.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:provider/provider.dart';

class EmotionsView extends StatelessWidget {
  const EmotionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: MLDefaults.screenPadding,
          child: Column(
            children: [
              _banner(),
              _emotions(),
            ],
          ),
        ),
      ),
    );
  }

  LabeledIcon _banner() {
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

  Padding _emotions() {
    Consumer _emotionButton(int index) {
      return Consumer<ViewProvider>(
        builder: (BuildContext context, viewProvider, Widget? child) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: OutlinedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                EmotionsScreen.routeName,
                arguments: emotionsList[index],
              ),
              child: LabeledIcon(
                icon: emotionsList[index].image,
                label: Text(
                  emotionsList[index].name,
                  style: MLFont.mediumS,
                ),
              ),
            ),
          );
        },
      );
    }

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
                return _emotionButton(index);
              },
            ),
          )
        ],
      ),
    );
  }
}
