import 'package:memory_lamp/models/icon_label_pair.dart';
import 'package:memory_lamp/models/verse.dart';

class Emotion extends IconLabelPair {
  // hardcoded temporarily
  List<Verse> verses = [
    Verse(
      book: "Genesis",
      chapter: 1,
      number: 1,
      verse:
          "Et consectetur ea et ut Lorem veniam culpa velit ea cillum Lorem esse ad nulla.",
    ),
    Verse(
      book: "Psalm",
      chapter: 19,
      number: 1,
      verse:
          "Nostrud veniam ea mollit aliqua dolore tempor in exercitation nulla ea.",
    )
  ];

  Emotion({required this.verses, required name, icon, image})
      : super(name: name, icon: icon, image: image);
}
