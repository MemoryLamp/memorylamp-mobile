import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/emotion.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_outlined_button.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                _header(_emotion),
                _verseList(_emotion.verses),
              ],
            ),
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
                fontWeight: MLFont.light,
              ),
              MLText(
                _emotion.highlightVerse.toVerseFormat,
                fontColor: Colors.white,
              )
            ],
          ),
        ),
      ],
    );
  }

  Padding _verseList(List<Verse> _verses) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: List.generate(
          _verses.length,
          (index) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LabeledIcon(
                spaceBetween: 16,
                icon: Image.asset(
                  AssetManager.icon("book.png"),
                  width: MLFont.large,
                ),
                label: MLText(
                  _verses[index].toVerseFormat,
                  fontWeight: MLFont.semiBold,
                  fontSize: MLFont.medium,
                ),
              ),
              Spacer(),
              MLOutlinedButton(
                width: SizeMQ.width! * .4,
                child: MLText("Memorize"),
                onPressed: () => print("nothing here yet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
