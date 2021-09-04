import 'icon_label_pair.dart';

class NotificationCard extends IconLabelPair {
  int count;

  NotificationCard({required this.count, required name, icon, image})
      : super(name: name, icon: icon, image: image);
}
