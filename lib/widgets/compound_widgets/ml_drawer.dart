import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:memory_lamp/models/enums/views.dart';
import 'package:memory_lamp/models/nav_item.dart';
import 'package:memory_lamp/providers/notification_provider.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/widgets/buttons/ml_text_button.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
import 'package:memory_lamp/widgets/compound_widgets/user_stats.dart';
import 'package:memory_lamp/widgets/ml_container.dart';
import 'package:memory_lamp/widgets/ml_text.dart';
import 'package:provider/provider.dart';

class MLDrawer extends StatelessWidget {
  const MLDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ColoredBox(
        color: MLColors.primary,
        child: Consumer<ViewProvider>(
          builder: (BuildContext context, viewProvider, Widget? child) {
            return ListView(
              children: [
                _navHeader(),
                _navItems(viewProvider, context),
              ],
            );
          },
        ),
      ),
    );
  }

  UserStats _navHeader() {
    return UserStats(inDrawer: true);
  }

  MLContainer _navItems(ViewProvider viewProvider, BuildContext context) {
    List<NavItem> _drawerItems = [
      NavItem(icon: Icons.home, name: "Home", view: Views.home),
      NavItem(icon: Icons.person, name: "Profile", view: Views.profile),
      NavItem(icon: Icons.book_sharp, name: "Browse Books", view: Views.books),
      NavItem(
        icon: Icons.notifications,
        name: "Notification",
        view: Views.notification,
      ),
      NavItem(icon: Icons.settings, name: "Settings", view: Views.settings),
      NavItem(icon: Icons.logout, name: "Logout", view: Views.logout),
    ];

    return MLContainer(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: List.generate(
          _drawerItems.length,
          (index) {
            bool isActive =
                _drawerItems[index].view == viewProvider.selectedView;
            return MLTextButton(
              borderRadius: BorderRadius.circular(28),
              backgroundColor: isActive ? Colors.white : Colors.transparent,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(8.0),
              child: LabeledIcon(
                icon: Consumer<NotificationProvider>(
                  builder: (
                    BuildContext context,
                    notificationProvider,
                    Widget? child,
                  ) {
                    Icon _icon = Icon(
                      _drawerItems[index].icon,
                      color: isActive ? MLColors.primary : Colors.white,
                    );
                    if (_drawerItems[index].view == Views.notification) {
                      return Badge(
                        showBadge: !notificationProvider.noNotifications,
                        badgeColor: MLColors.secondary,
                        position: BadgePosition.topEnd(top: -1, end: -1),
                        child: _icon,
                      );
                    }
                    return _icon;
                  },
                ),
                label: MLText(
                  _drawerItems[index].name,
                  fontColor: isActive ? MLColors.primary : Colors.white,
                ),
              ),
              onPressed: () {
                viewProvider.changeView(_drawerItems[index].view);
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
    );
  }
}
