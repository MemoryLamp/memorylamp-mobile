import 'package:flutter/material.dart';
import 'package:memory_lamp/constants/emotion_list.dart';
import 'package:memory_lamp/constants/games_list.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/enums/views.dart';
import 'package:memory_lamp/models/game.dart';
import 'package:memory_lamp/models/icon_label_pair.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/screens/games/pick_game.dart';
import 'package:memory_lamp/theming/defaults.dart';
import 'package:memory_lamp/screens/emotions.dart';
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
          padding: MLDefaults.screenPadding,
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
          borderRadius: MLDefaults.rounded,
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
    Consumer _emotionButton(int index) {
      return Consumer<ViewProvider>(
        builder: (BuildContext context, viewProvider, Widget? child) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: MLOutlinedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                EmotionsScreen.routeName,
                arguments: emotionsList[index],
              ),
              child: LabeledIcon(
                icon: emotionsList[index].icon,
                label: MLText(
                  emotionsList[index].name,
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
              children: List.generate(7, (index) {
                return _emotionButton(index);
              })
                ..add(
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Consumer<ViewProvider>(
                      builder: (context, viewProvider, child) {
                        return MLOutlinedButton(
                          onPressed: () {
                            viewProvider.changeView(Views.emotions);
                          },
                          child: MLText(
                            "•••",
                            fontSize: MLFont.medium,
                          ),
                        );
                      },
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
    List<IconLabelPair> _bookList = [
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
      borderRadius: MLDefaults.rounded,
      width: SizeMQ.height! * .1,
      height: SizeMQ.height! * .1,
      onPressed: () => print("nothing here yet"),
      child: LabeledIcon(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.center,
        icon: Expanded(child: Icon(_book.icon)),
        label: Expanded(child: MLText(_book.name)),
      ),
    );
  }

  Padding _games() {
    Verse _sampleHardcodedVerse =
        Verse(book: "Genesis", chapter: 1, number: 1, verse: "Hello world");

    Builder _gameButton(Game _game) {
      return Builder(builder: (context) {
        return MLTextButton(
          margin: const EdgeInsets.all(8.0),
          width: SizeMQ.height! * .2,
          borderRadius: MLDefaults.rounded,
          onPressed: () => Navigator.pushNamed(
            context,
            PickGameScreen.routeName,
            arguments: _sampleHardcodedVerse,
          ),
          child: LabeledIcon(
            direction: Axis.vertical,
            icon: Expanded(child: Icon(_game.icon)),
            label: Expanded(
              child: MLText(_game.name),
            ),
          ),
        );
      });
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          LabeledIcon(
            icon: Image.asset(
              AssetPaths.icon("game.png"),
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
                  gameList.length,
                  (int index) => _gameButton(gameList[index]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
