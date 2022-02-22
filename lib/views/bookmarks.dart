import 'package:flutter/material.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/screens/games/pick_game.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';

class BookmarksView extends StatelessWidget {
  const BookmarksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              _ToggleButtons(),
              _BookmarkList(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ToggleButtons extends StatelessWidget {
  const _ToggleButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: OutlinedButton(
            child: const Text("Collections"),
            onPressed: () => print("nothing here yet"),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ElevatedButton(
            child: const Text("Memorize"),
            onPressed: () => print("nothing here yet"),
          ),
        )
      ],
    );
  }
}

class _BookmarkList extends StatelessWidget {
  const _BookmarkList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Verse _sampleVerse = const Verse(
      book: "Psalm",
      chapter: 119,
      number: 1,
      verse:
          "Blessed are they whose ways are blameless, who walk according to the law of the LORD. Blessed are they who keep his statutes and seek him with all their heart. ... I will praise you with an upright heart as I learn your righteous laws.",
    );

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: List.generate(10, (index) => _VerseContainer(_sampleVerse)),
      ),
    );
  }
}

class _VerseContainer extends StatelessWidget {
  final Verse verse;
  const _VerseContainer(this.verse, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: MLDefaults.rounded,
        color: MLColors.secondaryLight,
      ),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LabeledIcon(
                icon: const Icon(Icons.book),
                label: Text(
                  verse.toVerseFormat,
                  style: MLFont.mediumSemiBold,
                ),
              ),
              IconButton(
                onPressed: () => print("nothing here yet"),
                icon: const Icon(Icons.share_outlined),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              verse.verse,
              textAlign: TextAlign.center,
              style: MLFont.italic,
            ),
          ),
          Builder(builder: (context) {
            return SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("Begin"),
                style: ElevatedButton.styleFrom(
                  primary: MLColors.secondary,
                ),
                onPressed: () => Navigator.pushNamed(
                  context,
                  PickGameScreen.routeName,
                  arguments: verse,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
