import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/notification_card.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/ml_container.dart';
import 'package:memory_lamp/widgets/ml_text.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double spacing = 24;

    List<NotificationCard> _cards = [
      NotificationCard(
        count: 5,
        name: "Pending Verses",
        image: Image.asset(AssetManager.icon("book.png")),
      ),
      NotificationCard(
        count: 2,
        name: "Weekly Streak",
        image: Image.asset(AssetManager.icon("streak.png")),
      ),
      NotificationCard(
        count: 2,
        name: "Badges",
        image: Image.asset(AssetManager.icon("badges.png")),
      ),
    ];

    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Wrap(
              runSpacing: spacing,
              spacing: spacing,
              alignment: WrapAlignment.center,
              children: List.generate(
                  _cards.length, (index) => _notificationCard(_cards[index])),
            ),
          ),
        ),
      ),
    );
  }

  Badge _notificationCard(NotificationCard _data) {
    final dimension = SizeMQ.width! * .35;
    final double border = 16;

    return Badge(
      animationType: BadgeAnimationType.scale,
      animationDuration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.all(12),
      showBadge: _data.count > 0,
      badgeContent: MLText("${_data.count}", fontColor: Colors.white),
      child: MLContainer(
        width: dimension,
        height: dimension,
        hasShadow: true,
        backgroundColor: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(border)),
        child: LabeledIcon(
          direction: Axis.vertical,
          icon: Expanded(child: _data.image!),
          label: MLContainer(
            padding: const EdgeInsets.all(12),
            backgroundColor: MLColors.primaryAccent,
            width: double.infinity,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(border),
              bottomRight: Radius.circular(border),
            ),
            child: MLText(
              _data.name,
              textAlign: TextAlign.center,
              fontSize: MLFont.medium,
              fontColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
