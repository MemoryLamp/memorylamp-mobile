import 'package:memory_lamp/models/image_label_pair.dart';

class NotificationCard extends ImageLabelPair {
  int count;

  NotificationCard({
    required this.count,
    required name,
    required image,
  }) : super(name: name, image: image);
}
