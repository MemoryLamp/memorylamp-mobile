import 'package:flutter/material.dart';
import 'package:memory_lamp/models/completed_game.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/compound_widgets/user_stats.dart';

import '../constants/temp_hardcoded_data.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const UserStats(),
            Padding(
              padding: MLDefaults.screenPadding,
              child: Column(
                children: const [
                  _Banner(),
                  _CompletedVerses(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LabeledIcon(
      icon: Icon(
        Icons.check_circle_outline,
        color: MLColors.secondary,
        size: 32,
      ),
      label: Text(
        "Completed Verses",
        style: MLFont.bannerText01,
      ),
    );
  }
}

class _CompletedVerses extends StatelessWidget {
  const _CompletedVerses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _columnHeaders = ["Verse", "Activity", "Time"];

    return Container(
      decoration: BoxDecoration(
        boxShadow: MLDefaults.boxShadow,
        color: Colors.white,
        borderRadius: MLDefaults.rounded,
      ),
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: MLColors.primary,
              borderRadius: MLDefaults.roundedTop,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                _columnHeaders.length,
                (index) => Text(
                  _columnHeaders[index],
                  style: MLFont.mediumLargeWhiteSemiBold,
                ),
              ),
            ),
          ),
          ...List.generate(
            completedGames.length,
            (index) => _RowBuilder(completedGame: completedGames[index]),
          ),
        ],
      ),
    );
  }
}

class _RowBuilder extends StatelessWidget {
  final CompletedGame completedGame;
  const _RowBuilder({required this.completedGame, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(completedGame.verse.toVerseFormat),
          Text(completedGame.name),
          Text(completedGame.time),
        ],
      ),
    );
  }
}
