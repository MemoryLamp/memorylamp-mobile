import 'package:flutter/material.dart';
import 'package:memory_lamp/api/models/emotion.dart';
import 'package:memory_lamp/api/models/game.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_outlined_button.dart';
import 'package:memory_lamp/widgets/buttons/ml_text_button.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/compound_widgets/ml_appbar.dart';
import 'package:memory_lamp/widgets/compound_widgets/ml_drawer.dart';
import 'package:memory_lamp/widgets/ml_container.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MLAppbar(),
      drawer: MLDrawer(),
      body: SingleChildScrollView(
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
    const List<Emotion> _emotionsList = [
      const Emotion(name: "Hope", icon: Icons.place_rounded),
      const Emotion(name: "Sad", icon: Icons.place_rounded),
      const Emotion(name: "Love", icon: Icons.place_rounded),
      const Emotion(name: "Drained", icon: Icons.place_rounded),
      const Emotion(name: "Joy", icon: Icons.place_rounded),
      const Emotion(name: "Angry", icon: Icons.place_rounded),
      const Emotion(name: "Peace", icon: Icons.place_rounded),
      const Emotion(name: "•••", icon: Icons.place_rounded),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: MLOutlinedButton(
                    onPressed: () => print("nothing here yet"),
                    child: LabeledIcon(
                      icon: Icon(_emotionsList[index].icon),
                      label: MLText(
                        _emotionsList[index].name,
                        fontSize: MLFont.medium,
                      ),
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }

  Column _books() {
    const List<String> _bookList = [
      "Genesis",
      "Exodus",
      "Leviticus",
      "Numbers",
      "Deutronomy",
      "•••",
    ];

    return Column(
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
    );
  }

  MLTextButton _bookButton(String _book) {
    return MLTextButton(
      margin: const EdgeInsets.all(8.0),
      width: SizeMQ.height! * .1,
      height: SizeMQ.height! * .1,
      onPressed: () => print("nothing here yet"),
      child: LabeledIcon(
        direction: Axis.vertical,
        icon: Expanded(child: Icon(Icons.book)),
        label: Expanded(
          child: MLText(
            _book,
            fontSize: MLFont.mediumSmall,
          ),
        ),
      ),
    );
  }

  Column _games() {
    const List<Game> _gameList = [
      const Game(name: "Speak-To-Photo", icon: Icons.speaker_group_outlined),
      const Game(name: "Speak-To-Photo", icon: Icons.speaker_group_outlined),
      const Game(name: "Speak-To-Photo", icon: Icons.speaker_group_outlined),
      const Game(name: "Speak-To-Photo", icon: Icons.speaker_group_outlined),
      const Game(name: "Speak-To-Photo", icon: Icons.speaker_group_outlined),
      const Game(
          name: "Fill In The Blanks", icon: Icons.speaker_group_outlined),
    ];

    return Column(
      children: [
        LabeledIcon(
          icon: Icon(Icons.home),
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
    );
  }

  MLTextButton _gameButton(Game _game) {
    return MLTextButton(
      margin: const EdgeInsets.all(8.0),
      width: SizeMQ.height! * .2,
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
}
