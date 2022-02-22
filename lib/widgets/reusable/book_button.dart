import 'package:flutter/material.dart';

import '../../helpers/size_mq.dart';
import '../../models/icon_label_pair.dart';
import '../../theming/ml_defaults.dart';
import '../compound_widgets/labeled_icon.dart';

class BookButton extends StatelessWidget {
  final IconLabelPair book;
  const BookButton(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: MLDefaults.rounded,
      ),
      width: SizeMQ.height! * .1,
      height: SizeMQ.height! * .1,
      child: TextButton(
        onPressed: () => print("nothing here yet"),
        child: LabeledIcon(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          icon: Expanded(child: Icon(book.icon)),
          label: Expanded(
            child: Text(
              book.name,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
