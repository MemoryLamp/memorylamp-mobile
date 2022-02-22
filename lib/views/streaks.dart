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
          children: const [
            UserStats(),
            _StatsContainer(),
          ],
        ),
      ),
    );
  }
}

class _StatsContainer extends StatelessWidget {
  const _StatsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const _Indicator(isLarge: true),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: .9,
            children: List.generate(5, (_) => const _Indicator()),
          ),
        ],
      ),
    );
  }
}

class _Indicator extends StatelessWidget {
  final bool isLarge;
  const _Indicator({this.isLarge = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: isLarge ? SizeMQ.width! * .55 : SizeMQ.width! * .28,
      animation: true,
      lineWidth: isLarge ? 28 : 14,
      percent: .4,
      center: _CenterContent(
        percent: "40%",
        formatedVerse: "Psalm 119:1",
        isLarge: isLarge,
      ),
      progressColor: MLColors.purple,
      footer: SizedBox(
        width: isLarge ? SizeMQ.width! * .5 : SizeMQ.width! * .3,
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

class _CenterContent extends StatelessWidget {
  final String percent;
  final String formatedVerse;
  final bool isLarge;

  const _CenterContent({
    required this.percent,
    required this.formatedVerse,
    this.isLarge = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          percent,
          style: TextStyle(
            fontSize: isLarge ? MLFont.medium * 2 : MLFont.medium,
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
}
