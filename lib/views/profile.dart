import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:memory_lamp/models/completed_game.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/compound_widgets/user_stats.dart';
import 'package:memory_lamp/widgets/ml_container.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            _userStats(),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  _banner(),
                  _completedVerses(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  UserStats _userStats() => UserStats();

  LabeledIcon _banner() {
    return LabeledIcon(
      icon: Icon(
        Icons.check_circle_outline,
        color: MLColors.secondary,
        size: 32,
      ),
      label: MLText(
        "Completed Verses",
        style: MLFont.bannerText01,
      ),
    );
  }

  MLContainer _completedVerses() {
    List<String> _columnHeaders = ["Verse", "Activity", "Time"];
    // temporary hardcoded data
    List<CompletedGame> _completedGames = List.generate(20, (index) {
      return CompletedGame(
        verse: Verse(
          book: "Genesis",
          chapter: 1,
          number: index,
          verse: "Hello",
        ),
        name: "Fill in the Blanks",
        time: "01:5$index",
      );
    });

    Padding _rowBuilder(CompletedGame _item) {
      return Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MLText(_item.verse.toVerseFormat),
            MLText(_item.name),
            MLText(_item.time),
          ],
        ),
      );
    }

    return MLContainer(
      backgroundColor: Colors.white,
      hasShadow: true,
      borderRadius: BorderRadius.all(Radius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          MLContainer(
            padding: const EdgeInsets.all(8),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            backgroundColor: MLColors.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                _columnHeaders.length,
                (index) => MLText(
                  _columnHeaders[index],
                  fontWeight: MLFont.semiBold,
                  fontSize: MLFont.mediumLarge,
                  fontColor: Colors.white,
                ),
              ),
            ),
          ),
        ]..addAll(
            List.generate(
              _completedGames.length,
              (index) {
                return _rowBuilder(_completedGames[index]);
              },
            ),
          ),
      ),
    );
  }
}
