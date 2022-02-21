import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          margin: MLDefaults.screenPadding,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: MLDefaults.rounded,
            boxShadow: MLDefaults.boxShadow,
            color: Colors.white,
          ),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _banner(),
              _toggleButtons(),
            ],
          ),
        ),
      ),
    );
  }

  Text _banner() {
    return const Text(
      "Verses Notification",
      style: MLFont.bannerText01,
    );
  }

  Padding _toggleButtons() {
    Text _text(String text) {
      return Text(
        text,
        style: MLFont.mediumSemiBold,
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: ToggleButtons(
          borderRadius: BorderRadius.circular(24),
          fillColor: MLColors.primary,
          selectedColor: Colors.white,
          selectedBorderColor: MLColors.primary,
          borderColor: MLColors.primary,
          constraints: BoxConstraints.expand(
            width: SizeMQ.width! * .25,
            height: MLFont.extraLarge,
          ),
          children: [
            _text("Daily"),
            _text("Weekly"),
            _text("Monthly"),
          ],
          isSelected: const [
            false,
            true,
            false,
          ],
          onPressed: (index) {
            print(index);
          },
        ),
      ),
    );
  }
}
