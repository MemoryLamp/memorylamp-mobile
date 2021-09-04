import 'enums/views.dart';
import 'icon_label_pair.dart';

class NavItem extends IconLabelPair {
  Views view;
  NavItem({required this.view, required name, icon, image})
      : super(name: name, icon: icon, image: image);
}
