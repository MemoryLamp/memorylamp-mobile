import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/models/emotion.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';

class EmotionsScreen extends StatelessWidget {
  static const routeName = "/emotions";

  final Emotion emotion;

  const EmotionsScreen(this.emotion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(emotion.name),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.chevron_left_rounded, size: 40),
        ),
        actions: [
          IconButton(
            onPressed: () => print("nothing here yet"),
            icon: const Icon(Icons.share_outlined, size: 30),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _Header(emotion: emotion),
              _VerseList(verses: emotion.verses),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final Emotion emotion;

  const _Header({required this.emotion, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AssetPaths.image("emotion-img.png"),
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Container(
          color: MLColors.primary,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                emotion.highlightVerse.toVerseFormat,
                style: MLFont.mediumWhite,
              ),
              Padding(
                padding: MLDefaults.screenPadding,
                child: Text(
                  emotion.highlightVerse.verse,
                  textAlign: TextAlign.center,
                  style: MLFont.mediumWhiteLight,
                ),
              ),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () => {},
                    child: const Text(
                      "START",
                      style: MLFont.mediumWhite,
                    ),
                  ),
                  TextButton(
                    onPressed: () => {},
                    child: const Text("PENDING"),
                  ),
                  TextButton(
                    onPressed: () => {},
                    child: const Text("COMPLETED"),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _VerseList extends StatelessWidget {
  final List<Verse> verses;

  const _VerseList({required this.verses, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: List.generate(
          verses.length,
          (index) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              LabeledIcon(
                spaceBetween: 16,
                icon: Image.asset(
                  AssetPaths.icon("book.png"),
                  width: MLFont.large,
                ),
                label: Text(
                  verses[index].toVerseFormat,
                  style: MLFont.mediumSemiBold,
                ),
              ),
              const Spacer(),
              OutlinedButton(
                child: const Text("Memorize"),
                onPressed: () => print("nothing here yet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
