import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/models/emotion.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/ml_container.dart';
import 'package:memory_lamp/widgets/ml_text.dart';
import 'package:provider/provider.dart';

class EmotionsView extends StatelessWidget {
  const EmotionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewProvider>(
      builder: (BuildContext context, viewProvider, Widget? child) {
        Emotion _emotion = viewProvider.arg;
        return SafeArea(
          child: Column(
            children: [
              _header(_emotion),
            ],
          ),
        );
      },
    );
  }

  Column _header(Emotion _emotion) {
    return Column(
      children: [
        Image.asset(
          AssetManager.image("emotion-img.png"),
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        MLContainer(
          backgroundColor: MLColors.primary,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: MLText(
                  _emotion.name.toUpperCase(),
                  fontColor: Colors.white,
                  fontWeight: MLFont.semiBold,
                  textAlign: TextAlign.center,
                  fontSize: MLFont.medium,
                ),
              ),
              MLText(
                _emotion.highlightVerse.verse,
                fontColor: Colors.white,
                textAlign: TextAlign.center,
                fontSize: MLFont.mediumSmall,
                fontWeight: MLFont.light,
              ),
              MLText(
                _emotion.highlightVerse.toVerseFormat,
                fontColor: Colors.white,
                fontSize: MLFont.mediumSmall,
              )
            ],
          ),
        ),
      ],
    );
  }
}
