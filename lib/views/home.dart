import 'package:flutter/material.dart';
import 'package:memory_lamp/constants/temp_hardcoded_data.dart';
import 'package:memory_lamp/helpers/asset_paths.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/enums/views.dart';
import 'package:memory_lamp/models/game.dart';
import 'package:memory_lamp/models/icon_label_pair.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/screens/games/pick_game.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/reusable/emotion_button.dart';
import 'package:provider/provider.dart';

import '../widgets/reusable/book_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: MLDefaults.screenPadding,
          child: Column(
            children: const [
              _VerseOfTheDay(),
              _Emotions(),
              _Books(),
              _Games(),
            ],
          ),
        ),
      ),
    );
  }
}

class _VerseOfTheDay extends StatelessWidget {
  const _VerseOfTheDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LabeledIcon(
          icon: Icon(Icons.home),
          label: Text(
            "Verse of the day",
            style: MLFont.bannerText01,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16.0),
          padding: const EdgeInsets.all(32.0),
          decoration: BoxDecoration(
            color: MLColors.primary,
            borderRadius: MLDefaults.rounded,
          ),
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '"BUT THE LORD STOOD WITH ME AND GAVE ME STRENGTH"',
                  style: MLFont.mediumWhite,
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                "2 TIMOTHY 4:17",
                style: MLFont.smallWhite,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Emotions extends StatelessWidget {
  const _Emotions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          const LabeledIcon(
            icon: Icon(Icons.home),
            label: Text(
              "Get comforted by Bible verses",
              style: MLFont.bannerText01,
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 4,
            children: List.generate(7, (index) {
              return EmotionButton(emotionsList[index]);
            })
              ..add(
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Consumer<ViewProvider>(
                    builder: (context, viewProvider, child) {
                      return OutlinedButton(
                        onPressed: () {
                          viewProvider.changeView(Views.emotions);
                        },
                        child: const Text(
                          "•••",
                          style: MLFont.mediumS,
                        ),
                      );
                    },
                  ),
                ),
              ),
          )
        ],
      ),
    );
  }
}

class _Books extends StatelessWidget {
  const _Books({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          const LabeledIcon(
            icon: Icon(Icons.home),
            label: Text(
              "Start memorizing Bible verses",
              style: MLFont.bannerText01,
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 1.1,
            children: List.generate(bookList.length >= 6 ? 6 : bookList.length,
                (index) {
              if (index == 5) {
                return BookButton(
                  const IconLabelPair(name: "more", icon: Icons.more_horiz),
                  onPressed: () => Provider.of<ViewProvider>(
                    context,
                    listen: false,
                  ).changeView(Views.books),
                );
              }
              return BookButton(bookList[index]);
            }),
          )
        ],
      ),
    );
  }
}

class _Games extends StatelessWidget {
  const _Games({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          LabeledIcon(
            icon: Image.asset(
              AssetPaths.icon("game.png"),
              height: MLFont.large,
            ),
            label: const Text(
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
                  (int index) => _GameButton(gameList[index]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _GameButton extends StatelessWidget {
  final Game game;
  const _GameButton(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      width: SizeMQ.height! * .2,
      decoration: BoxDecoration(
        borderRadius: MLDefaults.rounded,
      ),
      child: TextButton(
        onPressed: () => Navigator.pushNamed(
          context,
          PickGameScreen.routeName,
          arguments: sampleHardcodedVerse,
        ),
        child: LabeledIcon(
          direction: Axis.vertical,
          icon: Expanded(child: Icon(game.icon)),
          label: Expanded(
            child: Text(
              game.name,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
