import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/screens/games/pick_game.dart';
import 'package:memory_lamp/theming/defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_outlined_button.dart';
import 'package:memory_lamp/widgets/buttons/ml_text_button.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/ml_container.dart';

class BookmarksView extends StatelessWidget {
  const BookmarksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _toggleButtons(),
              _bookmarkList(),
            ],
          ),
        ),
      ),
    );
  }

  Row _toggleButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MLOutlinedButton(
          width: SizeMQ.width! * .4,
          child: const Text("Collections"),
          onPressed: () => print("nothing here yet"),
        ),
        MLTextButton(
          width: SizeMQ.width! * .4,
          child: const Text("Memorize"),
          onPressed: () => print("nothing here yet"),
        )
      ],
    );
  }

  Padding _bookmarkList() {
    Verse _sampleVerse = const Verse(
      book: "Psalm",
      chapter: 119,
      number: 1,
      verse:
          "Blessed are they whose ways are blameless, who walk according to the law of the LORD. Blessed are they who keep his statutes and seek him with all their heart. ... I will praise you with an upright heart as I learn your righteous laws.",
    );

    MLContainer _verseContainer(Verse _verse) {
      return MLContainer(
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.all(16),
        borderRadius: MLDefaults.rounded,
        width: double.infinity,
        backgroundColor: MLColors.secondaryLight,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabeledIcon(
                  icon: const Icon(Icons.book),
                  label: Text(
                    _verse.toVerseFormat,
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
                _verse.verse,
                textAlign: TextAlign.center,
                style: MLFont.italic,
              ),
            ),
            Builder(builder: (context) {
              return MLTextButton(
                backgroundColor: MLColors.secondary,
                width: double.infinity,
                child: const Text("Begin"),
                onPressed: () => Navigator.pushNamed(
                  context,
                  PickGameScreen.routeName,
                  arguments: _verse,
                ),
              );
            }),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: List.generate(10, (index) => _verseContainer(_sampleVerse)),
      ),
    );
  }
}
