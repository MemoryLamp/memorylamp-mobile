import 'enums/views.dart';
import 'icon_label_pair.dart';

class NavItem extends IconLabelPair {
  final Views view;

  NavItem({
    required this.view,
    required name,
    icon,
    image,
  }) : super(name: name, icon: icon);
}
