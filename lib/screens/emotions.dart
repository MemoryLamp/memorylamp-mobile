import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/emotion.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/theming/defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_outlined_button.dart';
import 'package:memory_lamp/widgets/buttons/ml_text_button.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/ml_container.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class EmotionsScreen extends StatelessWidget {
  static const routeName = "/emotions";

  final Emotion _emotion;

  const EmotionsScreen(this._emotion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _header(),
              _verseList(_emotion.verses),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar(context) {
    return AppBar(
      centerTitle: true,
      title: MLText(_emotion.name),
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.chevron_left_rounded, size: 40),
      ),
      actions: [
        IconButton(
          onPressed: () => print("nothing here yet"),
          icon: Icon(Icons.share_outlined, size: 30),
        )
      ],
    );
  }

  Column _header() {
    return Column(
      children: [
        Image.asset(
          AssetPaths.image("emotion-img.png"),
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        MLContainer(
          backgroundColor: MLColors.primary,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MLText(
                _emotion.highlightVerse.toVerseFormat,
                fontColor: Colors.white,
              ),
              Padding(
                padding: MLDefaults.screenPadding,
                child: MLText(
                  _emotion.highlightVerse.verse,
                  fontColor: Colors.white,
                  textAlign: TextAlign.center,
                  fontWeight: MLFont.light,
                ),
              ),
              Row(
                children: [
                  MLOutlinedButton(
                    child: MLText(
                      "START",
                      fontColor: Colors.white,
                    ),
                  ),
                  MLTextButton(child: MLText("PENDING")),
                  MLTextButton(child: MLText("COMPLETED")),
                ],
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
                  AssetPaths.icon("book.png"),
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
