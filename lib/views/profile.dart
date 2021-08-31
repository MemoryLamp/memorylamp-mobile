import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_text_button.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/ml_container.dart';
import 'package:memory_lamp/widgets/ml_text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            _header(),
            _statsContainer(),
          ],
        ),
      ),
    );
  }

  MLContainer _header() {
    return MLContainer(
      padding: const EdgeInsets.all(20.0),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(28),
        bottomRight: Radius.circular(28),
      ),
      backgroundColor: MLColors.primary,
      child: Center(
        child: LabeledIcon(
          spaceBetween: 24,
          icon: Image.asset(AssetManager.icon("pfp.png")),
          label: SizedBox(
            width: SizeMQ.width! * .4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MLText(
                  "Hannah",
                  fontColor: Colors.white,
                  fontWeight: MLFont.bold,
                  fontSize: MLFont.extraLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MLText(
                      "Streak : 1",
                      fontColor: Colors.white,
                      fontSize: MLFont.mediumSmall,
                      fontWeight: MLFont.semiBold,
                    ),
                    MLText(
                      "Week: 0",
                      fontColor: Colors.white,
                      fontSize: MLFont.mediumSmall,
                      fontWeight: MLFont.semiBold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _statsContainer() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          _indicator(large: true),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
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
          MLText(
            percent,
            fontSize: large ? MLFont.medium * 2 : MLFont.medium,
            fontWeight: MLFont.bold,
          ),
          MLText(
            formatedVerse,
            fontSize: MLFont.small,
            fontWeight: MLFont.bold,
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
      footer: MLTextButton(
        width: large ? SizeMQ.width! * .5 : SizeMQ.width! * .3,
        backgroundColor: MLColors.secondary,
        child: MLText("Continue"),
        onPressed: () => print("nothing here yet"),
      ),
    );
  }
}
