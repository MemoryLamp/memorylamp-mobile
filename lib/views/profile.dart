import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
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
            _header(),
            MLText("Profile"),
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
}
