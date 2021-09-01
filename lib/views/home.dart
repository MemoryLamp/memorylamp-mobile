import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/emotion.dart';
import 'package:memory_lamp/models/enums/views.dart';
import 'package:memory_lamp/models/icon_label_pair.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_outlined_button.dart';
import 'package:memory_lamp/widgets/buttons/ml_text_button.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/ml_container.dart';
import 'package:memory_lamp/widgets/ml_text.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              _verseOfTheDay(),
              _emotions(),
              _books(),
              _games(),
            ],
          ),
        ),
      ),
    );
  }

  Column _verseOfTheDay() {
    return Column(
      children: [
        LabeledIcon(
          icon: Icon(Icons.home),
          label: MLText(
            "Verse of the day",
            style: MLFont.bannerText01,
          ),
        ),
        MLContainer(
          backgroundColor: MLColors.primary,
          margin: const EdgeInsets.symmetric(vertical: 16.0),
          padding: const EdgeInsets.all(32.0),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MLText(
                  '"BUT THE LORD STOOD WITH ME AND GAVE ME STRENGTH"',
                  fontColor: Colors.white,
                  textAlign: TextAlign.center,
                ),
              ),
              MLText(
                "2 TIMOTHY 4:17",
                fontSize: MLFont.small,
                fontColor: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding _emotions() {
    Image _emotionIcon(String _emotionName) {
      return Image.asset(
        AssetManager.emotion(_emotionName),
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
        name: "Hope",
        image: _emotionIcon("hope.png"),
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
        name: "Love",
        image: _emotionIcon("love.png"),
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
        name: "Joy",
        image: _emotionIcon("joy.png"),
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
        name: "Peace",
        image: _emotionIcon("peace.png"),
        verses: _verses,
        highlightVerse: _highlightVerse,
      ),
    ];

    Consumer _emotionButton(int index) {
      return Consumer<ViewProvider>(
        builder: (BuildContext context, viewProvider, Widget? child) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: MLOutlinedButton(
              onPressed: () => viewProvider.changeView(
                Views.emotions,
                arg: _emotionsList[index],
              ),
              child: LabeledIcon(
                icon: _emotionsList[index].image!,
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
          LabeledIcon(
            icon: Icon(Icons.home),
            label: MLText(
              "Get comforted by Bible verses",
              style: MLFont.bannerText01,
            ),
          ),
          MLContainer(
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 4,
              children: List.generate(_emotionsList.length, (index) {
                return _emotionButton(index);
              })
                ..add(
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: MLOutlinedButton(
                      onPressed: () => print("nothing here yet"),
                      child: MLText(
                        "•••",
                        fontSize: MLFont.medium,
                      ),
                    ),
                  ),
                ),
            ),
          )
        ],
      ),
    );
  }

  Padding _books() {
    const List<IconLabelPair> _bookList = [
      IconLabelPair(name: "Genesis", icon: Icons.book),
      IconLabelPair(name: "Exodus", icon: Icons.book),
      IconLabelPair(name: "Leviticus", icon: Icons.book),
      IconLabelPair(name: "Numbers", icon: Icons.book),
      IconLabelPair(name: "Deutronomy", icon: Icons.book),
      IconLabelPair(name: "more", icon: Icons.more_horiz),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          LabeledIcon(
            icon: Icon(Icons.home),
            label: MLText(
              "Start memorizing Bible verses",
              style: MLFont.bannerText01,
            ),
          ),
          MLContainer(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 1.1,
              children: List.generate(_bookList.length, (index) {
                return _bookButton(_bookList[index]);
              }),
            ),
          )
        ],
      ),
    );
  }

  MLTextButton _bookButton(IconLabelPair _book) {
    return MLTextButton(
      margin: const EdgeInsets.all(8.0),
      borderRadius: BorderRadius.circular(12),
      width: SizeMQ.height! * .1,
      height: SizeMQ.height! * .1,
      onPressed: () => print("nothing here yet"),
      child: LabeledIcon(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        icon: Expanded(child: Icon(_book.icon)),
        label: Expanded(
          child: MLText(
            _book.name,
            fontSize: MLFont.mediumSmall,
          ),
        ),
      ),
    );
  }

  Padding _games() {
    const List<IconLabelPair> _gameList = [
      const IconLabelPair(
          name: "Speak-To-Photo", icon: Icons.speaker_group_outlined),
      const IconLabelPair(
          name: "Speak-To-Photo", icon: Icons.speaker_group_outlined),
      const IconLabelPair(
          name: "Speak-To-Photo", icon: Icons.speaker_group_outlined),
      const IconLabelPair(
          name: "Speak-To-Photo", icon: Icons.speaker_group_outlined),
      const IconLabelPair(
          name: "Speak-To-Photo", icon: Icons.speaker_group_outlined),
      const IconLabelPair(
          name: "Fill In The Blanks", icon: Icons.speaker_group_outlined),
    ];

    MLTextButton _gameButton(IconLabelPair _game) {
      return MLTextButton(
        margin: const EdgeInsets.all(8.0),
        width: SizeMQ.height! * .2,
        borderRadius: BorderRadius.circular(12),
        onPressed: () => print("nothing here yet"),
        child: LabeledIcon(
          direction: Axis.vertical,
          icon: Expanded(child: Icon(_game.icon)),
          label: Expanded(
            child: MLText(
              _game.name,
              fontSize: MLFont.mediumSmall,
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          LabeledIcon(
            icon: Image.asset(
              AssetManager.icon("game.png"),
              height: MLFont.large,
            ),
            label: MLText(
              "Ready For A Challenge?",
              style: MLFont.bannerText01,
            ),
          ),
          SizedBox(
            height: SizeMQ.height! * .2,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  _gameList.length,
                  (int index) => _gameButton(_gameList[index]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
