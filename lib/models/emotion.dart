import 'package:memory_lamp/models/icon_label_pair.dart';
import 'package:memory_lamp/models/verse.dart';

class Emotion extends IconLabelPair {
  Verse highlightVerse;
  List<Verse> verses;

  Emotion({
    required this.verses,
    required this.highlightVerse,
    required name,
    icon,
    image,
  }) : super(name: name, icon: icon, image: image);
}
