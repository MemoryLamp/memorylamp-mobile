import 'package:flutter/material.dart';
import 'package:memory_lamp/constants/games_list.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/game.dart';
import 'package:memory_lamp/theming/defaults.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_outlined_button.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class PickGameScreen extends StatelessWidget {
  static const String routeName = "/pickGame";

  const PickGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MLOutlinedButton _choiceButton(Game _game) {
      return MLOutlinedButton(
        child: MLText(_game.name),
        width: SizeMQ.width! * .65,
        onPressed: () => Navigator.pushNamed(context, _game.routeName),
      );
    }

    return Scaffold(
      appBar: AppBar(title: MLText("Memorize"), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: MLDefaults.screenPadding,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _header(),
              ]..addAll(
                  List.generate(
                    gameList.length,
                    (index) => _choiceButton(gameList[index]),
                  ),
                ),
            ),
          ),
        ),
      ),
    );
  }

  Padding _header() {
    return Padding(
      padding: MLDefaults.screenPadding,
      child: MLText(
        "How Do you want to memorize the Verse?",
        style: MLFont.memorizeHeader,
        textAlign: TextAlign.center,
      ),
    );
  }
}
