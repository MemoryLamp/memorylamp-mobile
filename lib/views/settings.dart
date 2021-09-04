import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/theming/defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/ml_container.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: MLContainer(
          borderRadius: MLDefaults.rounded,
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(16),
          hasShadow: true,
          backgroundColor: Colors.white,
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

  MLText _banner() {
    return MLText(
      "Verses Notification",
      style: MLFont.bannerText01,
    );
  }

  Padding _toggleButtons() {
    MLText _text(String text) {
      return MLText(
        text,
        fontWeight: MLFont.semiBold,
        fontSize: MLFont.medium,
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
          isSelected: [
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
