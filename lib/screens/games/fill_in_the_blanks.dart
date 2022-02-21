import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/verse.dart';
import 'package:memory_lamp/theming/defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_text_button.dart';
import 'package:memory_lamp/widgets/compound_widgets/memorize_scaffold.dart';
import 'package:memory_lamp/widgets/ml_container.dart';

class FillInTheBlanksScreen extends StatelessWidget {
  static const String routeName = "/fillInTheBlanks";

  final Verse _verse;

  const FillInTheBlanksScreen(this._verse, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MemorizeScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            _verse.book,
            style: MLFont.memorizeHeader,
          ),
          Text(_verse.verse),
          MLTextButton(
            width: SizeMQ.width! * .7,
            backgroundColor: MLColors.secondary,
            child: const Text("Next"),
          ),
          MLContainer(
            backgroundColor: MLColors.primary,
            padding: const EdgeInsets.all(1),
            borderRadius: MLDefaults.rounded,
            child: ClipRRect(
              borderRadius: MLDefaults.rounded,
              child: const LinearProgressIndicator(
                backgroundColor: Colors.white,
                valueColor: AlwaysStoppedAnimation<Color>(
                  MLColors.primary,
                ),
                value: .20,
                minHeight: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
