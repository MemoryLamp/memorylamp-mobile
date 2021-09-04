import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/icon_label_pair.dart';
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
    Image _emotionIcon(String _emotionName) {
      return Image.asset(
        AssetManager.emotion(_emotionName),
        width: MLFont.large,
      );
    }

    List<IconLabelPair> _emotionsList = [
      IconLabelPair.image(name: "Hope", image: _emotionIcon("hope.png")),
      IconLabelPair.image(name: "Sad", image: _emotionIcon("sad.png")),
      IconLabelPair.image(name: "Love", image: _emotionIcon("love.png")),
      IconLabelPair.image(name: "Drained", image: _emotionIcon("drained.png")),
      IconLabelPair.image(name: "Joy", image: _emotionIcon("joy.png")),
      IconLabelPair.image(name: "Angry", image: _emotionIcon("angry.png")),
      IconLabelPair.image(name: "Peace", image: _emotionIcon("peace.png")),
    ];

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
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: MLOutlinedButton(
                    onPressed: () => print("nothing here yet"),
                    child: LabeledIcon(
                      icon: _emotionsList[index].image!,
                      label: MLText(
                        _emotionsList[index].name,
                        fontSize: MLFont.medium,
                      ),
                    ),
                  ),
                );
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
      width: SizeMQ.height! * .1,
      height: SizeMQ.height! * .1,
      onPressed: () => print("nothing here yet"),
      child: LabeledIcon(
        direction: Axis.vertical,
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

  MLTextButton _gameButton(IconLabelPair _game) {
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
