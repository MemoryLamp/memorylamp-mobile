import 'icon_label_pair.dart';

class NavItem extends IconLabelPair {
  String routeName;
  NavItem({required this.routeName, required name, icon, image, param})
      : super(name: name, icon: icon, image: image);
}
