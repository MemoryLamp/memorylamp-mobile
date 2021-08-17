import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              LabeledIcon(
                icon: Icons.home,
                label: MLText(
                  "Verse of the day",
                  style: MLFont.bannerText01,
                ),
              ),
              _verseOfTheDay(),
              LabeledIcon(
                icon: Icons.home,
                label: MLText(
                  "Get comforted by Bible verses",
                  style: MLFont.bannerText01,
                ),
              ),
              LabeledIcon(
                icon: Icons.home,
                label: MLText(
                  "Start memorizing Bible verses",
                  style: MLFont.bannerText01,
                ),
              ),
              LabeledIcon(
                icon: Icons.home,
                label: MLText(
                  "Ready For A Challenge?",
                  style: MLFont.bannerText01,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  MLContainer _verseOfTheDay() {
    return MLContainer(
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
    );
  }
}
