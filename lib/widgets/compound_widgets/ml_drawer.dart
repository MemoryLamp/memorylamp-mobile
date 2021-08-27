import 'package:flutter/material.dart';
import 'package:memory_lamp/models/enums/views.dart';
import 'package:memory_lamp/models/nav_item.dart';
import 'package:memory_lamp/providers/view_provider.dart';
import 'package:memory_lamp/widgets/ml_text.dart';
import 'package:provider/provider.dart';

class MLDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      NavItem(icon: Icons.logout, name: "Logout", view: Views.home),
    ];

    return Drawer(
      child: Consumer<ViewProvider>(
        builder: (BuildContext context, viewProvider, Widget? child) {
          return ListView(
            children: List.generate(
              _drawerItems.length,
              (index) => ListTile(
                leading: Icon(_drawerItems[index].icon),
                title: MLText(_drawerItems[index].name),
                onTap: () {
                  viewProvider.changeView(_drawerItems[index].view);
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
