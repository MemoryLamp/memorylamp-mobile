import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/size_mq.dart';
import 'package:memory_lamp/models/notification_card.dart';
import 'package:memory_lamp/providers/notification_provider.dart';
import 'package:memory_lamp/theming/ml_defaults.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:provider/provider.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double spacing = 24;

    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: MLDefaults.screenPadding,
          child: Center(
            child: Consumer<NotificationProvider>(
              builder:
                  (BuildContext context, notificationProvider, Widget? child) {
                return Wrap(
                  runSpacing: spacing,
                  spacing: spacing,
                  alignment: WrapAlignment.center,
                  children: List.generate(
                    notificationProvider.cards.length,
                    (index) => _notificationCard(
                      notificationProvider.cards[index],
                      notificationProvider,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Badge _notificationCard(
    NotificationCard _data,
    NotificationProvider _provider,
  ) {
    final dimension = SizeMQ.width! * .35;

    return Badge(
      animationType: BadgeAnimationType.scale,
      animationDuration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.all(12),
      showBadge: _data.count > 0,
      badgeContent: Text("${_data.count}", style: MLFont.mediumWhite),
      child: GestureDetector(
        onTap: () => _provider.updateNotification(
          name: _data.name,
          action: NotifAction.decrement,
        ),
        child: Container(
          width: dimension,
          height: dimension,
          decoration: BoxDecoration(
            boxShadow: MLDefaults.boxShadow,
            color: Colors.white,
            borderRadius: MLDefaults.rounded,
          ),
          child: LabeledIcon(
            direction: Axis.vertical,
            icon: Expanded(child: _data.image),
            label: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: MLColors.primaryAccent,
                borderRadius: MLDefaults.roundedBottom,
              ),
              width: double.infinity,
              child: Text(
                _data.name,
                textAlign: TextAlign.center,
                style: MLFont.mediumWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
