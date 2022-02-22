import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/game.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';
import 'package:memory_lamp/theming/ml_font.dart';

import '../../constants/temp_hardcoded_data.dart';

class PickGameScreen extends StatelessWidget {
  static const String routeName = "/pickGame";

  final Verse verse;

  const PickGameScreen(this.verse, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Memorize"), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: MLDefaults.screenPadding,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const _Header(),
                ...List.generate(
                  gameList.length,
                  (index) => _ChoiceButton(
                    game: gameList[index],
                    verse: verse,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MLDefaults.screenPadding,
      child: const Text(
        "How Do you want to memorize the Verse?",
        style: MLFont.memorizeHeader,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _ChoiceButton extends StatelessWidget {
  final Game game;
  final Verse verse;

  const _ChoiceButton({
    required this.game,
    required this.verse,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeMQ.width! * .65,
      child: OutlinedButton(
        child: Text(game.name),
        onPressed: () => Navigator.pushNamed(
          context,
          game.routeName,
          arguments: verse,
        ),
      ),
    );
  }
}
