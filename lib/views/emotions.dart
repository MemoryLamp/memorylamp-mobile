import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/models/emotion.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/screens/emotions.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_text_button.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/ml_container.dart';
import 'package:memory_lamp/widgets/ml_text.dart';
import 'package:provider/provider.dart';

class EmotionsView extends StatelessWidget {
  const EmotionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
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
    return LabeledIcon(
      icon: Icon(
        Icons.check_circle_outline,
        color: MLColors.secondary,
        size: 32,
      ),
      label: MLText(
        "Get comforted by Bible verses",
        style: MLFont.bannerText01,
      ),
    );
  }

  Padding _emotions() {
    Image _emotionIcon(String _emotionName) {
      return Image.asset(
        AssetPaths.emotion(_emotionName),
        width: MLFont.large,
      );
    }

    // hardcoded temporarily
    Verse _highlightVerse = Verse(
      book: "Isaiah",
      chapter: 26,
      number: 3,
      verse:
          "You keep him in perfect peace whose mind is stayed on you, because He trusts in you.",
    );
    List<Verse> _verses = [
      Verse(
        book: "Genesis",
        chapter: 1,
        number: 1,
        verse:
            "Et consectetur ea et ut Lorem veniam culpa velit ea cillum Lorem esse ad nulla.",
      ),
      Verse(
        book: "Psalm",
        chapter: 19,
        number: 1,
        verse:
            "Nostrud veniam ea mollit aliqua dolore tempor in exercitation nulla ea.",
      )
    ];

    List<Emotion> _emotionsList = [
      Emotion(
        name: "Happy",
        image: _emotionIcon("happy.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
      Emotion(
        name: "Cheerful",
        image: _emotionIcon("cheerful.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
      Emotion(
        name: "Loved",
        image: _emotionIcon("loved.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
      Emotion(
        name: "Joyful",
        image: _emotionIcon("joyful.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
      Emotion(
        name: "Relief",
        image: _emotionIcon("relief.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
      Emotion(
        name: "Exhausted",
        image: _emotionIcon("exhausted.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
      Emotion(
        name: "Sad",
        image: _emotionIcon("sad.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
      Emotion(
        name: "Drained",
        image: _emotionIcon("drained.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
      Emotion(
        name: "Tired",
        image: _emotionIcon("tired.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
      Emotion(
        name: "Angry",
        image: _emotionIcon("angry.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
      Emotion(
        name: "Hopeless",
        image: _emotionIcon("hopeless.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
      Emotion(
        name: "Betrayed",
        image: _emotionIcon("betrayed.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
    ];

    Consumer _emotionButton(int index) {
      return Consumer<ViewProvider>(
        builder: (BuildContext context, viewProvider, Widget? child) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: MLTextButton(
              onPressed: () => Navigator.pushNamed(
                context,
                EmotionsScreen.routeName,
                arguments: _emotionsList[index],
              ),
              child: LabeledIcon(
                icon: _emotionsList[index].icon,
                label: MLText(
                  _emotionsList[index].name,
                  fontSize: MLFont.medium,
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
          MLContainer(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 4,
              children: List.generate(
                _emotionsList.length,
                (index) {
                  return _emotionButton(index);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
