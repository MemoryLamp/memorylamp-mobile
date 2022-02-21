import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/user_stats.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StreaksView extends StatelessWidget {
  const StreaksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            _userStats(),
            _statsContainer(),
          ],
        ),
      ),
    );
  }

  UserStats _userStats() => const UserStats();

  Padding _statsContainer() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _indicator(large: true),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: .9,
            children: List.generate(5, (_) => _indicator()),
          ),
        ],
      ),
    );
  }

  CircularPercentIndicator _indicator({bool large = false}) {
    Column _centerContent({
      required String percent,
      required String formatedVerse,
    }) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            percent,
            style: TextStyle(
              fontSize: large ? MLFont.medium * 2 : MLFont.medium,
              fontWeight: MLFont.bold,
            ),
          ),
          Text(
            formatedVerse,
            style: MLFont.smallPrimaryBold,
          ),
        ],
      );
    }

    return CircularPercentIndicator(
      radius: large ? SizeMQ.width! * .55 : SizeMQ.width! * .28,
      animation: true,
      lineWidth: large ? 28 : 14,
      percent: .4,
      center: _centerContent(percent: "40%", formatedVerse: "Psalm 119:1"),
      progressColor: MLColors.purple,
      footer: SizedBox(
        width: large ? SizeMQ.width! * .5 : SizeMQ.width! * .3,
        child: ElevatedButton(
          child: const Text("Continue"),
          onPressed: () => print("nothing here yet"),
          style: TextButton.styleFrom(
            backgroundColor: MLColors.secondary,
          ),
        ),
      ),
    );
  }
}
