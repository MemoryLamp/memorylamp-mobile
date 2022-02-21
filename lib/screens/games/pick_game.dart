import 'package:flutter/material.dart';
import 'package:memory_lamp/constants/games_list.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/game.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';
import 'package:memory_lamp/theming/ml_font.dart';

class PickGameScreen extends StatelessWidget {
  static const String routeName = "/pickGame";

  final Verse _verse;

  const PickGameScreen(this._verse, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedBox _choiceButton(Game _game) {
      return SizedBox(
        width: SizeMQ.width! * .65,
        child: OutlinedButton(
          child: Text(_game.name),
          onPressed: () => Navigator.pushNamed(
            context,
            _game.routeName,
            arguments: _verse,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Memorize"), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: MLDefaults.screenPadding,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _header(),
                ...List.generate(
                  gameList.length,
                  (index) => _choiceButton(gameList[index]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _header() {
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
