import 'package:memory_lamp/models/verse.dart';

import 'image_label_pair.dart';

class Emotion extends ImageLabelPair {
  Verse highlightVerse;
  List<Verse> verses;

  Emotion({
    required this.verses,
    required this.highlightVerse,
    required name,
    required image,
  }) : super(name: name, image: image);
}
