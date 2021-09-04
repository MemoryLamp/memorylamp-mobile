import 'package:flutter/material.dart';
import 'package:memory_lamp/helpers/asset_manager.dart';
import 'package:memory_lamp/models/enums/views.dart';
import 'package:memory_lamp/models/nav_item.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/theming/ml_colors.dart';
import 'package:memory_lamp/theming/ml_font.dart';
import 'package:memory_lamp/widgets/buttons/ml_text_button.dart';
import 'package:memory_lamp/widgets/compound_widgets/labeled_icon.dart';
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

  MLContainer _navHeader() {
    return MLContainer(
      backgroundColor: MLColors.primaryLight,
      padding: EdgeInsets.all(8),
      child: LabeledIcon(
        icon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(AssetManager.icon("pfp.png")),
        ),
        label: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MLText("Hannah", style: MLFont.extraLargeBold),
            MLText("Streak : 1"),
            MLText("Week: 0"),
          ],
        ),
      ),
    );
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
                icon: Icon(
                  _drawerItems[index].icon,
                  color: isActive ? MLColors.primary : Colors.white,
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
