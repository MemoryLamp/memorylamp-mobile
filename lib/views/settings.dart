import 'package:flutter/material.dart';
import 'package:memory_lamp/theming/defaults.dart';
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
              MLText(
                "Verses Notification",
                style: MLFont.bannerText01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
