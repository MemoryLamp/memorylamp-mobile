import 'icon_label_pair.dart';

class Game extends IconLabelPair {
  final String routeName;

  Game({
    required this.routeName,
    required name,
    required icon,
  }) : super(name: name, icon: icon);
}
